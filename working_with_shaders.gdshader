shader_type canvas_item;
//render_mode skip_vertex_transform;
 // you can assign a default value to uniforms
uniform float time;
void vertex() {
	float a=TIME*10.0;
	
	//VERTEX+=vec2(0.0,cos(TIME)*10.0).xx;
	//VERTEX.x+=tan(sin(TIME)*40.0/cos(TIME)*40.0);
	//VERTEX.y+=cosh(TIME)*20.0/tan(TIME)*10.0;
	VERTEX.x+=sin(TIME+a);
	VERTEX.y+=sin(TIME+a);
}

void fragment() {
	COLOR.b=sin(10.0*TIME);
	COLOR.g=sin(10.0*TIME);
	//COLOR.r+=cos(23.2*TIME);
	// Called for every pixel the material is visible on.
}
void light() {
	float cNdotL = max(0.0, dot(NORMAL, LIGHT_DIRECTION));
	LIGHT = vec4(LIGHT_COLOR.rgb * COLOR.rgb * LIGHT_ENERGY * cNdotL, LIGHT_COLOR.a);
	// Called for every pixel for every light affecting the material.
	// Uncomment to replace the default light processing function with this one.
	}
