%A = type { %_A_vtable*, i8*, { i32, [ 0 x i32 ] }* }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)* }
%Object = type { %_Object_vtable*, i8* }
%_Object_vtable = type { {  }*, i8* (%Object*)* }
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
declare void @oat_abort(i32)
declare void @print_bool(i1)
declare void @print_int(i32)
declare void @print_string(i8*)
declare i32 @length_of_string(i8*)
declare i8* @string_cat(i8*, i8*)
declare i8* @string_of_int(i32)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
@_const_str44.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str44 = alias bitcast([ 2 x i8 ]* @_const_str44.str. to i8*)@_const_str43.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str43 = alias bitcast([ 7 x i8 ]* @_const_str43.str. to i8*)@_A_vtable42 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable41, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable41 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh69:
  ret void
}


define i32 @program (i32 %argc264, { i32, [ 0 x i8* ] }* %argv262){
__fresh68:
  %argc_slot265 = alloca i32
  store i32 %argc264, i32* %argc_slot265
  %argv_slot263 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv262, { i32, [ 0 x i8* ] }** %argv_slot263
  %mem_ptr266 = call i32* @oat_malloc ( i32 12 )
  %obj267 = bitcast i32* %mem_ptr266 to %A* 
  %new_obj268 = call %A* @_A_ctor ( %A* %obj267 )
  %vdecl_slot269 = alloca %A*
  store %A* %new_obj268, %A** %vdecl_slot269
  %lhs_or_call270 = load %A** %vdecl_slot269
  %arr271 = getelementptr %A* %lhs_or_call270, i32 0, i32 2
  %lhs_or_call272 = load { i32, [ 0 x i32 ] }** %arr271
  %ret273 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %lhs_or_call272 )
  call void @print_string( i8* %ret273 )
  ret i32 0
}


define %A* @_A_ctor (%A* %_this1){
__fresh65:
  %mem_ptr241 = call i32* @oat_malloc ( i32 8 )
  %obj242 = bitcast i32* %mem_ptr241 to %Object* 
  %new_obj243 = call %Object* @_Object_ctor ( %Object* %obj242 )
  %_this1 = bitcast %Object* %new_obj243 to %A 
  %_name244 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str44, i8** %_name244
  %arr245 = getelementptr %A* %_this1, i32 0, i32 2
  %array_ptr246 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array247 = bitcast { i32, [ 0 x i32 ] }* %array_ptr246 to { i32, [ 0 x i32 ] }* 
  %_tmp41248 = alloca i32
  store i32 10, i32* %_tmp41248
  %_tmp42249 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array247, { i32, [ 0 x i32 ] }** %_tmp42249
  %vdecl_slot250 = alloca i32
  store i32 0, i32* %vdecl_slot250
  br label %__cond64

__cond64:
  %lhs_or_call251 = load i32* %vdecl_slot250
  %lhs_or_call252 = load i32* %_tmp41248
  %bop253 = icmp slt i32 %lhs_or_call251, %lhs_or_call252
  br i1 %bop253, label %__body63, label %__post62

__fresh66:
  br label %__body63

__body63:
  %lhs_or_call254 = load { i32, [ 0 x i32 ] }** %_tmp42249
  %lhs_or_call255 = load i32* %vdecl_slot250
  %bound_ptr257 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call254, i32 0, i32 0
  %bound258 = load i32* %bound_ptr257
  call void @oat_array_bounds_check( i32 %bound258, i32 %lhs_or_call255 )
  %elt256 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call254, i32 0, i32 1, i32 %lhs_or_call255
  store i32 110, i32* %elt256
  %lhs_or_call259 = load i32* %vdecl_slot250
  %bop260 = add i32 %lhs_or_call259, 1
  store i32 %bop260, i32* %vdecl_slot250
  br label %__cond64

__fresh67:
  br label %__post62

__post62:
  store { i32, [ 0 x i32 ] }* %array247, { i32, [ 0 x i32 ] }** %arr245
  %this_vtable261 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable42, %_A_vtable** %this_vtable261
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh61:
  %_name239 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call240 = load i8** %_name239
  ret i8* %lhs_or_call240
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh60:
  %_name237 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str43, i8** %_name237
  %this_vtable238 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable41, %_Object_vtable** %this_vtable238
  ret %Object* %_this1
}


