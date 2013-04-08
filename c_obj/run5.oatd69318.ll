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
@_const_str35.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str35 = alias bitcast([ 2 x i8 ]* @_const_str35.str. to i8*)@_const_str34.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str34 = alias bitcast([ 7 x i8 ]* @_const_str34.str. to i8*)@_A_vtable33 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable32, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable32 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh75:
  ret void
}


define i32 @program (i32 %argc225, { i32, [ 0 x i8* ] }* %argv223){
__fresh72:
  %argc_slot226 = alloca i32
  store i32 %argc225, i32* %argc_slot226
  %argv_slot224 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv223, { i32, [ 0 x i8* ] }** %argv_slot224
  %mem_ptr227 = call i32* @oat_malloc ( i32 12 )
  %obj228 = bitcast i32* %mem_ptr227 to %A* 
  %new_obj229 = call %A* @_A_ctor ( %A* %obj228 )
  %vdecl_slot230 = alloca %A*
  store %A* %new_obj229, %A** %vdecl_slot230
  %vdecl_slot231 = alloca i32
  store i32 0, i32* %vdecl_slot231
  %lhs_or_call232 = load %A** %vdecl_slot230
  %b233 = getelementptr %A* %lhs_or_call232, i32 0, i32 2
  %lhs_or_call234 = load i1* %b233
  br i1 %lhs_or_call234, label %__then71, label %__else70

__fresh73:
  br label %__then71

__then71:
  store i32 1, i32* %vdecl_slot231
  br label %__merge69

__fresh74:
  br label %__else70

__else70:
  store i32 0, i32* %vdecl_slot231
  br label %__merge69

__merge69:
  %lhs_or_call235 = load i32* %vdecl_slot231
  ret i32 %lhs_or_call235
}


define %A* @_A_ctor (%A* %_this1){
__fresh68:
  %mem_ptr218 = call i32* @oat_malloc ( i32 8 )
  %obj219 = bitcast i32* %mem_ptr218 to %Object* 
  %new_obj220 = call %Object* @_Object_ctor ( %Object* %obj219 )
  %_this1 = bitcast %Object* %new_obj220 to %A 
  %_name221 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str35, i8** %_name221
  %this_vtable222 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable33, %_A_vtable** %this_vtable222
  %b217 = getelementptr %A* %_this1, i32 0, i32 2
  store i1 1, i1* %b217
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh67:
  %_name215 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call216 = load i8** %_name215
  ret i8* %lhs_or_call216
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh66:
  %_name213 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str34, i8** %_name213
  %this_vtable214 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable32, %_Object_vtable** %this_vtable214
  ret %Object* %_this1
}


