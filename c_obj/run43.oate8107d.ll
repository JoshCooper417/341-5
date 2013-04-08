%C = type { %_C_vtable*, i8*, i32 }
%_C_vtable = type { %_A_vtable*, i8* (%Object*)* }
%B = type { %_B_vtable*, i8*, i32 }
%_B_vtable = type { %_A_vtable*, i8* (%Object*)* }
%A = type { %_A_vtable*, i8*, i32 }
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
@_const_str270.str. = private unnamed_addr constant [ 2 x i8 ] c "C\00", align 4
@_const_str270 = alias bitcast([ 2 x i8 ]* @_const_str270.str. to i8*)@_const_str269.str. = private unnamed_addr constant [ 2 x i8 ] c "B\00", align 4
@_const_str269 = alias bitcast([ 2 x i8 ]* @_const_str269.str. to i8*)@_const_str268.str. = private unnamed_addr constant [ 2 x i8 ] c "A\00", align 4
@_const_str268 = alias bitcast([ 2 x i8 ]* @_const_str268.str. to i8*)@_const_str267.str. = private unnamed_addr constant [ 7 x i8 ] c "Object\00", align 4
@_const_str267 = alias bitcast([ 7 x i8 ]* @_const_str267.str. to i8*)@_C_vtable266 = private constant %_C_vtable {%_A_vtable* @_A_vtable264, i8* (%Object*)* @_Object_get_name}, align 4
@_B_vtable265 = private constant %_B_vtable {%_A_vtable* @_A_vtable264, i8* (%Object*)* @_Object_get_name}, align 4
@_A_vtable264 = private constant %_A_vtable {%_Object_vtable* @_Object_vtable263, i8* (%Object*)* @_Object_get_name}, align 4
@_Object_vtable263 = private constant %_Object_vtable {{  }* null, i8* (%Object*)* @_Object_get_name}, align 4
define void @oat_init (){
__fresh271:
  ret void
}


define i32 @program (i32 %argc1154, { i32, [ 0 x i8* ] }* %argv1152){
__fresh268:
  %argc_slot1155 = alloca i32
  store i32 %argc1154, i32* %argc_slot1155
  %argv_slot1153 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1152, { i32, [ 0 x i8* ] }** %argv_slot1153
  %array_ptr1156 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array1157 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1156 to { i32, [ 0 x %A* ] }* 
  %mem_ptr1158 = call i32* @oat_malloc ( i32 12 )
  %obj1159 = bitcast i32* %mem_ptr1158 to %A* 
  %new_obj1160 = call %A* @_A_ctor ( %A* %obj1159 )
  %index_ptr1161 = getelementptr { i32, [ 0 x %A* ] }* %array1157, i32 0, i32 1, i32 0
  store %A* %new_obj1160, %A** %index_ptr1161
  %mem_ptr1162 = call i32* @oat_malloc ( i32 12 )
  %obj1163 = bitcast i32* %mem_ptr1162 to %B* 
  %new_obj1164 = call %B* @_B_ctor ( %B* %obj1163 )
  %cast_op1165 = bitcast %B* %new_obj1164 to %A* 
  %index_ptr1166 = getelementptr { i32, [ 0 x %A* ] }* %array1157, i32 0, i32 1, i32 1
  store %A* %cast_op1165, %A** %index_ptr1166
  %mem_ptr1167 = call i32* @oat_malloc ( i32 12 )
  %obj1168 = bitcast i32* %mem_ptr1167 to %C* 
  %new_obj1169 = call %C* @_C_ctor ( %C* %obj1168 )
  %cast_op1170 = bitcast %C* %new_obj1169 to %A* 
  %index_ptr1171 = getelementptr { i32, [ 0 x %A* ] }* %array1157, i32 0, i32 1, i32 2
  store %A* %cast_op1170, %A** %index_ptr1171
  %vdecl_slot1172 = alloca { i32, [ 0 x %A* ] }*
  store { i32, [ 0 x %A* ] }* %array1157, { i32, [ 0 x %A* ] }** %vdecl_slot1172
  %vdecl_slot1173 = alloca i32
  store i32 0, i32* %vdecl_slot1173
  br label %__cond267

__cond267:
  %lhs_or_call1174 = load i32* %vdecl_slot1173
  %lhs_or_call1175 = load { i32, [ 0 x %A* ] }** %vdecl_slot1172
  %len_ptr1176 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1175, i32 0, i32 0
  %len1177 = load i32* %len_ptr1176
  %bop1178 = icmp slt i32 %lhs_or_call1174, %len1177
  br i1 %bop1178, label %__body266, label %__post265

__fresh269:
  br label %__body266

__body266:
  %lhs_or_call1179 = load { i32, [ 0 x %A* ] }** %vdecl_slot1172
  %lhs_or_call1180 = load i32* %vdecl_slot1173
  %bound_ptr1182 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1179, i32 0, i32 0
  %bound1183 = load i32* %bound_ptr1182
  call void @oat_array_bounds_check( i32 %bound1183, i32 %lhs_or_call1180 )
  %elt1181 = getelementptr { i32, [ 0 x %A* ] }* %lhs_or_call1179, i32 0, i32 1, i32 %lhs_or_call1180
  %lhs_or_call1184 = load %A** %elt1181
  %i1185 = getelementptr %A* %lhs_or_call1184, i32 0, i32 2
  %lhs_or_call1186 = load i32* %i1185
  call void @print_int( i32 %lhs_or_call1186 )
  %lhs_or_call1187 = load i32* %vdecl_slot1173
  %bop1188 = add i32 %lhs_or_call1187, 1
  store i32 %bop1188, i32* %vdecl_slot1173
  br label %__cond267

__fresh270:
  br label %__post265

__post265:
  ret i32 0
}


define %C* @_C_ctor (%C* %_this1){
__fresh264:
  %mem_ptr1147 = call i32* @oat_malloc ( i32 12 )
  %obj1148 = bitcast i32* %mem_ptr1147 to %A* 
  %new_obj1149 = call %A* @_A_ctor ( %A* %obj1148 )
  %_this1 = bitcast %A* %new_obj1149 to %C 
  %_name1150 = getelementptr %C* %_this1, i32 0, i32 1
  store i8* @_const_str270, i8** %_name1150
  %this_vtable1151 = getelementptr %C* %_this1, i32 0, i32 0
  store %_C_vtable* @_C_vtable266, %_C_vtable** %this_vtable1151
  %i1146 = getelementptr %C* %_this1, i32 0, i32 2
  store i32 2, i32* %i1146
  ret %C* %_this1
}


define %B* @_B_ctor (%B* %_this1){
__fresh263:
  %mem_ptr1141 = call i32* @oat_malloc ( i32 12 )
  %obj1142 = bitcast i32* %mem_ptr1141 to %A* 
  %new_obj1143 = call %A* @_A_ctor ( %A* %obj1142 )
  %_this1 = bitcast %A* %new_obj1143 to %B 
  %_name1144 = getelementptr %B* %_this1, i32 0, i32 1
  store i8* @_const_str269, i8** %_name1144
  %this_vtable1145 = getelementptr %B* %_this1, i32 0, i32 0
  store %_B_vtable* @_B_vtable265, %_B_vtable** %this_vtable1145
  %i1140 = getelementptr %B* %_this1, i32 0, i32 2
  store i32 1, i32* %i1140
  ret %B* %_this1
}


define %A* @_A_ctor (%A* %_this1){
__fresh262:
  %mem_ptr1135 = call i32* @oat_malloc ( i32 8 )
  %obj1136 = bitcast i32* %mem_ptr1135 to %Object* 
  %new_obj1137 = call %Object* @_Object_ctor ( %Object* %obj1136 )
  %_this1 = bitcast %Object* %new_obj1137 to %A 
  %_name1138 = getelementptr %A* %_this1, i32 0, i32 1
  store i8* @_const_str268, i8** %_name1138
  %this_vtable1139 = getelementptr %A* %_this1, i32 0, i32 0
  store %_A_vtable* @_A_vtable264, %_A_vtable** %this_vtable1139
  %i1134 = getelementptr %A* %_this1, i32 0, i32 2
  store i32 0, i32* %i1134
  ret %A* %_this1
}


define i8* @_Object_get_name (%Object* %_this1){
__fresh261:
  %_name1132 = getelementptr %Object* %_this1, i32 0, i32 1
  %lhs_or_call1133 = load i8** %_name1132
  ret i8* %lhs_or_call1133
}


define %Object* @_Object_ctor (%Object* %_this1){
__fresh260:
  %_name1130 = getelementptr %Object* %_this1, i32 0, i32 1
  store i8* @_const_str267, i8** %_name1130
  %this_vtable1131 = getelementptr %Object* %_this1, i32 0, i32 0
  store %_Object_vtable* @_Object_vtable263, %_Object_vtable** %this_vtable1131
  ret %Object* %_this1
}


