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
@_A_vtable24 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable23, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable23 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh69:
  ret void
}


define i32 @program (i32 %argc309, { i32, [ 0 x i8* ] }* %argv307){
__fresh68:
  %argc_slot310 = alloca i32
  store i32 %argc309, i32* %argc_slot310
  %argv_slot308 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv307, { i32, [ 0 x i8* ] }** %argv_slot308
  %mem_ptr311 = call i32* @oat_malloc ( i32 12 )
  %obj312 = bitcast i32* %mem_ptr311 to %A* 
  %new_obj313 = call %A* @_A_ctor ( %A* %obj312 )
  %vdecl_slot314 = alloca %A*
  store %A* %new_obj313, %A** %vdecl_slot314
  %lhs_or_call315 = load %A** %vdecl_slot314
  %arr316 = getelementptr %A* %lhs_or_call315, i32 0, i32 2
  %lhs_or_call317 = load { i32, [ 0 x i32 ] }** %arr316
  %ret318 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %lhs_or_call317 )
  call void @print_string( i8* %ret318 )
  ret i32 0
}


define %A* @_A_ctor (%A* %_this1){
__fresh65:
  %lhs_or_call282 = load %A* %_this1
  %cast_op283 = bitcast %A %lhs_or_call282 to %Object* 
  %mem_ptr284 = call i32* @oat_malloc ( i32 8 )
  %obj285 = bitcast i32* %mem_ptr284 to %Object* 
  %new_obj286 = call %Object* @_Object_ctor ( %Object* %obj285, %Object* %cast_op283 )
  %_name287 = getelementptr %A* %_this1, i32 0, i32 1
  %lhs_or_call288 = load %A* %_this1
  %cast_op289 = bitcast %A %lhs_or_call288 to i8* 
  store i8* %cast_op289, i8** %_name287
  %arr290 = getelementptr %A* %_this1, i32 0, i32 2
  %array_ptr291 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array292 = bitcast { i32, [ 0 x i32 ] }* %array_ptr291 to { i32, [ 0 x i32 ] }* 
  %_tmp22293 = alloca i32
  store i32 10, i32* %_tmp22293
  %_tmp23294 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array292, { i32, [ 0 x i32 ] }** %_tmp23294
  %vdecl_slot295 = alloca i32
  store i32 0, i32* %vdecl_slot295
  br label %__cond64

__cond64:
  %lhs_or_call296 = load i32* %vdecl_slot295
  %lhs_or_call297 = load i32* %_tmp22293
  %bop298 = icmp slt i32 %lhs_or_call296, %lhs_or_call297
  br i1 %bop298, label %__body63, label %__post62

__fresh66:
  br label %__body63

__body63:
  %lhs_or_call299 = load { i32, [ 0 x i32 ] }** %_tmp23294
  %lhs_or_call300 = load i32* %vdecl_slot295
  %bound_ptr302 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call299, i32 0, i32 0
  %bound303 = load i32* %bound_ptr302
  call void @oat_array_bounds_check( i32 %bound303, i32 %lhs_or_call300 )
  %elt301 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call299, i32 0, i32 1, i32 %lhs_or_call300
  store i32 110, i32* %elt301
  %lhs_or_call304 = load i32* %vdecl_slot295
  %bop305 = add i32 %lhs_or_call304, 1
  store i32 %bop305, i32* %vdecl_slot295
  br label %__cond64

__fresh67:
  br label %__post62

__post62:
  store { i32, [ 0 x i32 ] }* %array292, { i32, [ 0 x i32 ] }** %arr290
  %this_vtable306 = getelementptr %A* %_this1, i32 0, i32 0
  store %A* %_this1, %_A_vtable* %this_vtable306
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh61:
  %_name280 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call281 = load i8** %_name280
  ret i8* %lhs_or_call281
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh60:
  %_name276 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call277 = load %Object* %_this1
  %cast_op278 = bitcast %Object %lhs_or_call277 to i8* 
  store i8* %cast_op278, i8** %_name276
  %this_vtable279 = getelementptr %Object* %_this1, i32 0, i32 0
  store %Object* %_this1, %_Object_vtable* %this_vtable279
  ret %Object* %_this1
}


