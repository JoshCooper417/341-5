%B = type { %_B_vtable*, i8*, i32, i32 }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)*, void (%A*)*, void (%A*)*, void (%B*)*, i32 (%B*, i32)* }
%A = type { %_A_vtable*, i8*, i32 }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, void (%A*)*, void (%A*)*, void (%A*)* }
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
@_const_str18.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str18 = alias bitcast([ 2 x i8 ]* @_const_str18.str. to i8*)@_const_str17.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str17 = alias bitcast([ 2 x i8 ]* @_const_str17.str. to i8*)@_const_str16.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str16 = alias bitcast([ 7 x i8 ]* @_const_str16.str. to i8*)@_B_vtable15 = private constant %_B_vtable {%_A_vtable* @_A_vtable14, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_x, void (%A*)* @_A_g, void (%B*)* @_B_f, i32 (%B*, i32)* @_B_h}, align 4
@_A_vtable14 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable13, i8* (%Object*)* @_Object_get_name, void (%A*)* @_A_x, void (%A*)* @_A_g, void (%A*)* @_A_f}, align 4
@_Object_vtable13 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh26:
  ret void
}


define i32 @program (i32 %argc115, { i32, [ 0 x i8* ] }* %argv113){
__fresh25:
  %argc_slot116 = alloca i32
  store i32 %argc115, i32* %argc_slot116
  %argv_slot114 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv113, { i32, [ 0 x i8* ] }** %argv_slot114
  %mem_ptr117 = call i32* @oat_malloc ( i32 16 )
  %obj118 = bitcast i32* %mem_ptr117 to %B* 
  %new_obj119 = call %B* @_B_ctor ( %B* %obj118 )
  %vdecl_slot120 = alloca %B*
  store %B* %new_obj119, %B** %vdecl_slot120
  %vdecl_slot121 = alloca i32
  store i32 0, i32* %vdecl_slot121
  %lhs_or_call122 = load %B** %vdecl_slot120
  %vtable_ptr123 = getelementptr %B* %lhs_or_call122, i32 0
  %vtable124 = load %_B_vtable** %vtable_ptr123
  %h126 = getelementptr %_B_vtable* %vtable124, i32 0, i32 5
  %h125 = load i32 (%B*, i32)** %h126
  %cast_op127 = bitcast %B %lhs_or_call122 to %B* 
  %ret128 = call i32 %h125 ( %B* %cast_op127, i32 3 )
  store i32 %ret128, i32* %vdecl_slot121
  %lhs_or_call129 = load i32* %vdecl_slot121
  ret i32 %lhs_or_call129
}


define i32 @_B_h (%B* %_this1, i32 %i94){
__fresh24:
  %i_slot95 = alloca i32
  store i32 %i94, i32* %i_slot95
  %vtable_ptr96 = getelementptr %B* %_this1, i32 0
  %vtable97 = load %_B_vtable** %vtable_ptr96
  %f99 = getelementptr %_B_vtable* %vtable97, i32 0, i32 4
  %f98 = load void (%B*)** %f99
  %cast_op100 = bitcast %B %_this1 to %B* 
  call void %f98( %B* %cast_op100 )
  %vtable_ptr101 = getelementptr %B* %_this1, i32 0
  %vtable102 = load %_B_vtable** %vtable_ptr101
  %g104 = getelementptr %_B_vtable* %vtable102, i32 0, i32 3
  %g103 = load void (%A*)** %g104
  %cast_op105 = bitcast %B %_this1 to %A* 
  call void %g103( %A* %cast_op105 )
  %i106 = getelementptr %B* %_this1, i32 0, i32 0, i32 2
  %lhs_or_call107 = load i32* %i106
  %j108 = getelementptr %B* %_this1, i32 0, i32 0, i32 3
  %lhs_or_call109 = load i32* %j108
  %bop110 = add i32 %lhs_or_call107, %lhs_or_call109
  %lhs_or_call111 = load i32* %i_slot95
  %bop112 = add i32 %bop110, %lhs_or_call111
  ret i32 %bop112
}


define void @_B_f (%B* %_this1){
__fresh23:
  %j90 = getelementptr %B* %_this1, i32 0, i32 0, i32 3
  %j91 = getelementptr %B* %_this1, i32 0, i32 0, i32 3
  %lhs_or_call92 = load i32* %j91
  %bop93 = add i32 %lhs_or_call92, 1
  store i32 %bop93, i32* %j90
  ret void
}


define %B* @_B_ctor (%B* %_this1){
__fresh22:
  %mem_ptr85 = call i32* @oat_malloc ( i32 12 )
  %obj86 = bitcast i32* %mem_ptr85 to %A* 
  %new_obj87 = call %A* @_A_ctor ( %A* %obj86 )
  %_this1 = bitcast %A* %new_obj87 to %B 
  %_name88 = getelementptr %B* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str18, i8** %_name88
  %this_vtable89 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable15, %_B_vtable** %this_vtable89
  %j84 = getelementptr %B* %_this1, i32 0, i32 0, i32 3
  store i32 2, i32* %j84
  ret %B* %_this1
}


define void @_A_f (%A* %_this1){
__fresh21:
  %i83 = getelementptr %A* %_this1, i32 0, i32 0, i32 2
  store i32 999, i32* %i83
  ret void
}


define void @_A_g (%A* %_this1){
__fresh20:
  %vtable_ptr74 = getelementptr %A* %_this1, i32 0
  %vtable75 = load %_A_vtable** %vtable_ptr74
  %x77 = getelementptr %_A_vtable* %vtable75, i32 0, i32 2
  %x76 = load void (%A*)** %x77
  %cast_op78 = bitcast %A %_this1 to %A* 
  call void %x76( %A* %cast_op78 )
  %i79 = getelementptr %A* %_this1, i32 0, i32 0, i32 2
  %i80 = getelementptr %A* %_this1, i32 0, i32 0, i32 2
  %lhs_or_call81 = load i32* %i80
  %bop82 = add i32 %lhs_or_call81, 1
  store i32 %bop82, i32* %i79
  ret void
}


define void @_A_x (%A* %_this1){
__fresh19:
  %i70 = getelementptr %A* %_this1, i32 0, i32 0, i32 2
  %i71 = getelementptr %A* %_this1, i32 0, i32 0, i32 2
  %lhs_or_call72 = load i32* %i71
  %bop73 = add i32 %lhs_or_call72, 1
  store i32 %bop73, i32* %i70
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh18:
  %mem_ptr65 = call i32* @oat_malloc ( i32 8 )
  %obj66 = bitcast i32* %mem_ptr65 to %Object* 
  %new_obj67 = call %Object* @_Object_ctor ( %Object* %obj66 )
  %_this1 = bitcast %Object* %new_obj67 to %A 
  %_name68 = getelementptr %A* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str17, i8** %_name68
  %this_vtable69 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable14, %_A_vtable** %this_vtable69
  %i64 = getelementptr %A* %_this1, i32 0, i32 0, i32 2
  store i32 1, i32* %i64
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh17:
  %_name62 = getelementptr %Object* %_this1, i32 0, i32 0, i32 1
  %lhs_or_call63 = load i8** %_name62
  ret i8* %lhs_or_call63
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh16:
  %_name60 = getelementptr %Object* %_this1, i32 0, i32 0, i32 1
  store i8* @_const_str16, i8** %_name60
  %this_vtable61 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable13, %_Object_vtable** %this_vtable61
  ret %Object* %_this1
}


