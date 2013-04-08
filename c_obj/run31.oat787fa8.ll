%C = type { %_C_vtable*, i8*, i32 }
%_C_vtable = type { %_B_vtable*, i8* (%Object*)* }
%B = type { %_B_vtable*, i8*, i32 }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)* }
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
@_const_str183.str. = private unnamed_addr constant [ 3 x i8 ] c "no\00", align 4
@_const_str183 = alias bitcast([ 3 x i8 ]* @_const_str183.str. to i8*)@_const_str182.str. = private unnamed_addr constant [ 4 x i8 ] c "yes\00", align 4
@_const_str182 = alias bitcast([ 4 x i8 ]* @_const_str182.str. to i8*)@_const_str181.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str181 = alias bitcast([ 2 x i8 ]* @_const_str181.str. to i8*)@_const_str180.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str180 = alias bitcast([ 2 x i8 ]* @_const_str180.str. to i8*)@_const_str179.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str179 = alias bitcast([ 2 x i8 ]* @_const_str179.str. to i8*)@_const_str178.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str178 = alias bitcast([ 7 x i8 ]* @_const_str178.str. to i8*)@_C_vtable177 = private constant %_C_vtable {%_B_vtable* @_B_vtable176, i8* (%Object*)* @_Object_get_name}, align 4
@_B_vtable176 = private constant %_B_vtable {%_A_vtable* @_A_vtable175, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable175 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable174, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable174 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh296:
  ret void
}


define i32 @program (i32 %argc987, { i32, [ 0 x i8* ] }* %argv985){
__fresh290:
  %argc_slot988 = alloca i32
  store i32 %argc987, i32* %argc_slot988
  %argv_slot986 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv985, { i32, [ 0 x i8* ] }** %argv_slot986
  %mem_ptr989 = call i32* @oat_malloc ( i32 12 )
  %obj990 = bitcast i32* %mem_ptr989 to %C* 
  %new_obj991 = call %C* @_C_ctor ( %C* %obj990 )
  %cast_op992 = bitcast %C* %new_obj991 to %A* 
  %vdecl_slot993 = alloca %A*
  store %A* %cast_op992, %A** %vdecl_slot993
  %unop994 = sub i32 0, 1
  %vdecl_slot995 = alloca i32
  store i32 %unop994, i32* %vdecl_slot995
  br label %__init284

__fresh291:
  br label %__init284

__init284:
  %lhs_or_call997 = load %A** %vdecl_slot993
  %rvtable1004 = getelementptr %A* %lhs_or_call997, i32 0
  br label %__bound_check285

__fresh292:
  br label %__bound_check285

__bound_check285:
  %cast_op1008 = bitcast %_C_vtable* @_C_vtable177 to i8** 
  %lvtable1005 = load i8** %cast_op1008
  %cast_vtable1009 = bitcast i8** %rvtable1004 to i8** 
  %rvtable1007 = load i8** %cast_vtable1009
  %compare1006 = icmp eq i8* %rvtable1007, null
  br i1 %compare1006, label %__end_no288, label %__check_curr287

__fresh293:
  br label %__check_curr287

__check_curr287:
  %compare1006 = icmp eq i8** %lvtable1005, %rvtable1007
  br i1 %compare1006, label %__end_yes289, label %__move_up286

__fresh294:
  br label %__move_up286

__move_up286:
  %rvtable1004 = getelementptr i8* %rvtable1007, i32 0
  br label %__bound_check285

__fresh295:
  br label %__end_yes289

__end_yes289:
  %lhs_or_call997 = load %A** %vdecl_slot993
  %cast_ptr996 = bitcast %A* %lhs_or_call997 to %C* 
  call void @print_string( i8* @_const_str182 )
  %lhs_or_call998 = load %C** %cast_ptr996
  %i999 = getelementptr %C* %lhs_or_call998, i32 0, i32 2
  %lhs_or_call1000 = load i32* %i999
  store i32 %lhs_or_call1000, i32* %vdecl_slot995
  br label %__end_no288

__end_no288:
  call void @print_string( i8* @_const_str183 )
  %lhs_or_call1001 = load %A** %vdecl_slot993
  %i1002 = getelementptr %A* %lhs_or_call1001, i32 0, i32 2
  %lhs_or_call1003 = load i32* %i1002
  store i32 %lhs_or_call1003, i32* %vdecl_slot995
  %lhs_or_call1010 = load i32* %vdecl_slot995
  ret i32 %lhs_or_call1010
}


define %C* @_C_ctor (%C* %_this1){
__fresh283:
  %mem_ptr980 = call i32* @oat_malloc ( i32 12 )
  %obj981 = bitcast i32* %mem_ptr980 to %B* 
  %new_obj982 = call %B* @_B_ctor ( %B* %obj981 )
  %_this1 = bitcast %B* %new_obj982 to %C 
  %_name983 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str181, i8** %_name983
  %this_vtable984 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable177, %_C_vtable** %this_vtable984
  %i979 = getelementptr %C* %_this1, i32 0, i32 2
  store i32 2, i32* %i979
  ret %C* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh282:
  %mem_ptr974 = call i32* @oat_malloc ( i32 12 )
  %obj975 = bitcast i32* %mem_ptr974 to %A* 
  %new_obj976 = call %A* @_A_ctor ( %A* %obj975 )
  %_this1 = bitcast %A* %new_obj976 to %B 
  %_name977 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str180, i8** %_name977
  %this_vtable978 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable176, %_B_vtable** %this_vtable978
  %i973 = getelementptr %B* %_this1, i32 0, i32 2
  store i32 1, i32* %i973
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh281:
  %mem_ptr968 = call i32* @oat_malloc ( i32 8 )
  %obj969 = bitcast i32* %mem_ptr968 to %Object* 
  %new_obj970 = call %Object* @_Object_ctor ( %Object* %obj969 )
  %_this1 = bitcast %Object* %new_obj970 to %A 
  %_name971 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str179, i8** %_name971
  %this_vtable972 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable175, %_A_vtable** %this_vtable972
  %i967 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 0, i32* %i967
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh280:
  %_name965 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call966 = load i8** %_name965
  ret i8* %lhs_or_call966
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh279:
  %_name963 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str178, i8** %_name963
  %this_vtable964 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable174, %_Object_vtable** %this_vtable964
  ret %Object* %_this1
}


