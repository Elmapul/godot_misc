shader_type canvas_item;

//since godot cant print to debug shaders, i'm doing an shader to debug shaders

//uniform float userNumber;
void fragment(){
	int userNumber=4;
	
	float HoffSet=0.0;
	
	vec4 StrokeC = vec4(0.0, 1.0, 2.0,1.0); //StrokeCollor
	
	if(UV.x<1.0){
		if(UV.y<0.1){
		COLOR = vec4(1.0,0.0, 0.5, 1.0);
		//replace with IF because GLES2 cant support switch??
		switch (userNumber){
		case 0: 
			if (UV.x>HoffSet){if (UV.x<HoffSet+0.1){
				if (UV.y<0.02){if (UV.y>0.01){if ( UV.x<HoffSet+0.07){if (UV.x>HoffSet+0.04){COLOR = StrokeC;}}}} //uper leg
				if (UV.y<0.09){if ( UV.y>.08){if ( UV.x<HoffSet+0.07){if (UV.x>HoffSet+0.04 ){COLOR = StrokeC;}}}} //botton leg
				if (UV.y<0.08){if ( UV.y>.02){if (UV.x<HoffSet+0.04){if (UV.x>HoffSet+0.03){COLOR = StrokeC;}}}} //left leg
				if (UV.y<0.08 ){if (UV.y>.02){if (UV.x<HoffSet+0.08 ){if (UV.x>HoffSet+0.07){COLOR = StrokeC;}}}} //right leg
				return ;
				}
		case 1: 
			if (UV.x>HoffSet){if (UV.x<HoffSet+0.1){
				if (UV.y<0.02){if (UV.y>0.01){if ( UV.x<HoffSet+0.06){if (UV.x>HoffSet+0.03){COLOR = StrokeC;}}}} //uper leg
				if (UV.y<0.09){if ( UV.y>.08){if ( UV.x<HoffSet+0.08){if (UV.x>HoffSet+0.03 ){COLOR = StrokeC;}}}} //botton leg
				
				if (UV.y<0.08 ){if (UV.y>.02){if (UV.x<HoffSet+0.06 ){if (UV.x>HoffSet+0.05){COLOR = StrokeC;}}}} //right leg
				}
		return ;
		case 2: 
			if (UV.x>HoffSet){if (UV.x<HoffSet+0.1){
				if (UV.y<0.02){if (UV.y>0.01){if ( UV.x<HoffSet+0.08){if (UV.x>HoffSet+0.03){COLOR = StrokeC;}}}} //uper leg
				if (UV.y<0.09){if ( UV.y>.08){if ( UV.x<HoffSet+0.08){if (UV.x>HoffSet+0.03 ){COLOR = StrokeC;}}}} //botton leg
				
				if (UV.y<0.06){if ( UV.y>.05){if ( UV.x<HoffSet+0.08){if (UV.x>HoffSet+0.03 ){COLOR = StrokeC;}}}} //mid leg
				
				if (UV.y<0.05 ){if (UV.y>.02){if (UV.x<HoffSet+0.08 ){if (UV.x>HoffSet+0.07){COLOR = StrokeC;}}}} //right leg
				if (UV.y<0.08 ){if (UV.y>.05){if (UV.x<HoffSet+0.04 ){if (UV.x>HoffSet+0.03){COLOR = StrokeC;}}}} //left leg
				}
		return ;
		case 3: 
			if (UV.x>HoffSet){if (UV.x<HoffSet+0.1){
				if (UV.y<0.02){if (UV.y>0.01){if ( UV.x<HoffSet+0.08){if (UV.x>HoffSet+0.03){COLOR = StrokeC;}}}} //uper leg
				if (UV.y<0.09){if ( UV.y>.08){if ( UV.x<HoffSet+0.08){if (UV.x>HoffSet+0.03 ){COLOR = StrokeC;}}}} //botton leg
				
				if (UV.y<0.06){if ( UV.y>.05){if ( UV.x<HoffSet+0.08){if (UV.x>HoffSet+0.03 ){COLOR = StrokeC;}}}} //mid leg
				
				if (UV.y<0.08 ){if (UV.y>.02){if (UV.x<HoffSet+0.08 ){if (UV.x>HoffSet+0.07){COLOR = StrokeC;}}}} //right leg				
				}
		return ;
			case 4: 
			if (UV.x>HoffSet){if (UV.x<HoffSet+0.1){
				if (UV.y<0.06){if ( UV.y>.05){if ( UV.x<HoffSet+0.08){if (UV.x>HoffSet+0.03 ){COLOR = StrokeC;}}}} //mid leg
				if (UV.y<0.08 ){if (UV.y>.02){if (UV.x<HoffSet+0.08 ){if (UV.x>HoffSet+0.07){COLOR = StrokeC;}}}} //right leg
				if (UV.y<0.05 ){if (UV.y>.02){if (UV.x<HoffSet+0.04 ){if (UV.x>HoffSet+0.03){COLOR = StrokeC;}}}} //left leg
				}
		return ;
		case 5: 
			if (UV.x>HoffSet){if (UV.x<HoffSet+0.1){
				if (UV.y<0.02){if (UV.y>0.01){if ( UV.x<HoffSet+0.08){if (UV.x>HoffSet+0.03){COLOR = StrokeC;}}}} //uper leg
				if (UV.y<0.09){if ( UV.y>.08){if ( UV.x<HoffSet+0.08){if (UV.x>HoffSet+0.03 ){COLOR = StrokeC;}}}} //botton leg
				
				if (UV.y<0.06){if ( UV.y>.05){if ( UV.x<HoffSet+0.08){if (UV.x>HoffSet+0.03 ){COLOR = StrokeC;}}}} //mid leg
				
				if (UV.y<0.05 ){if (UV.y>.02){if (UV.x<HoffSet+0.04 ){if (UV.x>HoffSet+0.03){COLOR = StrokeC;}}}} //left leg
				if (UV.y<0.08 ){if (UV.y>.05){if (UV.x<HoffSet+0.08 ){if (UV.x>HoffSet+0.07){COLOR = StrokeC;}}}} //right leg
				}
		return ;
				case 6: 
			if (UV.x>HoffSet){if (UV.x<HoffSet+0.1){
				if (UV.y<0.02){if (UV.y>0.01){if ( UV.x<HoffSet+0.08){if (UV.x>HoffSet+0.03){COLOR = StrokeC;}}}} //uper leg
				if (UV.y<0.09){if ( UV.y>.08){if ( UV.x<HoffSet+0.08){if (UV.x>HoffSet+0.03 ){COLOR = StrokeC;}}}} //botton leg
				
				if (UV.y<0.06){if ( UV.y>.05){if ( UV.x<HoffSet+0.08){if (UV.x>HoffSet+0.03 ){COLOR = StrokeC;}}}} //mid leg
				
				if (UV.y<0.08 ){if (UV.y>.02){if (UV.x<HoffSet+0.08 ){if (UV.x>HoffSet+0.07){COLOR = StrokeC;}}}} //right leg
				if (UV.y<0.08 ){if (UV.y>.05){if (UV.x<HoffSet+0.04 ){if (UV.x>HoffSet+0.03){COLOR = StrokeC;}}}} //left leg
				}
		return ;
		case 7: 
			if (UV.x>HoffSet){if (UV.x<HoffSet+0.1){
				if (UV.y<0.02){if (UV.y>0.01){if ( UV.x<HoffSet+0.06){if (UV.x>HoffSet+0.03){COLOR = StrokeC;}}}} //uper leg
				if (UV.y<0.05){if ( UV.y>.04){if ( UV.x<HoffSet+0.08){if (UV.x>HoffSet+0.03 ){COLOR = StrokeC;}}}} //center leg
				
				if (UV.y<0.08 ){if (UV.y>.02){if (UV.x<HoffSet+0.06 ){if (UV.x>HoffSet+0.05){COLOR = StrokeC;}}}} //mid leg
				}
		return ;
						case 8: 
			if (UV.x>HoffSet){if (UV.x<HoffSet+0.1){
				if (UV.y<0.02){if (UV.y>0.01){if ( UV.x<HoffSet+0.08){if (UV.x>HoffSet+0.03){COLOR = StrokeC;}}}} //uper leg
				if (UV.y<0.09){if ( UV.y>.08){if ( UV.x<HoffSet+0.08){if (UV.x>HoffSet+0.03 ){COLOR = StrokeC;}}}} //botton leg
				
				if (UV.y<0.06){if ( UV.y>.05){if ( UV.x<HoffSet+0.08){if (UV.x>HoffSet+0.03 ){COLOR = StrokeC;}}}} //mid leg
				
				if (UV.y<0.08 ){if (UV.y>.02){if (UV.x<HoffSet+0.08 ){if (UV.x>HoffSet+0.07){COLOR = StrokeC;}}}} //right leg
				if (UV.y<0.08 ){if (UV.y>.02){if (UV.x<HoffSet+0.04 ){if (UV.x>HoffSet+0.03){COLOR = StrokeC;}}}} //left leg
				}
		return ;
				case 9: 
			if (UV.x>HoffSet){if (UV.x<HoffSet+0.1){
				if (UV.y<0.02){if (UV.y>0.01){if ( UV.x<HoffSet+0.08){if (UV.x>HoffSet+0.03){COLOR = StrokeC;}}}} //uper leg
				if (UV.y<0.09){if ( UV.y>.08){if ( UV.x<HoffSet+0.08){if (UV.x>HoffSet+0.03 ){COLOR = StrokeC;}}}} //botton leg
				
				if (UV.y<0.06){if ( UV.y>.05){if ( UV.x<HoffSet+0.08){if (UV.x>HoffSet+0.03 ){COLOR = StrokeC;}}}} //mid leg
				
				if (UV.y<0.08 ){if (UV.y>.02){if (UV.x<HoffSet+0.08 ){if (UV.x>HoffSet+0.07){COLOR = StrokeC;}}}} //right leg
				if (UV.y<0.06 ){if (UV.y>.02){if (UV.x<HoffSet+0.04 ){if (UV.x>HoffSet+0.03){COLOR = StrokeC;}}}} //left leg
				}
		return ;
		}}
		
		
		}
	}

}


void vertex() {
  //VERTEX += vec2(10.0, 0.0);
}
