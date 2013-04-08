%A = type { %_A_vtable*, i8*, i8* }
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
@_const_str39.str. = private unnamed_addr constant [ 4 x i8 ] c "str\00", align 4
@_const_str39 = alias bitcast([ 4 x i8 ]* @_const_str39.str. to i8*)@_const_str38.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str38 = alias bitcast([ 2 x i8 ]* @_const_str38.str. to i8*)@_const_str37.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str37 = alias bitcast([ 7 x i8 ]* @_const_str37.str. to i8*)@_A_vtable36 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable35, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable35 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh49:
  ret void
}


define i32 @program (i32 %argc160, { i32, [ 0 x i8* ] }* %argv158){
__fresh48:
  %argc_slot161 = alloca i32
  store i32 %argc160, i32* %argc_slot161
  %argv_slot159 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv158, { i32, [ 0 x i8* ] }** %argv_slot159
  %mem_ptr162 = call i32* @oat_malloc ( i32 12 )
  %obj163 = bitcast i32* %mem_ptr162 to %A* 
  %new_obj164 = call %A* @_A_ctor ( %A* %obj163 )
  %vdecl_slot165 = alloca %A*
  store %A* %new_obj164, %A** %vdecl_slot165
  %lhs_or_call166 = load %A** %vdecl_slot165
  %str167 = getelementptr %A* %lhs_or_call166, i32 0, i32 2
  %lhs_or_call168 = load i8** %str167
  call void @print_string( i8* %lhs_or_call168 )
  ret i32 0
}


define %A* @_A_ctor (%A* %_this1){
__fresh47:
  %mem_ptr152 = call i32* @oat_malloc ( i32 8 )
  %obj153 = bitcast i32* %mem_ptr152 to %Object* 
  %new_obj154 = call %Object* @_Object_ctor ( %Object* %obj153 )
  %_this1 = bitcast %Object* %new_obj154 to %A 
  %_name155 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str38, i8** %_name155
  %str156 = getelementptr %A* %_this1, i32 0, i32 2
  store i8* @_const_str39, i8** %str156
  %this_vtable157 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable36, %_A_vtable** %this_vtable157
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh46:
  %_name150 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call151 = load i8** %_name150
  ret i8* %lhs_or_call151
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh45:
  %_name148 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str37, i8** %_name148
  %this_vtable149 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable35, %_Object_vtable** %this_vtable149
  ret %Object* %_this1
}


