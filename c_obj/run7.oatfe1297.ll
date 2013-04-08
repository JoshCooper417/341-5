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
__fresh87:
  ret void
}


define i32 @program (i32 %argc284, { i32, [ 0 x i8* ] }* %argv282){
__fresh86:
  %argc_slot285 = alloca i32
  store i32 %argc284, i32* %argc_slot285
  %argv_slot283 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv282, { i32, [ 0 x i8* ] }** %argv_slot283
  %mem_ptr286 = call i32* @oat_malloc ( i32 12 )
  %obj287 = bitcast i32* %mem_ptr286 to %A* 
  %new_obj288 = call %A* @_A_ctor ( %A* %obj287 )
  %vdecl_slot289 = alloca %A*
  store %A* %new_obj288, %A** %vdecl_slot289
  %lhs_or_call290 = load %A** %vdecl_slot289
  %arr291 = getelementptr %A* %lhs_or_call290, i32 0, i32 2
  %lhs_or_call292 = load { i32, [ 0 x i32 ] }** %arr291
  %ret293 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %lhs_or_call292 )
  call void @print_string( i8* %ret293 )
  ret i32 0
}


define %A* @_A_ctor (%A* %_this1){
__fresh83:
  %mem_ptr261 = call i32* @oat_malloc ( i32 8 )
  %obj262 = bitcast i32* %mem_ptr261 to %Object* 
  %new_obj263 = call %Object* @_Object_ctor ( %Object* %obj262 )
  %_this1 = bitcast %Object* %new_obj263 to %A 
  %_name264 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str44, i8** %_name264
  %arr265 = getelementptr %A* %_this1, i32 0, i32 2
  %array_ptr266 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array267 = bitcast { i32, [ 0 x i32 ] }* %array_ptr266 to { i32, [ 0 x i32 ] }* 
  %_tmp41268 = alloca i32
  store i32 10, i32* %_tmp41268
  %_tmp42269 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array267, { i32, [ 0 x i32 ] }** %_tmp42269
  %vdecl_slot270 = alloca i32
  store i32 0, i32* %vdecl_slot270
  br label %__cond82

__cond82:
  %lhs_or_call271 = load i32* %vdecl_slot270
  %lhs_or_call272 = load i32* %_tmp41268
  %bop273 = icmp slt i32 %lhs_or_call271, %lhs_or_call272
  br i1 %bop273, label %__body81, label %__post80

__fresh84:
  br label %__body81

__body81:
  %lhs_or_call274 = load { i32, [ 0 x i32 ] }** %_tmp42269
  %lhs_or_call275 = load i32* %vdecl_slot270
  %bound_ptr277 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call274, i32 0, i32 0
  %bound278 = load i32* %bound_ptr277
  call void @oat_array_bounds_check( i32 %bound278, i32 %lhs_or_call275 )
  %elt276 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call274, i32 0, i32 1, i32 %lhs_or_call275
  store i32 110, i32* %elt276
  %lhs_or_call279 = load i32* %vdecl_slot270
  %bop280 = add i32 %lhs_or_call279, 1
  store i32 %bop280, i32* %vdecl_slot270
  br label %__cond82

__fresh85:
  br label %__post80

__post80:
  store { i32, [ 0 x i32 ] }* %array267, { i32, [ 0 x i32 ] }** %arr265
  %this_vtable281 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable42, %_A_vtable** %this_vtable281
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh79:
  %_name259 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call260 = load i8** %_name259
  ret i8* %lhs_or_call260
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh78:
  %_name257 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str43, i8** %_name257
  %this_vtable258 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable41, %_Object_vtable** %this_vtable258
  ret %Object* %_this1
}


