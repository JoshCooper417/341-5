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
@_const_str55.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str55 = alias bitcast([ 2 x i8 ]* @_const_str55.str. to i8*)@_const_str54.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str54 = alias bitcast([ 7 x i8 ]* @_const_str54.str. to i8*)@_A_vtable53 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable52, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable52 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh69:
  ret void
}


define i32 @program (i32 %argc275, { i32, [ 0 x i8* ] }* %argv273){
__fresh68:
  %argc_slot276 = alloca i32
  store i32 %argc275, i32* %argc_slot276
  %argv_slot274 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv273, { i32, [ 0 x i8* ] }** %argv_slot274
  %mem_ptr277 = call i32* @oat_malloc ( i32 12 )
  %obj278 = bitcast i32* %mem_ptr277 to %A* 
  %new_obj279 = call %A* @_A_ctor ( %A* %obj278 )
  %vdecl_slot280 = alloca %A*
  store %A* %new_obj279, %A** %vdecl_slot280
  %lhs_or_call281 = load %A** %vdecl_slot280
  %arr282 = getelementptr %A* %lhs_or_call281, i32 0, i32 2
  %lhs_or_call283 = load { i32, [ 0 x i32 ] }** %arr282
  %ret284 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %lhs_or_call283 )
  call void @print_string( i8* %ret284 )
  ret i32 0
}


define %A* @_A_ctor (%A* %_this1){
__fresh65:
  %mem_ptr252 = call i32* @oat_malloc ( i32 8 )
  %obj253 = bitcast i32* %mem_ptr252 to %Object* 
  %new_obj254 = call %Object* @_Object_ctor ( %Object* %obj253 )
  %_this1 = bitcast %Object* %new_obj254 to %A 
  %_name255 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str55, i8** %_name255
  %arr256 = getelementptr %A* %_this1, i32 0, i32 2
  %array_ptr257 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array258 = bitcast { i32, [ 0 x i32 ] }* %array_ptr257 to { i32, [ 0 x i32 ] }* 
  %_tmp52259 = alloca i32
  store i32 10, i32* %_tmp52259
  %_tmp53260 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array258, { i32, [ 0 x i32 ] }** %_tmp53260
  %vdecl_slot261 = alloca i32
  store i32 0, i32* %vdecl_slot261
  br label %__cond64

__cond64:
  %lhs_or_call262 = load i32* %vdecl_slot261
  %lhs_or_call263 = load i32* %_tmp52259
  %bop264 = icmp slt i32 %lhs_or_call262, %lhs_or_call263
  br i1 %bop264, label %__body63, label %__post62

__fresh66:
  br label %__body63

__body63:
  %lhs_or_call265 = load { i32, [ 0 x i32 ] }** %_tmp53260
  %lhs_or_call266 = load i32* %vdecl_slot261
  %bound_ptr268 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call265, i32 0, i32 0
  %bound269 = load i32* %bound_ptr268
  call void @oat_array_bounds_check( i32 %bound269, i32 %lhs_or_call266 )
  %elt267 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call265, i32 0, i32 1, i32 %lhs_or_call266
  store i32 110, i32* %elt267
  %lhs_or_call270 = load i32* %vdecl_slot261
  %bop271 = add i32 %lhs_or_call270, 1
  store i32 %bop271, i32* %vdecl_slot261
  br label %__cond64

__fresh67:
  br label %__post62

__post62:
  store { i32, [ 0 x i32 ] }* %array258, { i32, [ 0 x i32 ] }** %arr256
  %this_vtable272 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable53, %_A_vtable** %this_vtable272
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh61:
  %_name250 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call251 = load i8** %_name250
  ret i8* %lhs_or_call251
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh60:
  %_name248 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str54, i8** %_name248
  %this_vtable249 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable52, %_Object_vtable** %this_vtable249
  ret %Object* %_this1
}


