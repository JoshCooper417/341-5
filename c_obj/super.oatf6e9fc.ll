%C = type { %_C_vtable*, i8* }
%_C_vtable = type { %_B_vtable*, i8* (%Object*)*, i32 (%C*)* }
%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)*, i32 (%B*)* }
%A = type { %_A_vtable*, i8* }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, i32 (%A*)* }
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
@_const_str545.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str545 = alias bitcast([ 2 x i8 ]* @_const_str545.str. to i8*)@_const_str544.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str544 = alias bitcast([ 2 x i8 ]* @_const_str544.str. to i8*)@_const_str543.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str543 = alias bitcast([ 2 x i8 ]* @_const_str543.str. to i8*)@_const_str542.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str542 = alias bitcast([ 7 x i8 ]* @_const_str542.str. to i8*)@_C_vtable541 = private constant %_C_vtable {%_B_vtable* @_B_vtable540, i8* (%Object*)* @_Object_get_name, i32 (%C*)* @_C_six}, align 4
@_B_vtable540 = private constant %_B_vtable {%_A_vtable* @_A_vtable539, i8* (%Object*)* @_Object_get_name, i32 (%B*)* @_B_six}, align 4
@_A_vtable539 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable538, i8* (%Object*)* @_Object_get_name, i32 (%A*)* @_A_six}, align 4
@_Object_vtable538 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh936:
  ret void
}


define i32 @program (i32 %argc3248, { i32, [ 0 x i8* ] }* %argv3246){
__fresh935:
  %argc_slot3249 = alloca i32
  store i32 %argc3248, i32* %argc_slot3249
  %argv_slot3247 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3246, { i32, [ 0 x i8* ] }** %argv_slot3247
  %mem_ptr3250 = call i32* @oat_malloc ( i32 8 )
  %obj3251 = bitcast i32* %mem_ptr3250 to %C* 
  %new_obj3252 = call %C* @_C_ctor ( %C* %obj3251 )
  %vdecl_slot3253 = alloca %C*
  store %C* %new_obj3252, %C** %vdecl_slot3253
  %lhs_or_call3254 = load %C** %vdecl_slot3253
  %vtable_ptr3255 = getelementptr %C* %lhs_or_call3254, i32 0
  %vtable3256 = load %_C_vtable** %vtable_ptr3255
  %six3258 = getelementptr %_C_vtable* %vtable3256, i32 0, i32 2
  %six3257 = load i32 (%C*)** %six3258
  %cast_op3259 = bitcast %C %lhs_or_call3254 to %C* 
  %ret3260 = call i32 %six3257 ( %C* %cast_op3259 )
  ret i32 %ret3260
}


define i32 @_C_six (%C* %_this1){
__fresh934:
  %vtable_ptr3239 = getelementptr %C* %_this1, i32 0
  %vtable3240 = load %_C_vtable** %vtable_ptr3239
  %six3242 = getelementptr %_C_vtable* %vtable3240, i32 0, i32 2
  %six3241 = load i32 (%C*)** %six3242
  %cast_op3243 = bitcast %C %_this1 to %C* 
  %ret3244 = call i32 %six3241 ( %C* %cast_op3243 )
  %bop3245 = add i32 %ret3244, 3
  ret i32 %bop3245
}


define %C* @_C_ctor (%C* %_this1){
__fresh933:
  %mem_ptr3234 = call i32* @oat_malloc ( i32 8 )
  %obj3235 = bitcast i32* %mem_ptr3234 to %B* 
  %new_obj3236 = call %B* @_B_ctor ( %B* %obj3235 )
  %_this1 = bitcast %B* %new_obj3236 to %C 
  %_name3237 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str545, i8** %_name3237
  %this_vtable3238 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable541, %_C_vtable** %this_vtable3238
  ret %C* %_this1
}


define i32 @_B_six (%B* %_this1){
__fresh932:
  %vtable_ptr3227 = getelementptr %B* %_this1, i32 0
  %vtable3228 = load %_B_vtable** %vtable_ptr3227
  %six3230 = getelementptr %_B_vtable* %vtable3228, i32 0, i32 2
  %six3229 = load i32 (%B*)** %six3230
  %cast_op3231 = bitcast %B %_this1 to %B* 
  %ret3232 = call i32 %six3229 ( %B* %cast_op3231 )
  %bop3233 = add i32 %ret3232, 2
  ret i32 %bop3233
}


define %B* @_B_ctor (%B* %_this1){
__fresh931:
  %mem_ptr3222 = call i32* @oat_malloc ( i32 8 )
  %obj3223 = bitcast i32* %mem_ptr3222 to %A* 
  %new_obj3224 = call %A* @_A_ctor ( %A* %obj3223 )
  %_this1 = bitcast %A* %new_obj3224 to %B 
  %_name3225 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str544, i8** %_name3225
  %this_vtable3226 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable540, %_B_vtable** %this_vtable3226
  ret %B* %_this1
}


define i32 @_A_six (%A* %_this1){
__fresh930:
  ret i32 1
}


define %A* @_A_ctor (%A* %_this1){
__fresh929:
  %mem_ptr3217 = call i32* @oat_malloc ( i32 8 )
  %obj3218 = bitcast i32* %mem_ptr3217 to %Object* 
  %new_obj3219 = call %Object* @_Object_ctor ( %Object* %obj3218 )
  %_this1 = bitcast %Object* %new_obj3219 to %A 
  %_name3220 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str543, i8** %_name3220
  %this_vtable3221 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable539, %_A_vtable** %this_vtable3221
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh928:
  %_name3215 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call3216 = load i8** %_name3215
  ret i8* %lhs_or_call3216
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh927:
  %_name3213 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str542, i8** %_name3213
  %this_vtable3214 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable538, %_Object_vtable** %this_vtable3214
  ret %Object* %_this1
}


