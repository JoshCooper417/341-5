%A = type { %_A_vtable*, i8*, i32 }
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
@_const_str405.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str405 = alias bitcast([ 2 x i8 ]* @_const_str405.str. to i8*)@_const_str404.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str404 = alias bitcast([ 7 x i8 ]* @_const_str404.str. to i8*)@_A_vtable403 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable402, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable402 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh425:
  ret void
}


define i32 @program (i32 %argc1954, { i32, [ 0 x i8* ] }* %argv1952){
__fresh424:
  %argc_slot1955 = alloca i32
  store i32 %argc1954, i32* %argc_slot1955
  %argv_slot1953 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1952, { i32, [ 0 x i8* ] }** %argv_slot1953
  %cast_op1956 = bitcast i8* null to %A* 
  %ret1957 = call i32 @try_ifnull ( %A* %cast_op1956 )
  ret i32 %ret1957
}


define i32 @try_ifnull (%A* %a1942){
__fresh421:
  %a_slot1943 = alloca %A*
  store %A* %a1942, %A** %a_slot1943
  %vdecl_slot1944 = alloca i32
  store i32 0, i32* %vdecl_slot1944
  %lhs_or_call1945 = load %A** %a_slot1943
  %ifnull_slot1946 = alloca %A*
  store %A* %lhs_or_call1945, %A** %ifnull_slot1946
  %ifnull_guard1947 = icmp ne %A* %lhs_or_call1945, null
  br i1 %ifnull_guard1947, label %__then420, label %__else419

__fresh422:
  br label %__then420

__then420:
  %lhs_or_call1948 = load %A** %ifnull_slot1946
  %x1949 = getelementptr %A* %lhs_or_call1948, i32 0, i32 2
  %lhs_or_call1950 = load i32* %x1949
  store i32 %lhs_or_call1950, i32* %vdecl_slot1944
  br label %__merge418

__fresh423:
  br label %__else419

__else419:
  store i32 12, i32* %vdecl_slot1944
  br label %__merge418

__merge418:
  %lhs_or_call1951 = load i32* %vdecl_slot1944
  ret i32 %lhs_or_call1951
}


define %A* @_A_ctor (%A* %_this1, i32 %x1933){
__fresh417:
  %x_slot1934 = alloca i32
  store i32 %x1933, i32* %x_slot1934
  %mem_ptr1937 = call i32* @oat_malloc ( i32 8 )
  %obj1938 = bitcast i32* %mem_ptr1937 to %Object* 
  %new_obj1939 = call %Object* @_Object_ctor ( %Object* %obj1938 )
  %_this1 = bitcast %Object* %new_obj1939 to %A 
  %_name1940 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str405, i8** %_name1940
  %this_vtable1941 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable403, %_A_vtable** %this_vtable1941
  %x1935 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call1936 = load i32* %x_slot1934
  store i32 %lhs_or_call1936, i32* %x1935
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh416:
  %_name1931 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1932 = load i8** %_name1931
  ret i8* %lhs_or_call1932
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh415:
  %_name1929 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str404, i8** %_name1929
  %this_vtable1930 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable402, %_Object_vtable** %this_vtable1930
  ret %Object* %_this1
}


