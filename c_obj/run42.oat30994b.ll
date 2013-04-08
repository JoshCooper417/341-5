%A = type { %_A_vtable*, i8* }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, void (%A*)*, void (%A*)* }
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
@_const_str34.str. = private unnamed_addr constant [ 2 x i8 ] c "g\00", align 4
@_const_str34 = alias bitcast([ 2 x i8 ]* @_const_str34.str. to i8*)@_const_str33.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str33 = alias bitcast([ 2 x i8 ]* @_const_str33.str. to i8*)@_const_str32.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str32 = alias bitcast([ 7 x i8 ]* @_const_str32.str. to i8*)@_A_vtable31 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable30, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_f, void (%A*)* @_A_g}, align 4
@_Object_vtable30 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh33:
  ret void
}


define i32 @program (i32 %argc142, { i32, [ 0 x i8* ] }* %argv140){
__fresh32:
  %argc_slot143 = alloca i32
  store i32 %argc142, i32* %argc_slot143
  %argv_slot141 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv140, { i32, [ 0 x i8* ] }** %argv_slot141
  %mem_ptr144 = call i32* @oat_malloc ( i32 8 )
  %obj145 = bitcast i32* %mem_ptr144 to %A* 
  %new_obj146 = call %A* @_A_ctor ( %A* %obj145 )
  %vdecl_slot147 = alloca %A*
  store %A* %new_obj146, %A** %vdecl_slot147
  %lhs_or_call148 = load %A** %vdecl_slot147
  %g150 = getelementptr %_A_vtable* @_A_vtable31, i32 0, i32 3
  %g149 = load void (%A*)** %g150
  %cast_op151 = bitcast %A %lhs_or_call148 to %A* 
  call void %g149( %A* %cast_op151 )
  ret i32 0
}


define void @_A_g (%A* %_this1){
__fresh31:
  call void @print_string( i8* @_const_str34 )
  ret void
}


define void @_A_f (%A* %_this1){
__fresh30:
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh29:
  %mem_ptr135 = call i32* @oat_malloc ( i32 8 )
  %obj136 = bitcast i32* %mem_ptr135 to %Object* 
  %new_obj137 = call %Object* @_Object_ctor ( %Object* %obj136 )
  %_this1 = bitcast %Object* %new_obj137 to %A 
  %_name138 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str33, i8** %_name138
  %this_vtable139 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable31, %_A_vtable** %this_vtable139
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh28:
  %_name133 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call134 = load i8** %_name133
  ret i8* %lhs_or_call134
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh27:
  %_name131 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str32, i8** %_name131
  %this_vtable132 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable30, %_Object_vtable** %this_vtable132
  ret %Object* %_this1
}


