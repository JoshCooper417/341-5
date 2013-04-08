%A = type { %_A_vtable*, i8*, { i32, [ 0 x i32 ] }* }
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
@_const_str55.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str55 = alias bitcast([ 2 x i8 ]* @_const_str55.str. to i8*)@_const_str54.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str54 = alias bitcast([ 7 x i8 ]* @_const_str54.str. to i8*)@_A_vtable53 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable52, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable52 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh69:
  ret void
}


define i32 @program (i32 %argc274, { i32, [ 0 x i8* ] }* %argv272){
__fresh68:
  %argc_slot275 = alloca i32
  store i32 %argc274, i32* %argc_slot275
  %argv_slot273 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv272, { i32, [ 0 x i8* ] }** %argv_slot273
  %mem_ptr276 = call i32* @oat_malloc ( i32 12 )
  %obj277 = bitcast i32* %mem_ptr276 to %A* 
  %new_obj278 = call %A* @_A_ctor ( %A* %obj277 )
  %vdecl_slot279 = alloca %A*
  store %A* %new_obj278, %A** %vdecl_slot279
  %lhs_or_call280 = load %A** %vdecl_slot279
  %arr281 = getelementptr %A* %lhs_or_call280, i32 0, i32 2
  %lhs_or_call282 = load { i32, [ 0 x i32 ] }** %arr281
  %ret283 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %lhs_or_call282 )
  call void @print_string( i8* %ret283 )
  ret i32 0
}


define %A* @_A_ctor (%A* %_this1){
__fresh65:
  %cast_op250 = bitcast %A* %_this1 to %Object* 
  %mem_ptr251 = call i32* @oat_malloc ( i32 12 )
  %obj252 = bitcast i32* %mem_ptr251 to %A* 
  %new_obj253 = call %Object* @_Object_ctor ( %A* %obj252, %Object* %cast_op250 )
  %_this1 = bitcast %Object* %new_obj253 to %A 
  %_name254 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str55, i8** %_name254
  %arr255 = getelementptr %A* %_this1, i32 0, i32 2
  %array_ptr256 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array257 = bitcast { i32, [ 0 x i32 ] }* %array_ptr256 to { i32, [ 0 x i32 ] }* 
  %_tmp52258 = alloca i32
  store i32 10, i32* %_tmp52258
  %_tmp53259 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array257, { i32, [ 0 x i32 ] }** %_tmp53259
  %vdecl_slot260 = alloca i32
  store i32 0, i32* %vdecl_slot260
  br label %__cond64

__cond64:
  %lhs_or_call261 = load i32* %vdecl_slot260
  %lhs_or_call262 = load i32* %_tmp52258
  %bop263 = icmp slt i32 %lhs_or_call261, %lhs_or_call262
  br i1 %bop263, label %__body63, label %__post62

__fresh66:
  br label %__body63

__body63:
  %lhs_or_call264 = load { i32, [ 0 x i32 ] }** %_tmp53259
  %lhs_or_call265 = load i32* %vdecl_slot260
  %bound_ptr267 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call264, i32 0, i32 0
  %bound268 = load i32* %bound_ptr267
  call void @oat_array_bounds_check( i32 %bound268, i32 %lhs_or_call265 )
  %elt266 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call264, i32 0, i32 1, i32 %lhs_or_call265
  store i32 110, i32* %elt266
  %lhs_or_call269 = load i32* %vdecl_slot260
  %bop270 = add i32 %lhs_or_call269, 1
  store i32 %bop270, i32* %vdecl_slot260
  br label %__cond64

__fresh67:
  br label %__post62

__post62:
  store { i32, [ 0 x i32 ] }* %array257, { i32, [ 0 x i32 ] }** %arr255
  %this_vtable271 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable53, %_A_vtable** %this_vtable271
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh61:
  %_name248 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call249 = load i8** %_name248
  ret i8* %lhs_or_call249
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh60:
  %_name246 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str54, i8** %_name246
  %this_vtable247 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable52, %_Object_vtable** %this_vtable247
  ret %Object* %_this1
}


