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


define i32 @program (i32 %argc114, { i32, [ 0 x i8* ] }* %argv112){
__fresh25:
  %argc_slot115 = alloca i32
  store i32 %argc114, i32* %argc_slot115
  %argv_slot113 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv112, { i32, [ 0 x i8* ] }** %argv_slot113
  %mem_ptr116 = call i32* @oat_malloc ( i32 16 )
  %obj117 = bitcast i32* %mem_ptr116 to %B* 
  %new_obj118 = call %B* @_B_ctor ( %B* %obj117 )
  %vdecl_slot119 = alloca %B*
  store %B* %new_obj118, %B** %vdecl_slot119
  %vdecl_slot120 = alloca i32
  store i32 0, i32* %vdecl_slot120
  %lhs_or_call121 = load %B** %vdecl_slot119
  %vtable_ptr122 = getelementptr %B* %lhs_or_call121, i32 0
  %vtable123 = load %_B_vtable** %vtable_ptr122
  %h125 = getelementptr %_B_vtable* %vtable123, i32 0, i32 5
  %h124 = load i32 (%B*, i32)** %h125
  %cast_op126 = bitcast %B %lhs_or_call121 to %B* 
  %ret127 = call i32 %h124 ( %B* %cast_op126, i32 3 )
  store i32 %ret127, i32* %vdecl_slot120
  %lhs_or_call128 = load i32* %vdecl_slot120
  ret i32 %lhs_or_call128
}


define i32 @_B_h (%B* %_this1, i32 %i93){
__fresh24:
  %i_slot94 = alloca i32
  store i32 %i93, i32* %i_slot94
  %vtable_ptr95 = getelementptr %B* %_this1, i32 0
  %vtable96 = load %_B_vtable** %vtable_ptr95
  %f98 = getelementptr %_B_vtable* %vtable96, i32 0, i32 4
  %f97 = load void (%B*)** %f98
  %cast_op99 = bitcast %B %_this1 to %B* 
  call void %f97( %B* %cast_op99 )
  %vtable_ptr100 = getelementptr %B* %_this1, i32 0
  %vtable101 = load %_B_vtable** %vtable_ptr100
  %g103 = getelementptr %_B_vtable* %vtable101, i32 0, i32 3
  %g102 = load void (%A*)** %g103
  %cast_op104 = bitcast %B %_this1 to %A* 
  call void %g102( %A* %cast_op104 )
  %i105 = getelementptr %B* %_this1, i32 0, i32 2
  %lhs_or_call106 = load i32* %i105
  %j107 = getelementptr %B* %_this1, i32 0, i32 3
  %lhs_or_call108 = load i32* %j107
  %bop109 = add i32 %lhs_or_call106, %lhs_or_call108
  %lhs_or_call110 = load i32* %i_slot94
  %bop111 = add i32 %bop109, %lhs_or_call110
  ret i32 %bop111
}


define void @_B_f (%B* %_this1){
__fresh23:
  %j89 = getelementptr %B* %_this1, i32 0, i32 3
  %j90 = getelementptr %B* %_this1, i32 0, i32 3
  %lhs_or_call91 = load i32* %j90
  %bop92 = add i32 %lhs_or_call91, 1
  store i32 %bop92, i32* %j89
  ret void
}


define %B* @_B_ctor (%B* %_this1){
__fresh22:
  %mem_ptr84 = call i32* @oat_malloc ( i32 12 )
  %obj85 = bitcast i32* %mem_ptr84 to %A* 
  %new_obj86 = call %A* @_A_ctor ( %A* %obj85 )
  %_this1 = bitcast %A* %new_obj86 to %B 
  %_name87 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str18, i8** %_name87
  %this_vtable88 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable15, %_B_vtable** %this_vtable88
  %j83 = getelementptr %B* %_this1, i32 0, i32 3
  store i32 2, i32* %j83
  ret %B* %_this1
}


define void @_A_f (%A* %_this1){
__fresh21:
  %i82 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 999, i32* %i82
  ret void
}


define void @_A_g (%A* %_this1){
__fresh20:
  %vtable_ptr73 = getelementptr %A* %_this1, i32 0
  %vtable74 = load %_A_vtable** %vtable_ptr73
  %x76 = getelementptr %_A_vtable* %vtable74, i32 0, i32 2
  %x75 = load void (%A*)** %x76
  %cast_op77 = bitcast %A %_this1 to %A* 
  call void %x75( %A* %cast_op77 )
  %i78 = getelementptr %A* %_this1, i32 0, i32 2
  %i79 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call80 = load i32* %i79
  %bop81 = add i32 %lhs_or_call80, 1
  store i32 %bop81, i32* %i78
  ret void
}


define void @_A_x (%A* %_this1){
__fresh19:
  %i69 = getelementptr %A* %_this1, i32 0, i32 2
  %i70 = getelementptr %A* %_this1, i32 0, i32 2
  %lhs_or_call71 = load i32* %i70
  %bop72 = add i32 %lhs_or_call71, 1
  store i32 %bop72, i32* %i69
  ret void
}


define %A* @_A_ctor (%A* %_this1){
__fresh18:
  %mem_ptr64 = call i32* @oat_malloc ( i32 8 )
  %obj65 = bitcast i32* %mem_ptr64 to %Object* 
  %new_obj66 = call %Object* @_Object_ctor ( %Object* %obj65 )
  %_this1 = bitcast %Object* %new_obj66 to %A 
  %_name67 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str17, i8** %_name67
  %this_vtable68 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable14, %_A_vtable** %this_vtable68
  %i63 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 1, i32* %i63
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh17:
  %_name61 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call62 = load i8** %_name61
  ret i8* %lhs_or_call62
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh16:
  %_name59 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str16, i8** %_name59
  %this_vtable60 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable13, %_Object_vtable** %this_vtable60
  ret %Object* %_this1
}


