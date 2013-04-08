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


define i32 @program (i32 %argc263, { i32, [ 0 x i8* ] }* %argv261){
__fresh68:
  %argc_slot264 = alloca i32
  store i32 %argc263, i32* %argc_slot264
  %argv_slot262 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv261, { i32, [ 0 x i8* ] }** %argv_slot262
  %mem_ptr265 = call i32* @oat_malloc ( i32 12 )
  %obj266 = bitcast i32* %mem_ptr265 to %A* 
  %new_obj267 = call %A* @_A_ctor ( %A* %obj266 )
  %vdecl_slot268 = alloca %A*
  store %A* %new_obj267, %A** %vdecl_slot268
  %lhs_or_call269 = load %A** %vdecl_slot268
  %arr270 = getelementptr %A* %lhs_or_call269, i32 0, i32 2
  %lhs_or_call271 = load { i32, [ 0 x i32 ] }** %arr270
  %ret272 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %lhs_or_call271 )
  call void @print_string( i8* %ret272 )
  ret i32 0
}


define %A* @_A_ctor (%A* %_this1){
__fresh65:
  %mem_ptr240 = call i32* @oat_malloc ( i32 8 )
  %obj241 = bitcast i32* %mem_ptr240 to %Object* 
  %new_obj242 = call %Object* @_Object_ctor ( %Object* %obj241 )
  %_this1 = bitcast %Object* %new_obj242 to %A 
  %_name243 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str55, i8** %_name243
  %arr244 = getelementptr %A* %_this1, i32 0, i32 2
  %array_ptr245 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array246 = bitcast { i32, [ 0 x i32 ] }* %array_ptr245 to { i32, [ 0 x i32 ] }* 
  %_tmp52247 = alloca i32
  store i32 10, i32* %_tmp52247
  %_tmp53248 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array246, { i32, [ 0 x i32 ] }** %_tmp53248
  %vdecl_slot249 = alloca i32
  store i32 0, i32* %vdecl_slot249
  br label %__cond64

__cond64:
  %lhs_or_call250 = load i32* %vdecl_slot249
  %lhs_or_call251 = load i32* %_tmp52247
  %bop252 = icmp slt i32 %lhs_or_call250, %lhs_or_call251
  br i1 %bop252, label %__body63, label %__post62

__fresh66:
  br label %__body63

__body63:
  %lhs_or_call253 = load { i32, [ 0 x i32 ] }** %_tmp53248
  %lhs_or_call254 = load i32* %vdecl_slot249
  %bound_ptr256 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call253, i32 0, i32 0
  %bound257 = load i32* %bound_ptr256
  call void @oat_array_bounds_check( i32 %bound257, i32 %lhs_or_call254 )
  %elt255 = getelementptr { i32, [ 0 x i32 ] }* %lhs_or_call253, i32 0, i32 1, i32 %lhs_or_call254
  store i32 110, i32* %elt255
  %lhs_or_call258 = load i32* %vdecl_slot249
  %bop259 = add i32 %lhs_or_call258, 1
  store i32 %bop259, i32* %vdecl_slot249
  br label %__cond64

__fresh67:
  br label %__post62

__post62:
  store { i32, [ 0 x i32 ] }* %array246, { i32, [ 0 x i32 ] }** %arr244
  %this_vtable260 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable53, %_A_vtable** %this_vtable260
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh61:
  %_name238 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call239 = load i8** %_name238
  ret i8* %lhs_or_call239
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh60:
  %_name236 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str54, i8** %_name236
  %this_vtable237 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable52, %_Object_vtable** %this_vtable237
  ret %Object* %_this1
}


