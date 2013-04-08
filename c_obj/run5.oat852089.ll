%A = type { %_A_vtable*, i8*, i1 }
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
@_const_str34.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str34 = alias bitcast([ 2 x i8 ]* @_const_str34.str. to i8*)@_const_str33.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str33 = alias bitcast([ 7 x i8 ]* @_const_str33.str. to i8*)@_A_vtable32 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable31, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable31 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh44:
  ret void
}


define i32 @program (i32 %argc137, { i32, [ 0 x i8* ] }* %argv135){
__fresh41:
  %argc_slot138 = alloca i32
  store i32 %argc137, i32* %argc_slot138
  %argv_slot136 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv135, { i32, [ 0 x i8* ] }** %argv_slot136
  %mem_ptr139 = call i32* @oat_malloc ( i32 12 )
  %obj140 = bitcast i32* %mem_ptr139 to %A* 
  %new_obj141 = call %A* @_A_ctor ( %A* %obj140 )
  %vdecl_slot142 = alloca %A*
  store %A* %new_obj141, %A** %vdecl_slot142
  %vdecl_slot143 = alloca i32
  store i32 0, i32* %vdecl_slot143
  %lhs_or_call144 = load %A** %vdecl_slot142
  %b145 = getelementptr %A* %lhs_or_call144, i32 0, i32 2
  %lhs_or_call146 = load i1* %b145
  br i1 %lhs_or_call146, label %__then40, label %__else39

__fresh42:
  br label %__then40

__then40:
  store i32 1, i32* %vdecl_slot143
  br label %__merge38

__fresh43:
  br label %__else39

__else39:
  store i32 0, i32* %vdecl_slot143
  br label %__merge38

__merge38:
  %lhs_or_call147 = load i32* %vdecl_slot143
  ret i32 %lhs_or_call147
}


define %A* @_A_ctor (%A* %_this1){
__fresh37:
  %mem_ptr130 = call i32* @oat_malloc ( i32 8 )
  %obj131 = bitcast i32* %mem_ptr130 to %Object* 
  %new_obj132 = call %Object* @_Object_ctor ( %Object* %obj131 )
  %_this1 = bitcast %Object* %new_obj132 to %A 
  %_name133 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str34, i8** %_name133
  %this_vtable134 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable32, %_A_vtable** %this_vtable134
  %b129 = getelementptr %A* %_this1, i32 0, i32 2
  store i1 1, i1* %b129
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh36:
  %_name127 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call128 = load i8** %_name127
  ret i8* %lhs_or_call128
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh35:
  %_name125 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str33, i8** %_name125
  %this_vtable126 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable31, %_Object_vtable** %this_vtable126
  ret %Object* %_this1
}


