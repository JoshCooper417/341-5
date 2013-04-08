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
@_const_str414.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str414 = alias bitcast([ 2 x i8 ]* @_const_str414.str. to i8*)@_const_str413.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str413 = alias bitcast([ 7 x i8 ]* @_const_str413.str. to i8*)@_A_vtable412 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable411, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable411 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh445:
  ret void
}


define i32 @program (i32 %argc2110, { i32, [ 0 x i8* ] }* %argv2108){
__fresh444:
  %argc_slot2111 = alloca i32
  store i32 %argc2110, i32* %argc_slot2111
  %argv_slot2109 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2108, { i32, [ 0 x i8* ] }** %argv_slot2109
  %cast_op2112 = bitcast i8* null to %A* 
  %ret2113 = call i32 @try_ifnull ( %A* %cast_op2112 )
  ret i32 %ret2113
}


define i32 @try_ifnull (%A* %a2098){
__fresh441:
  %a_slot2099 = alloca %A*
  store %A* %a2098, %A** %a_slot2099
  %vdecl_slot2100 = alloca i32
  store i32 0, i32* %vdecl_slot2100
  %lhs_or_call2101 = load %A** %a_slot2099
  %ifnull_slot2102 = alloca %A*
  store %A* %lhs_or_call2101, %A** %ifnull_slot2102
  %ifnull_guard2103 = icmp ne %A* %lhs_or_call2101, null
  br i1 %ifnull_guard2103, label %__then440, label %__else439

__fresh442:
  br label %__then440

__then440:
  %lhs_or_call2104 = load %A** %ifnull_slot2102
  %x2105 = getelementptr %A* %lhs_or_call2104, i32 0, i32 2
  %lhs_or_call2106 = load i32* %x2105
  store i32 %lhs_or_call2106, i32* %vdecl_slot2100
  br label %__merge438

__fresh443:
  br label %__else439

__else439:
  store i32 12, i32* %vdecl_slot2100
  br label %__merge438

__merge438:
  %lhs_or_call2107 = load i32* %vdecl_slot2100
  ret i32 %lhs_or_call2107
}


define %A* @_A_ctor (%A* %_this1, i32 %x2088){
__fresh437:
  %x_slot2089 = alloca i32
  store i32 %x2088, i32* %x_slot2089
  %cast_op2092 = bitcast %A* %_this1 to %Object* 
  %mem_ptr2093 = call i32* @oat_malloc ( i32 12 )
  %obj2094 = bitcast i32* %mem_ptr2093 to %A* 
  %new_obj2095 = call %Object* @_Object_ctor ( %A* %obj2094, %Object* %cast_op2092 )
  %_this1 = bitcast %Object* %new_obj2095 to %A 
  %_name2096 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str414, i8** %_name2096
  %this_vtable2097 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable412, %_A_vtable** %this_vtable2097
  %x2090 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call2091 = load i32* %x_slot2089
  store i32 %lhs_or_call2091, i32* %x2090
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh436:
  %_name2086 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2087 = load i8** %_name2086
  ret i8* %lhs_or_call2087
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh435:
  %_name2084 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str413, i8** %_name2084
  %this_vtable2085 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable411, %_Object_vtable** %this_vtable2085
  ret %Object* %_this1
}


