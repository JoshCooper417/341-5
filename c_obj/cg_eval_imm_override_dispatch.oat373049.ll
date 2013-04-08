%B = type { %_B_vtable*, i8* }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)*, i32 (%B*, i32)* }
%A = type { %_A_vtable*, i8* }
%_A_vtable = type { %_Object_vtable*, i8* (%Object*)*, i32 (%A*, i32)* }
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
@a410 = global %A* zeroinitializer, align 4		; initialized by @a410.init411
@_const_str409.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str409 = alias bitcast([ 2 x i8 ]* @_const_str409.str. to i8*)@_const_str408.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str408 = alias bitcast([ 2 x i8 ]* @_const_str408.str. to i8*)@_const_str407.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str407 = alias bitcast([ 7 x i8 ]* @_const_str407.str. to i8*)@_B_vtable406 = private constant %_B_vtable {%_A_vtable* @_A_vtable405, i8* (%Object*)* @_Object_get_name, i32 (%B*, i32)* @_B_over}, align 4
@_A_vtable405 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable404, i8* (%Object*)* @_Object_get_name, i32 (%A*, i32)* @_A_over}, align 4
@_Object_vtable404 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh509:
  call void @a410.init411(  )
  ret void
}


define i32 @program (i32 %argc2254, { i32, [ 0 x i8* ] }* %argv2252){
__fresh508:
  %argc_slot2255 = alloca i32
  store i32 %argc2254, i32* %argc_slot2255
  %argv_slot2253 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2252, { i32, [ 0 x i8* ] }** %argv_slot2253
  %lhs_or_call2256 = load %A** @a410
  %vtable_ptr2257 = getelementptr %A* %lhs_or_call2256, i32 0
  %vtable2258 = load %_A_vtable** %vtable_ptr2257
  %over2260 = getelementptr %_A_vtable* %vtable2258, i32 0, i32 2
  %over2259 = load i32 (%A*, i32)** %over2260
  %cast_op2261 = bitcast %A %lhs_or_call2256 to %A* 
  %ret2262 = call i32 %over2259 ( %A* %cast_op2261, i32 3 )
  ret i32 %ret2262
}


define void @a410.init411 (){
__fresh507:
  %mem_ptr2248 = call i32* @oat_malloc ( i32 8 )
  %obj2249 = bitcast i32* %mem_ptr2248 to %B* 
  %new_obj2250 = call %B* @_B_ctor ( %B* %obj2249 )
  %cast_op2251 = bitcast %B* %new_obj2250 to %A* 
  store %A* %cast_op2251, %A** @a410
  ret void
}


define i32 @_B_over (%B* %_this1, i32 %x2244){
__fresh506:
  %x_slot2245 = alloca i32
  store i32 %x2244, i32* %x_slot2245
  %lhs_or_call2246 = load i32* %x_slot2245
  %bop2247 = add i32 %lhs_or_call2246, 2
  ret i32 %bop2247
}


define %B* @_B_ctor (%B* %_this1){
__fresh505:
  %mem_ptr2239 = call i32* @oat_malloc ( i32 8 )
  %obj2240 = bitcast i32* %mem_ptr2239 to %A* 
  %new_obj2241 = call %A* @_A_ctor ( %A* %obj2240 )
  %_this1 = bitcast %A* %new_obj2241 to %B 
  %_name2242 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str409, i8** %_name2242
  %this_vtable2243 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable406, %_B_vtable** %this_vtable2243
  ret %B* %_this1
}


define i32 @_A_over (%A* %_this1, i32 %x2235){
__fresh504:
  %x_slot2236 = alloca i32
  store i32 %x2235, i32* %x_slot2236
  %lhs_or_call2237 = load i32* %x_slot2236
  %bop2238 = add i32 %lhs_or_call2237, 1
  ret i32 %bop2238
}


define %A* @_A_ctor (%A* %_this1){
__fresh503:
  %mem_ptr2230 = call i32* @oat_malloc ( i32 8 )
  %obj2231 = bitcast i32* %mem_ptr2230 to %Object* 
  %new_obj2232 = call %Object* @_Object_ctor ( %Object* %obj2231 )
  %_this1 = bitcast %Object* %new_obj2232 to %A 
  %_name2233 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str408, i8** %_name2233
  %this_vtable2234 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable405, %_A_vtable** %this_vtable2234
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh502:
  %_name2228 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call2229 = load i8** %_name2228
  ret i8* %lhs_or_call2229
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh501:
  %_name2226 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str407, i8** %_name2226
  %this_vtable2227 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable404, %_Object_vtable** %this_vtable2227
  ret %Object* %_this1
}


