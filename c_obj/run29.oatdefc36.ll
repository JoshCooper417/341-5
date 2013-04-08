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
@_const_str163.str. = private unnamed_addr constant [ 3 x i8 ] c "no\00", align 4
@_const_str163 = alias bitcast([ 3 x i8 ]* @_const_str163.str. to i8*)@_const_str162.str. = private unnamed_addr constant [ 4 x i8 ] c "yes\00", align 4
@_const_str162 = alias bitcast([ 4 x i8 ]* @_const_str162.str. to i8*)@_const_str161.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str161 = alias bitcast([ 2 x i8 ]* @_const_str161.str. to i8*)@_const_str160.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str160 = alias bitcast([ 2 x i8 ]* @_const_str160.str. to i8*)@_const_str159.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str159 = alias bitcast([ 2 x i8 ]* @_const_str159.str. to i8*)@_const_str158.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str158 = alias bitcast([ 7 x i8 ]* @_const_str158.str. to i8*)@_C_vtable157 = private constant %_C_vtable {%_B_vtable* @_B_vtable156, i8* (%Object*)* @_Object_get_name}, align 4
@_B_vtable156 = private constant %_B_vtable {%_A_vtable* @_A_vtable155, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable155 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable154, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable154 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh266:
  ret void
}


define i32 @program (i32 %argc892, { i32, [ 0 x i8* ] }* %argv890){
__fresh258:
  %argc_slot893 = alloca i32
  store i32 %argc892, i32* %argc_slot893
  %argv_slot891 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv890, { i32, [ 0 x i8* ] }** %argv_slot891
  %mem_ptr894 = call i32* @oat_malloc ( i32 12 )
  %obj895 = bitcast i32* %mem_ptr894 to %A* 
  %new_obj896 = call %A* @_A_ctor ( %A* %obj895 )
  %vdecl_slot897 = alloca %A*
  store %A* %new_obj896, %A** %vdecl_slot897
  %unop898 = sub i32 0, 1
  %vdecl_slot899 = alloca i32
  store i32 %unop898, i32* %vdecl_slot899
  br label %__init251

__fresh259:
  br label %__init251

__init251:
  %lhs_or_call901 = load %A** %vdecl_slot897
  %rvtable908 = getelementptr %A* %lhs_or_call901, i32 0
  br label %__bound_check252

__fresh260:
  br label %__bound_check252

__bound_check252:
  %cast_op912 = bitcast %_C_vtable* @_C_vtable157 to i8** 
  %lvtable909 = load i8** %cast_op912
  %cast_vtable913 = bitcast i8** %rvtable908 to i8** 
  %rvtable911 = load i8** %cast_vtable913
  %compare910 = icmp eq i8* %rvtable911, null
  br i1 %compare910, label %__end_no255, label %__check_curr254

__fresh261:
  br label %__check_curr254

__check_curr254:
  %compare910 = icmp eq i8** %lvtable909, %rvtable911
  br i1 %compare910, label %__end_yes256, label %__move_up253

__fresh262:
  br label %__move_up253

__move_up253:
  %rvtable908 = getelementptr i8* %rvtable911, i32 0
  br label %__bound_check252

__fresh263:
  br label %__end_yes256

__end_yes256:
  %lhs_or_call901 = load %A** %vdecl_slot897
  %cast_ptr900 = bitcast %A* %lhs_or_call901 to %C* 
  call void @print_string( i8* @_const_str162 )
  %lhs_or_call902 = load %C** %cast_ptr900
  %i903 = getelementptr %C* %lhs_or_call902, i32 0, i32 2
  %lhs_or_call904 = load i32* %i903
  store i32 %lhs_or_call904, i32* %vdecl_slot899
  br label %__end257

__fresh264:
  br label %__end_no255

__end_no255:
  call void @print_string( i8* @_const_str163 )
  %lhs_or_call905 = load %A** %vdecl_slot897
  %i906 = getelementptr %A* %lhs_or_call905, i32 0, i32 2
  %lhs_or_call907 = load i32* %i906
  store i32 %lhs_or_call907, i32* %vdecl_slot899
  br label %__end257

__fresh265:
  br label %__end257

__end257:
  %lhs_or_call914 = load i32* %vdecl_slot899
  ret i32 %lhs_or_call914
}


define %C* @_C_ctor (%C* %_this1){
__fresh250:
  %mem_ptr885 = call i32* @oat_malloc ( i32 12 )
  %obj886 = bitcast i32* %mem_ptr885 to %B* 
  %new_obj887 = call %B* @_B_ctor ( %B* %obj886 )
  %_this1 = bitcast %B* %new_obj887 to %C 
  %_name888 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str161, i8** %_name888
  %this_vtable889 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable157, %_C_vtable** %this_vtable889
  %i884 = getelementptr %C* %_this1, i32 0, i32 2
  store i32 2, i32* %i884
  ret %C* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh249:
  %mem_ptr879 = call i32* @oat_malloc ( i32 12 )
  %obj880 = bitcast i32* %mem_ptr879 to %A* 
  %new_obj881 = call %A* @_A_ctor ( %A* %obj880 )
  %_this1 = bitcast %A* %new_obj881 to %B 
  %_name882 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str160, i8** %_name882
  %this_vtable883 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable156, %_B_vtable** %this_vtable883
  %i878 = getelementptr %B* %_this1, i32 0, i32 2
  store i32 1, i32* %i878
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh248:
  %mem_ptr873 = call i32* @oat_malloc ( i32 8 )
  %obj874 = bitcast i32* %mem_ptr873 to %Object* 
  %new_obj875 = call %Object* @_Object_ctor ( %Object* %obj874 )
  %_this1 = bitcast %Object* %new_obj875 to %A 
  %_name876 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str159, i8** %_name876
  %this_vtable877 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable155, %_A_vtable** %this_vtable877
  %i872 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 0, i32* %i872
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh247:
  %_name870 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call871 = load i8** %_name870
  ret i8* %lhs_or_call871
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh246:
  %_name868 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str158, i8** %_name868
  %this_vtable869 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable154, %_Object_vtable** %this_vtable869
  ret %Object* %_this1
}


