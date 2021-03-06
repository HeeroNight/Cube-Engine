#version 300 es

#ifdef GL_ES
// Set default precision to medium
precision mediump int;
precision mediump float;
#endif

uniform mat4 g_MVP_matrix;

const int MAX_BONES = 100;
uniform mat4 g_MV_matrix;
uniform mat4 g_light_MVP_matrix;
uniform mat4 g_model_matrix;
uniform mat4 g_projection_matrix;
uniform mat4 g_bones[MAX_BONES];
uniform int g_has_animation;

in vec3 a_position;
in vec2 a_texcoord;
in vec3 a_normal_line;
in vec4 a_bone_ID;
in vec4 a_bone_weight;

out vec3 v_texcoord;
out vec3 v_world_position;
out vec4 v_light_space_postion;

void main()
{
	

	v_world_position = (g_model_matrix * vec4(a_position,1.0)).xyz;
	
	vec4 MVP_Pos = g_MVP_matrix * vec4(a_position, 1.0);
	gl_Position = MVP_Pos.xyww;

	v_texcoord = a_position;
}
//! [0]
