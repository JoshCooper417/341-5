%Owl = type { %_Owl_vtable*, i8* }
%_Owl_vtable = type { %_Wl_vtable*, i8* (%Object*)*, i8* (%Owl*)*, i32 (%Wl*)*, i32 (%Owl*)*, i32 (%Owl*)* }
%Wl = type { %_Wl_vtable*, i8* }
%_Wl_vtable = type { %_Object_vtable*, i8* (%Object*)*, i8* (%Wl*)*, i32 (%Wl*)*, i32 (%Wl*)* }
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
@o483 = global %Owl* zeroinitializer, align 4		; initialized by @o483.init484
@_const_str482.str. = private unnamed_addr constant [ 6 x i8 ] c "hoot!\00", align 4
@_const_str482 = alias bitcast([ 6 x i8 ]* @_const_str482.str. to i8*)@_const_str481.str. = private unnamed_addr constant [ 4 x i8 ] c "Owl\00", align 4
@_const_str481 = alias bitcast([ 4 x i8 ]* @_const_str481.str. to i8*)@_const_str480.str. = private unnamed_addr constant [ 5 x i8 ] c "oot!\00", align 4
@_const_str480 = alias bitcast([ 5 x i8 ]* @_const_str480.str. to i8*)@_const_str479.str. = private unnamed_addr constant [ 3 x i8 ] c "Wl\00", align 4
@_const_str479 = alias bitcast([ 3 x i8 ]* @_const_str479.str. to i8*)@_const_str478.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str478 = alias bitcast([ 7 x i8 ]* @_const_str478.str. to i8*)@_Owl_vtable477 = private constant %_Owl_vtable {%_Wl_vtable* @_Wl_vtable476, i8* (%Object*)* @_Object_get_name, i8* (%Owl*)* @_Owl_noise, i32 (%Wl*)* @_Wl_parentmethod, i32 (%Owl*)* @_Owl_secondoverride, i32 (%Owl*)* @_Owl_childmethod}, align 4
@_Wl_vtable476 = private constant %_Wl_vtable {%_Object_vtable* @_Object_vtable475, i8* (%Object*)* @_Object_get_name, i8* (%Wl*)* @_Wl_noise, i32 (%Wl*)* @_Wl_parentmethod, i32 (%Wl*)* @_Wl_secondoverride}, align 4
@_Object_vtable475 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh771:
  call void @o483.init484(  )
  ret void
}


define i32 @program (i32 %argc2810, { i32, [ 0 x i8* ] }* %argv2808){
__fresh770:
  %argc_slot2811 = alloca i32
  store i32 %argc2810, i32* %argc_slot2811
  %argv_slot2809 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2808, { i32, [ 0 x i8* ] }** %argv_slot2809
  %lhs_or_call2812 = load %Owl** @o483
  %cast_op2813 = bitcast %Owl* %lhs_or_call2812 to %Wl* 
  %ret2814 = call i8* @getNoise ( %Wl* %cast_op2813 )
  call void @print_string( i8* %ret2814 )
  %lhs_or_call2815 = load %Owl** @o483
  %vtable_ptr2816 = getelementptr %Owl* %lhs_or_call2815, i32 0
  %vtable2817 = load %_Owl_vtable** %vtable_ptr2816
  %childmethod2819 = getelementptr %_Owl_vtable* %vtable2817, i32 0, i32 5
  %childmethod2818 = load i32 (%Owl*)** %childmethod2819
  %cast_op2820 = bitcast %Owl %lhs_or_call2815 to %Owl* 
  %ret2821 = call i32 %childmethod2818 ( %Owl* %cast_op2820 )
  %lhs_or_call2822 = load %Owl** @o483
  %vtable_ptr2823 = getelementptr %Owl* %lhs_or_call2822, i32 0
  %vtable2824 = load %_Owl_vtable** %vtable_ptr2823
  %parentmethod2826 = getelementptr %_Owl_vtable* %vtable2824, i32 0, i32 3
  %parentmethod2825 = load i32 (%Wl*)** %parentmethod2826
  %cast_op2827 = bitcast %Owl %lhs_or_call2822 to %Wl* 
  %ret2828 = call i32 %parentmethod2825 ( %Wl* %cast_op2827 )
  %bop2829 = add i32 %ret2821, %ret2828
  %lhs_or_call2830 = load %Owl** @o483
  %vtable_ptr2831 = getelementptr %Owl* %lhs_or_call2830, i32 0
  %vtable2832 = load %_Owl_vtable** %vtable_ptr2831
  %secondoverride2834 = getelementptr %_Owl_vtable* %vtable2832, i32 0, i32 4
  %secondoverride2833 = load i32 (%Owl*)** %secondoverride2834
  %cast_op2835 = bitcast %Owl %lhs_or_call2830 to %Owl* 
  %ret2836 = call i32 %secondoverride2833 ( %Owl* %cast_op2835 )
  %bop2837 = add i32 %bop2829, %ret2836
  ret i32 %bop2837
}


define void @o483.init484 (){
__fresh769:
  %mem_ptr2805 = call i32* @oat_malloc ( i32 8 )
  %obj2806 = bitcast i32* %mem_ptr2805 to %Owl* 
  %new_obj2807 = call %Owl* @_Owl_ctor ( %Owl* %obj2806 )
  store %Owl* %new_obj2807, %Owl** @o483
  ret void
}


define i8* @getNoise (%Wl* %thing2796){
__fresh768:
  %thing_slot2797 = alloca %Wl*
  store %Wl* %thing2796, %Wl** %thing_slot2797
  %lhs_or_call2798 = load %Wl** %thing_slot2797
  %vtable_ptr2799 = getelementptr %Wl* %lhs_or_call2798, i32 0
  %vtable2800 = load %_Wl_vtable** %vtable_ptr2799
  %noise2802 = getelementptr %_Wl_vtable* %vtable2800, i32 0, i32 2
  %noise2801 = load i8* (%Wl*)** %noise2802
  %cast_op2803 = bitcast %Wl %lhs_or_call2798 to %Wl* 
  %ret2804 = call i8* %noise2801 ( %Wl* %cast_op2803 )
  ret i8* %ret2804
}


define i32 @_Owl_secondoverride (%Owl* %_this1){
__fresh767:
  %vtable_ptr2789 = getelementptr %Owl* %_this1, i32 0
  %vtable2790 = load %_Owl_vtable** %vtable_ptr2789
  %secondoverride2792 = getelementptr %_Owl_vtable* %vtable2790, i32 0, i32 4
  %secondoverride2791 = load i32 (%Owl*)** %secondoverride2792
  %cast_op2793 = bitcast %Owl %_this1 to %Owl* 
  %ret2794 = call i32 %secondoverride2791 ( %Owl* %cast_op2793 )
  %bop2795 = add i32 %ret2794, 1
  ret i32 %bop2795
}


define i32 @_Owl_childmethod (%Owl* %_this1){
__fresh766:
  ret i32 3
}


define i8* @_Owl_noise (%Owl* %_this1){
__fresh765:
  ret i8* @_const_str482
}


define %Owl* @_Owl_ctor (%Owl* %_this1){
__fresh764:
  %mem_ptr2784 = call i32* @oat_malloc ( i32 8 )
  %obj2785 = bitcast i32* %mem_ptr2784 to %Wl* 
  %new_obj2786 = call %Wl* @_Wl_ctor ( %Wl* %obj2785 )
  %_this1 = bitcast %Wl* %new_obj2786 to %Owl 
  %_name2787 = getelementptr %Owl* %_this1, i32 0, i32 1
  store i8* @_const_str481, i8** %_name2787
  %this_vtable2788 = getelementptr %Owl* %_this1, i32 0, i32 0
  store %_Owl_vtable* @_Owl_vtable477, %_Owl_vtable** %this_vtable2788
  ret %Owl* %_this1
}


define i32 @_Wl_secondoverride (%Wl* %_this1){
__fresh763:
  %unop2783 = sub i32 0, 2
  ret i32 %unop2783
}


define i32 @_Wl_parentmethod (%Wl* %_this1){
__fresh762:
  ret i32 40
}


define i8* @_Wl_noise (%Wl* %_this1){
__fresh761:
  ret i8* @_const_str480
}


define %Wl* @_Wl_ctor (%Wl* %_this1){
__fresh760:
  %mem_ptr2778 = call i32* @oat_malloc ( i32 8 )
  %obj2779 = bitcast i32* %mem_ptr2778 to %Object* 
  %new_obj2780 = call %Object* @_Object_ctor ( %Object* %obj2779 )
  %_this1 = bitcast %Object* %new_obj2780 to %Wl 
  %_name2781 = getelementptr %Wl* %_this1, i32 0, i32 1
  store i8* @_const_str479, i8** %_name2781
  %this_vtable2782 = getelementptr %Wl* %_this1, i32 0, i32 0
  store %_Wl_vtable* @_Wl_vtable476, %_Wl_vtable** %this_vtable2782
  ret %Wl* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh759:
  %_name2776 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2777 = load i8** %_name2776
  ret i8* %lhs_or_call2777
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh758:
  %_name2774 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str478, i8** %_name2774
  %this_vtable2775 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable475, %_Object_vtable** %this_vtable2775
  ret %Object* %_this1
}


