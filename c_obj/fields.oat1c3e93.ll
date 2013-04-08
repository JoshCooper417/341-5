%Fields = type { %_Fields_vtable*, i8*, i32, i32, i32 }
%_Fields_vtable = type { %_Object_vtable*, i8* (%Object*)*, %Fields* (%Fields*)* }
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
@_const_str488.str. = private unnamed_addr constant [ 7 x i8 ] c "Fields\00", align 4
@_const_str488 = alias bitcast([ 7 x i8 ]* @_const_str488.str. to i8*)@_const_str487.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str487 = alias bitcast([ 7 x i8 ]* @_const_str487.str. to i8*)@_Fields_vtable486 = private constant %_Fields_vtable {%_Object_vtable* @_Object_vtable485, i8* (%Object*)* @_Object_get_name, %Fields* (%Fields*)* @_Fields_sumab}, align 4
@_Object_vtable485 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh777:
  ret void
}


define i32 @program (i32 %argc2854, { i32, [ 0 x i8* ] }* %argv2852){
__fresh776:
  %argc_slot2855 = alloca i32
  store i32 %argc2854, i32* %argc_slot2855
  %argv_slot2853 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2852, { i32, [ 0 x i8* ] }** %argv_slot2853
  %mem_ptr2856 = call i32* @oat_malloc ( i32 20 )
  %obj2857 = bitcast i32* %mem_ptr2856 to %Fields* 
  %new_obj2858 = call %Fields* @_Fields_ctor ( %Fields* %obj2857 )
  %vdecl_slot2859 = alloca %Fields*
  store %Fields* %new_obj2858, %Fields** %vdecl_slot2859
  %lhs_or_call2860 = load %Fields** %vdecl_slot2859
  %vtable_ptr2861 = getelementptr %Fields* %lhs_or_call2860, i32 0
  %vtable2862 = load %_Fields_vtable** %vtable_ptr2861
  %sumab2864 = getelementptr %_Fields_vtable* %vtable2862, i32 0, i32 2
  %sumab2863 = load %Fields* (%Fields*)** %sumab2864
  %cast_op2865 = bitcast %Fields %lhs_or_call2860 to %Fields* 
  %ret2866 = call %Fields* %sumab2863 ( %Fields* %cast_op2865 )
  %vdecl_slot2867 = alloca %Fields*
  store %Fields* %ret2866, %Fields** %vdecl_slot2867
  %lhs_or_call2868 = load %Fields** %vdecl_slot2867
  %bfield2869 = getelementptr %Fields* %lhs_or_call2868, i32 0, i32 3
  %lhs_or_call2870 = load i32* %bfield2869
  ret i32 %lhs_or_call2870
}


define %Fields* @_Fields_sumab (%Fields* %_this1){
__fresh775:
  %bfield2848 = getelementptr %Fields* %_this1, i32 0, i32 3
  %afield2849 = getelementptr %Fields* %_this1, i32 0, i32 2
  %lhs_or_call2850 = load i32* %afield2849
  %bop2851 = add i32 1, %lhs_or_call2850
  store i32 %bop2851, i32* %bfield2848
  ret %Fields* %_this1
}


define %Fields* @_Fields_ctor (%Fields* %_this1){
__fresh774:
  %mem_ptr2843 = call i32* @oat_malloc ( i32 8 )
  %obj2844 = bitcast i32* %mem_ptr2843 to %Object* 
  %new_obj2845 = call %Object* @_Object_ctor ( %Object* %obj2844 )
  %_this1 = bitcast %Object* %new_obj2845 to %Fields 
  %_name2846 = getelementptr %Fields* %_this1, i32 0, i32 1
  store i8* @_const_str488, i8** %_name2846
  %this_vtable2847 = getelementptr %Fields* %_this1, i32 0, i32 0
  store %_Fields_vtable* @_Fields_vtable486, %_Fields_vtable** %this_vtable2847
  %afield2842 = getelementptr %Fields* %_this1, i32 0, i32 2
  store i32 12, i32* %afield2842
  ret %Fields* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh773:
  %_name2840 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2841 = load i8** %_name2840
  ret i8* %lhs_or_call2841
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh772:
  %_name2838 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str487, i8** %_name2838
  %this_vtable2839 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable485, %_Object_vtable** %this_vtable2839
  ret %Object* %_this1
}


