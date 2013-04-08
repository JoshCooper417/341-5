%B = type { %_B_vtable*, i8*, i32 }
%_B_vtable = type { %_Object_vtable*, i8* (%Object*)* }
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
@_B_vtable2 = private constant %_B_vtable {%_Object_vtable* @_Object_vtable1, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable1 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh4:
  ret void
}


define i32 @program (i32 %argc16, { i32, [ 0 x i8* ] }* %argv14){
__fresh3:
  %argc_slot17 = alloca i32
  store i32 %argc16, i32* %argc_slot17
  %argv_slot15 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv14, { i32, [ 0 x i8* ] }** %argv_slot15
  %mem_ptr18 = call i32* @oat_malloc ( i32 12 )
  %obj19 = bitcast i32* %mem_ptr18 to %B* 
  %new_obj20 = call %B* @_B_ctor ( %B* %obj19 )
  %vdecl_slot21 = alloca %B*
  store %B* %new_obj20, %B** %vdecl_slot21
  ret i32 0
}


define %B* @_B_ctor (%B* %_this1){
__fresh2:
  %this_vtable13 = getelementptr %B* %_this1, i32 0, i32 0
