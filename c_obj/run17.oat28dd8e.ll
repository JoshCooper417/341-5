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
@_const_str58.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str58 = alias bitcast([ 2 x i8 ]* @_const_str58.str. to i8*)@_const_str57.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str57 = alias bitcast([ 7 x i8 ]* @_const_str57.str. to i8*)@_A_vtable56 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable55, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable55 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh73:
  ret void
}


define i32 @program (i32 %argc283, { i32, [ 0 x i8* ] }* %argv281){
__fresh72:
  %argc_slot284 = alloca i32
  store i32 %argc283, i32* %argc_slot284
  %argv_slot282 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv281, { i32, [ 0 x i8* ] }** %argv_slot282
  %mem_ptr285 = call i32* @oat_malloc ( i32 12 )
  %obj286 = bitcast i32* %mem_ptr285 to %A* 
  %new_obj287 = call %A* @_A_ctor ( %A* %obj286, i32 10 )
  %vdecl_slot288 = alloca %A*
  store %A* %new_obj287, %A** %vdecl_slot288
  %lhs_or_call289 = load %A** %vdecl_slot288
  %i290 = getelementptr %A* %lhs_or_call289, i32 0, i32 2
  %lhs_or_call291 = load i32* %i290
  ret i32 %lhs_or_call291
}


define %A* @_A_ctor (%A* %_this1, i32 %i272){
__fresh71:
  %i_slot273 = alloca i32
  store i32 %i272, i32* %i_slot273
  %mem_ptr276 = call i32* @oat_malloc ( i32 8 )
  %obj277 = bitcast i32* %mem_ptr276 to %Object* 
  %new_obj278 = call %Object* @_Object_ctor ( %Object* %obj277 )
  %_this1 = bitcast %Object* %new_obj278 to %A 
  %_name279 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str58, i8** %_name279
  %this_vtable280 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable56, %_A_vtable** %this_vtable280
  %i274 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call275 = load i32* %i_slot273
  store i32 %lhs_or_call275, i32* %i274
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh70:
  %_name270 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call271 = load i8** %_name270
  ret i8* %lhs_or_call271
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh69:
  %_name268 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str57, i8** %_name268
  %this_vtable269 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable55, %_Object_vtable** %this_vtable269
  ret %Object* %_this1
}


