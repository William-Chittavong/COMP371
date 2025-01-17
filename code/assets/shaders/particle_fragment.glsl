#version 330 core

// Interpolated values from the vertex shaders
in vec3 normal;
in vec4 v_color;
in vec2 UV;

// Ouput data
out vec4 color;

// Values that stay constant for the whole particle.
uniform sampler2D textureSampler;
uniform float opacity;


void main()
{
	vec4 textureColor = texture( textureSampler, UV );

    color = textureColor;
}