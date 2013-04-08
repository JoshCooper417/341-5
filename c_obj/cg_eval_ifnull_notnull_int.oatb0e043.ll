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
@_const_str401.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str401 = alias bitcast([ 2 x i8 ]* @_const_str401.str. to i8*)@_const_str400.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str400 = alias bitcast([ 7 x i8 ]* @_const_str400.str. to i8*)@_A_vtable399 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable398, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable398 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh414:
  ret void
}


define i32 @program (i32 %argc1923, { i32, [ 0 x i8* ] }* %argv1921){
__fresh413:
  %argc_slot1924 = alloca i32
  store i32 %argc1923, i32* %argc_slot1924
  %argv_slot1922 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1921, { i32, [ 0 x i8* ] }** %argv_slot1922
  %mem_ptr1925 = call i32* @oat_malloc ( i32 12 )
  %obj1926 = bitcast i32* %mem_ptr1925 to %A* 
  %new_obj1927 = call %A* @_A_ctor ( %A* %obj1926, i32 11 )
  %ret1928 = call i32 @try_ifnull ( %A* %new_obj1927 )
  ret i32 %ret1928
}


define i32 @try_ifnull (%A* %a1911){
__fresh410:
  %a_slot1912 = alloca %A*
  store %A* %a1911, %A** %a_slot1912
  %vdecl_slot1913 = alloca i32
  store i32 0, i32* %vdecl_slot1913
  %lhs_or_call1914 = load %A** %a_slot1912
  %ifnull_slot1915 = alloca %A*
  store %A* %lhs_or_call1914, %A** %ifnull_slot1915
  %ifnull_guard1916 = icmp ne %A* %lhs_or_call1914, null
  br i1 %ifnull_guard1916, label %__then409, label %__else408

__fresh411:
  br label %__then409

__then409:
  %lhs_or_call1917 = load %A** %ifnull_slot1915
  %x1918 = getelementptr %A* %lhs_or_call1917, i32 0, i32 2
  %lhs_or_call1919 = load i32* %x1918
  store i32 %lhs_or_call1919, i32* %vdecl_slot1913
  br label %__merge407

__fresh412:
  br label %__else408

__else408:
  store i32 12, i32* %vdecl_slot1913
  br label %__merge407

__merge407:
  %lhs_or_call1920 = load i32* %vdecl_slot1913
  ret i32 %lhs_or_call1920
}


define %A* @_A_ctor (%A* %_this1, i32 %x1902){
__fresh406:
  %x_slot1903 = alloca i32
  store i32 %x1902, i32* %x_slot1903
  %mem_ptr1906 = call i32* @oat_malloc ( i32 8 )
  %obj1907 = bitcast i32* %mem_ptr1906 to %Object* 
  %new_obj1908 = call %Object* @_Object_ctor ( %Object* %obj1907 )
  %_this1 = bitcast %Object* %new_obj1908 to %A 
  %_name1909 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str401, i8** %_name1909
  %this_vtable1910 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable399, %_A_vtable** %this_vtable1910
  %x1904 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call1905 = load i32* %x_slot1903
  store i32 %lhs_or_call1905, i32* %x1904
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh405:
  %_name1900 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1901 = load i8** %_name1900
  ret i8* %lhs_or_call1901
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh404:
  %_name1898 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str400, i8** %_name1898
  %this_vtable1899 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable398, %_Object_vtable** %this_vtable1899
  ret %Object* %_this1
}


