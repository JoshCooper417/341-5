%C2 = type { %_C2_vtable*, i8* }
%_C2_vtable = type { %_B_vtable*, i8* (%Object*)* }
%C1 = type { %_C1_vtable*, i8* }
%_C1_vtable = type { %_B_vtable*, i8* (%Object*)* }
%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)* }
%A = type { %_A_vtable*, i8* }
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
@_C2_vtable300 = private constant %_C2_vtable {%_B_vtable* @_B_vtable298, i8* (%Object*)* @_Object_get_name}, align 4
@_C1_vtable299 = private constant %_C1_vtable {%_B_vtable* @_B_vtable298, i8* (%Object*)* @_Object_get_name}, align 4
@_B_vtable298 = private constant %_B_vtable {%_A_vtable* @_A_vtable297, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable297 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable296, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable296 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh435:
  ret void
}


define i32 @program (i32 %argc1948, { i32, [ 0 x i8* ] }* %argv1946){
__fresh434:
  %argc_slot1949 = alloca i32
  store i32 %argc1948, i32* %argc_slot1949
  %argv_slot1947 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1946, { i32, [ 0 x i8* ] }** %argv_slot1947
  %mem_ptr1950 = call i32* @oat_malloc ( i32 8 )
  %obj1951 = bitcast i32* %mem_ptr1950 to %A* 
  %new_obj1952 = call %A* @_A_ctor ( %A* %obj1951 )
  %vdecl_slot1953 = alloca %A*
  store %A* %new_obj1952, %A** %vdecl_slot1953
  %mem_ptr1954 = call i32* @oat_malloc ( i32 8 )
  %obj1955 = bitcast i32* %mem_ptr1954 to %B* 
  %new_obj1956 = call %B* @_B_ctor ( %B* %obj1955 )
  %vdecl_slot1957 = alloca %B*
  store %B* %new_obj1956, %B** %vdecl_slot1957
  %mem_ptr1958 = call i32* @oat_malloc ( i32 8 )
  %obj1959 = bitcast i32* %mem_ptr1958 to %C1* 
  %new_obj1960 = call %C1* @_C1_ctor ( %C1* %obj1959 )
  %vdecl_slot1961 = alloca %C1*
  store %C1* %new_obj1960, %C1** %vdecl_slot1961
  %mem_ptr1962 = call i32* @oat_malloc ( i32 8 )
  %obj1963 = bitcast i32* %mem_ptr1962 to %C2* 
  %new_obj1964 = call %C2* @_C2_ctor ( %C2* %obj1963 )
  %vdecl_slot1965 = alloca %C2*
  store %C2* %new_obj1964, %C2** %vdecl_slot1965
  ret i32 0
}


define %C2* @_C2_ctor (%C2* %_this1){
__fresh433:
  ret %C2* %_this1
}


define %C1* @_C1_ctor (%C1* %_this1){
__fresh432:
  ret %C1* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh431:
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh430:
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh429:
  %_name1927 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1928 = load i8* %_name1927
  %cast_op1929 = bitcast i8 %lhs_or_call1928 to i8* 
  ret i8* %cast_op1929
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh428:
  ret %Object* %_this1
}


