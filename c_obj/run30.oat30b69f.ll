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
@_const_str173.str. = private unnamed_addr constant [ 3 x i8 ] c "no\00", align 4
@_const_str173 = alias bitcast([ 3 x i8 ]* @_const_str173.str. to i8*)@_const_str172.str. = private unnamed_addr constant [ 4 x i8 ] c "yes\00", align 4
@_const_str172 = alias bitcast([ 4 x i8 ]* @_const_str172.str. to i8*)@_const_str171.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str171 = alias bitcast([ 2 x i8 ]* @_const_str171.str. to i8*)@_const_str170.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str170 = alias bitcast([ 2 x i8 ]* @_const_str170.str. to i8*)@_const_str169.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str169 = alias bitcast([ 2 x i8 ]* @_const_str169.str. to i8*)@_const_str168.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str168 = alias bitcast([ 7 x i8 ]* @_const_str168.str. to i8*)@_C_vtable167 = private constant %_C_vtable {%_B_vtable* @_B_vtable166, i8* (%Object*)* @_Object_get_name}, align 4
@_B_vtable166 = private constant %_B_vtable {%_A_vtable* @_A_vtable165, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable165 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable164, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable164 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh278:
  ret void
}


define i32 @program (i32 %argc939, { i32, [ 0 x i8* ] }* %argv937){
__fresh272:
  %argc_slot940 = alloca i32
  store i32 %argc939, i32* %argc_slot940
  %argv_slot938 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv937, { i32, [ 0 x i8* ] }** %argv_slot938
  %mem_ptr941 = call i32* @oat_malloc ( i32 12 )
  %obj942 = bitcast i32* %mem_ptr941 to %B* 
  %new_obj943 = call %B* @_B_ctor ( %B* %obj942 )
  %cast_op944 = bitcast %B* %new_obj943 to %A* 
  %vdecl_slot945 = alloca %A*
  store %A* %cast_op944, %A** %vdecl_slot945
  %unop946 = sub i32 0, 1
  %vdecl_slot947 = alloca i32
  store i32 %unop946, i32* %vdecl_slot947
  br label %__init266

__fresh273:
  br label %__init266

__init266:
  %lhs_or_call949 = load %A** %vdecl_slot945
  %rvtable956 = getelementptr %A* %lhs_or_call949, i32 0
  br label %__bound_check267

__fresh274:
  br label %__bound_check267

__bound_check267:
  %cast_op960 = bitcast %_C_vtable* @_C_vtable167 to i8** 
  %lvtable957 = load i8** %cast_op960
  %cast_vtable961 = bitcast i8** %rvtable956 to i8** 
  %rvtable959 = load i8** %cast_vtable961
  %compare958 = icmp eq i8* %rvtable959, null
  br i1 %compare958, label %__end_no270, label %__check_curr269

__fresh275:
  br label %__check_curr269

__check_curr269:
  %compare958 = icmp eq i8** %lvtable957, %rvtable959
  br i1 %compare958, label %__end_yes271, label %__move_up268

__fresh276:
  br label %__move_up268

__move_up268:
  %rvtable956 = getelementptr i8* %rvtable959, i32 0
  br label %__bound_check267

__fresh277:
  br label %__end_yes271

__end_yes271:
  %lhs_or_call949 = load %A** %vdecl_slot945
  %cast_ptr948 = bitcast %A* %lhs_or_call949 to %C* 
  call void @print_string( i8* @_const_str172 )
  %lhs_or_call950 = load %C** %cast_ptr948
  %i951 = getelementptr %C* %lhs_or_call950, i32 0, i32 2
  %lhs_or_call952 = load i32* %i951
  store i32 %lhs_or_call952, i32* %vdecl_slot947
  br label %__end_no270

__end_no270:
  call void @print_string( i8* @_const_str173 )
  %lhs_or_call953 = load %A** %vdecl_slot945
  %i954 = getelementptr %A* %lhs_or_call953, i32 0, i32 2
  %lhs_or_call955 = load i32* %i954
  store i32 %lhs_or_call955, i32* %vdecl_slot947
  %lhs_or_call962 = load i32* %vdecl_slot947
  ret i32 %lhs_or_call962
}


define %C* @_C_ctor (%C* %_this1){
__fresh265:
  %mem_ptr932 = call i32* @oat_malloc ( i32 12 )
  %obj933 = bitcast i32* %mem_ptr932 to %B* 
  %new_obj934 = call %B* @_B_ctor ( %B* %obj933 )
  %_this1 = bitcast %B* %new_obj934 to %C 
  %_name935 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str171, i8** %_name935
  %this_vtable936 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable167, %_C_vtable** %this_vtable936
  %i931 = getelementptr %C* %_this1, i32 0, i32 2
  store i32 2, i32* %i931
  ret %C* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh264:
  %mem_ptr926 = call i32* @oat_malloc ( i32 12 )
  %obj927 = bitcast i32* %mem_ptr926 to %A* 
  %new_obj928 = call %A* @_A_ctor ( %A* %obj927 )
  %_this1 = bitcast %A* %new_obj928 to %B 
  %_name929 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str170, i8** %_name929
  %this_vtable930 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable166, %_B_vtable** %this_vtable930
  %i925 = getelementptr %B* %_this1, i32 0, i32 2
  store i32 1, i32* %i925
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh263:
  %mem_ptr920 = call i32* @oat_malloc ( i32 8 )
  %obj921 = bitcast i32* %mem_ptr920 to %Object* 
  %new_obj922 = call %Object* @_Object_ctor ( %Object* %obj921 )
  %_this1 = bitcast %Object* %new_obj922 to %A 
  %_name923 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str169, i8** %_name923
  %this_vtable924 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable165, %_A_vtable** %this_vtable924
  %i919 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 0, i32* %i919
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh262:
  %_name917 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call918 = load i8** %_name917
  ret i8* %lhs_or_call918
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh261:
  %_name915 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str168, i8** %_name915
  %this_vtable916 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable164, %_Object_vtable** %this_vtable916
  ret %Object* %_this1
}


