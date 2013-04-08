%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)*, void (%A*)* }
%A = type { %_A_vtable*, i8* }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, void (%A*)* }
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
@_const_str122.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str122 = alias bitcast([ 2 x i8 ]* @_const_str122.str. to i8*)@_const_str121.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str121 = alias bitcast([ 2 x i8 ]* @_const_str121.str. to i8*)@_const_str120.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str120 = alias bitcast([ 2 x i8 ]* @_const_str120.str. to i8*)@_const_str119.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str119 = alias bitcast([ 7 x i8 ]* @_const_str119.str. to i8*)@_B_vtable118 = private constant %_B_vtable {%_A_vtable* @_A_vtable117, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_f}, align 4
@_A_vtable117 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable116, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_f}, align 4
@_Object_vtable116 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh183:
  ret void
}


define i32 @program (i32 %argc718, { i32, [ 0 x i8* ] }* %argv716){
__fresh182:
  %argc_slot719 = alloca i32
  store i32 %argc718, i32* %argc_slot719
  %argv_slot717 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv716, { i32, [ 0 x i8* ] }** %argv_slot717
  %mem_ptr720 = call i32* @oat_malloc ( i32 8 )
  %obj721 = bitcast i32* %mem_ptr720 to %B* 
  %new_obj722 = call %B* @_B_ctor ( %B* %obj721 )
  %vdecl_slot723 = alloca %B*
  store %B* %new_obj722, %B** %vdecl_slot723
  %lhs_or_call724 = load %B** %vdecl_slot723
  %vtable_ptr725 = getelementptr %B* %lhs_or_call724, i32 0
  %vtable726 = load %_B_vtable** %vtable_ptr725
  %f728 = getelementptr %_B_vtable* %vtable726, i32 0, i32 2
  %f727 = load void (%A*)** %f728
  %cast_op729 = bitcast %B %lhs_or_call724 to %A* 
  call void %f727( %A* %cast_op729 )
  ret i32 0
}


define %B* @_B_ctor (%B* %_this1){
__fresh181:
  %mem_ptr711 = call i32* @oat_malloc ( i32 8 )
  %obj712 = bitcast i32* %mem_ptr711 to %A* 
  %new_obj713 = call %A* @_A_ctor ( %A* %obj712 )
  %_this1 = bitcast %A* %new_obj713 to %B 
  %_name714 = getelementptr %B* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str122, i8** %_name714
  %this_vtable715 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable118, %_B_vtable** %this_vtable715
  ret %B* %_this1
}


define void @_A_f (%A* %_this1){
__fresh180:
  call void @print_string( i8* @_const_str121 )
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh179:
  %mem_ptr706 = call i32* @oat_malloc ( i32 8 )
  %obj707 = bitcast i32* %mem_ptr706 to %Object* 
  %new_obj708 = call %Object* @_Object_ctor ( %Object* %obj707 )
  %_this1 = bitcast %Object* %new_obj708 to %A 
  %_name709 = getelementptr %A* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str120, i8** %_name709
  %this_vtable710 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable117, %_A_vtable** %this_vtable710
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh178:
  %_name704 = getelementptr %Object* %_this1, i32 0, i32 0, i32 1
  %lhs_or_call705 = load i8** %_name704
  ret i8* %lhs_or_call705
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh177:
  %_name702 = getelementptr %Object* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str119, i8** %_name702
  %this_vtable703 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable116, %_Object_vtable** %this_vtable703
  ret %Object* %_this1
}


