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


define i32 @program (i32 %argc265, { i32, [ 0 x i8* ] }* %argv263){
__fresh68:
  %argc_slot266 = alloca i32
  store i32 %argc265, i32* %argc_slot266
  %argv_slot264 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv263, { i32, [ 0 x i8* ] }** %argv_slot264
  %mem_ptr267 = call i32* @oat_malloc ( i32 12 )
  %obj268 = bitcast i32* %mem_ptr267 to %A* 
  %new_obj269 = call %A* @_A_ctor ( %A* %obj268 )
  %vdecl_slot270 = alloca %A*
  store %A* %new_obj269, %A** %vdecl_slot270
  %lhs_or_call271 = load %A** %vdecl_slot270
  %arr272 = getelementptr %A* %lhs_or_call271, i32 0, i32 2
  %lhs_or_call273 = load { i32, [ 0 x i32 ] }** %arr272
  %ret274 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %lhs_or_call273 )
  call void @print_string( i8* %ret274 )
  ret i32 0
}


define %A* @_A_ctor (%A* %_this1){
__fresh65:
  %mem_ptr242 = call i32* @oat_malloc ( i32 8 )
  %obj243 = bitcast i32* %mem_ptr242 to %Object* 
  %new_obj244 = call %Object* @_Object_ctor ( %Object* %obj243 )
  %_this1 = bitcast %Object* %new_obj244 to %A 
  %_name245 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str44, i8** %_name245
  %arr246 = getelementptr %A* %_this1, i32 0, i32 2
  %array_ptr247 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array248 = bitcast { i32, [ 0 x i32 ] }* %array_ptr247 to { i32, [ 0 x i32 ] }* 
  %_tmp41249 = alloca i32
  store i32 10, i32* %_tmp41249
  %_tmp42250 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array248, { i32, [ 0 x i32 ] }** %_tmp42250
  %vdecl_slot251 = alloca i32
  store i32 0, i32* %vdecl_slot251
  br label %__cond64

__cond64:
  %lhs_or_call252 = load i32* %vdecl_slot251
  %lhs_or_call253 = load i32* %_tmp41249
  %bop254 = icmp slt i32 %lhs_or_call252, %lhs_or_call253
  br i1 %bop254, label %__body63, label %__post62

__fresh66:
  br label %__body63

__body63:
  %lhs_or_call255 = load { i32, [ 0 x i32 ] }** %_tmp42250
  %lhs_or_call256 = load i32* %vdecl_slot251
  %bound_ptr258 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call255, i32 0, i32 0
  %bound259 = load i32* %bound_ptr258
  call void @oat_array_bounds_check( i32 %bound259, i32 %lhs_or_call256 )
  %elt257 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call255, i32 0, i32 1, i32 %lhs_or_call256
  store i32 110, i32* %elt257
  %lhs_or_call260 = load i32* %vdecl_slot251
  %bop261 = add i32 %lhs_or_call260, 1
  store i32 %bop261, i32* %vdecl_slot251
  br label %__cond64

__fresh67:
  br label %__post62

__post62:
  store { i32, [ 0 x i32 ] }* %array248, { i32, [ 0 x i32 ] }** %arr246
  %this_vtable262 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable42, %_A_vtable** %this_vtable262
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh61:
  %_name240 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call241 = load i8** %_name240
  ret i8* %lhs_or_call241
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh60:
  %_name238 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str43, i8** %_name238
  %this_vtable239 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable41, %_Object_vtable** %this_vtable239
  ret %Object* %_this1
}


