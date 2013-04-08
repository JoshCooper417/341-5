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
@_const_str63.str. = private unnamed_addr constant [ 7 x i8 ] c "cis341\00", align 4
@_const_str63 = alias bitcast([ 7 x i8 ]* @_const_str63.str. to i8*)@_const_str62.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str62 = alias bitcast([ 2 x i8 ]* @_const_str62.str. to i8*)@_const_str61.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str61 = alias bitcast([ 7 x i8 ]* @_const_str61.str. to i8*)@_A_vtable60 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable59, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable59 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh78:
  ret void
}


define i32 @program (i32 %argc307, { i32, [ 0 x i8* ] }* %argv305){
__fresh77:
  %argc_slot308 = alloca i32
  store i32 %argc307, i32* %argc_slot308
  %argv_slot306 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv305, { i32, [ 0 x i8* ] }** %argv_slot306
  %mem_ptr309 = call i32* @oat_malloc ( i32 12 )
  %obj310 = bitcast i32* %mem_ptr309 to %A* 
  %new_obj311 = call %A* @_A_ctor ( %A* %obj310, i8* @_const_str63 )
  %vdecl_slot312 = alloca %A*
  store %A* %new_obj311, %A** %vdecl_slot312
  %lhs_or_call313 = load %A** %vdecl_slot312
  %str314 = getelementptr %A* %lhs_or_call313, i32 0, i32 2
  %lhs_or_call315 = load i8** %str314
  call void @print_string( i8* %lhs_or_call315 )
  ret i32 0
}


define %A* @_A_ctor (%A* %_this1, i8* %str296){
__fresh76:
  %str_slot297 = alloca i8*
  store i8* %str296, i8** %str_slot297
  %mem_ptr298 = call i32* @oat_malloc ( i32 8 )
  %obj299 = bitcast i32* %mem_ptr298 to %Object* 
  %new_obj300 = call %Object* @_Object_ctor ( %Object* %obj299 )
  %_this1 = bitcast %Object* %new_obj300 to %A 
  %_name301 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str62, i8** %_name301
  %str302 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call303 = load i8** %str_slot297
  store i8* %lhs_or_call303, i8** %str302
  %this_vtable304 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable60, %_A_vtable** %this_vtable304
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh75:
  %_name294 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call295 = load i8** %_name294
  ret i8* %lhs_or_call295
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh74:
  %_name292 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str61, i8** %_name292
  %this_vtable293 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable59, %_Object_vtable** %this_vtable293
  ret %Object* %_this1
}


