#version 330 core

uniform mat4 MVP;

layout(location=1) in vec3 vert_coords;
layout(location=2) in vec2 tex_coords;

out vec3 vert_out_color;
out vec2 vert_out_tex;

void main()
{
	gl_Position = MVP * vec4(vert_coords, 1.0f);
	vert_out_color = vec3(1.0f, 1.0f, 1.0f);
	vert_out_tex = tex_coords;
}