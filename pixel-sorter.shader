shader_type canvas_item;

uniform float size=10.0;

void fragment(  ) {
    float positionX = (UV.x /30.0) ;
	float positionY = ( UV.y / 30.0 );
    COLOR = texture(TEXTURE, UV);
	if (UV.x<TIME*0.1){
		vec2 test=vec2(TIME/10.0,UV.y);
		COLOR = texture(TEXTURE, test );
			}
}
