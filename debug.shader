shader_type canvas_item;

//since godot cant print to debug shaders, i'm doing an shader to debug shaders
vec4 print(int number, vec2 uv, vec4 color){
		int userNumber=number;
	
	float HoffSet=0.0;
	
	vec4 StrokeC = vec4(0.0, 1.0, 2.0,1.0); //StrokeCollor
	vec4 bgColor = vec4(1.0, 0.0, 0.0,1.0); //backGround Collor

	if(uv.x<1.0){
		if(uv.y<0.1){
		color = bgColor;
		//replace with IF because GLES2 cant support switch??
		
		switch (userNumber){
		case 0: 
			if (uv.x>HoffSet){if (uv.x<HoffSet+0.1){
				if (uv.y<0.02){if (uv.y>0.01){if ( uv.x<HoffSet+0.07){if (uv.x>HoffSet+0.04){color = StrokeC;}}}} //uper leg
				if (uv.y<0.09){if ( uv.y>.08){if ( uv.x<HoffSet+0.07){if (uv.x>HoffSet+0.04 ){color = StrokeC;}}}} //botton leg
				if (uv.y<0.08){if ( uv.y>.02){if (uv.x<HoffSet+0.04){if (uv.x>HoffSet+0.03){color = StrokeC;}}}} //left leg
				if (uv.y<0.08 ){if (uv.y>.02){if (uv.x<HoffSet+0.08 ){if (uv.x>HoffSet+0.07){color = StrokeC;}}}} //right leg
				return color;
				}

		case 1: 
			if (uv.x>HoffSet){if (uv.x<HoffSet+0.1){
				if (uv.y<0.02){if (uv.y>0.01){if ( uv.x<HoffSet+0.06){if (uv.x>HoffSet+0.03){color = StrokeC;}}}} //uper leg
				if (uv.y<0.09){if ( uv.y>.08){if ( uv.x<HoffSet+0.08){if (uv.x>HoffSet+0.03 ){color = StrokeC;}}}} //botton leg
				
				if (uv.y<0.08 ){if (uv.y>.02){if (uv.x<HoffSet+0.06 ){if (uv.x>HoffSet+0.05){color = StrokeC;}}}} //right leg
				}
		return color;}
		
				case 2: 
			if (uv.x>HoffSet){if (uv.x<HoffSet+0.1){
				if (uv.y<0.02){if (uv.y>0.01){if ( uv.x<HoffSet+0.08){if (uv.x>HoffSet+0.03){color = StrokeC;}}}} //uper leg
				if (uv.y<0.09){if ( uv.y>.08){if ( uv.x<HoffSet+0.08){if (uv.x>HoffSet+0.03 ){color = StrokeC;}}}} //botton leg
				
				if (uv.y<0.06){if ( uv.y>.05){if ( uv.x<HoffSet+0.08){if (uv.x>HoffSet+0.03 ){color = StrokeC;}}}} //mid leg
				
				if (uv.y<0.05 ){if (uv.y>.02){if (uv.x<HoffSet+0.08 ){if (uv.x>HoffSet+0.07){color = StrokeC;}}}} //right leg
				if (uv.y<0.08 ){if (uv.y>.05){if (uv.x<HoffSet+0.04 ){if (uv.x>HoffSet+0.03){color = StrokeC;}}}} //left leg
				}
		return color;
				
				}
						case 3: 
			if (uv.x>HoffSet){if (uv.x<HoffSet+0.1){
				if (uv.y<0.02){if (uv.y>0.01){if ( uv.x<HoffSet+0.08){if (uv.x>HoffSet+0.03){color = StrokeC;}}}} //uper leg
				if (uv.y<0.09){if ( uv.y>.08){if ( uv.x<HoffSet+0.08){if (uv.x>HoffSet+0.03 ){color = StrokeC;}}}} //botton leg
				
				if (uv.y<0.06){if ( uv.y>.05){if ( uv.x<HoffSet+0.08){if (uv.x>HoffSet+0.03 ){color = StrokeC;}}}} //mid leg
				
				if (uv.y<0.08 ){if (uv.y>.02){if (uv.x<HoffSet+0.08 ){if (uv.x>HoffSet+0.07){color = StrokeC;}}}} //right leg				
				}
		return color ;}
			case 4: 
			if (uv.x>HoffSet){if (uv.x<HoffSet+0.1){
				if (uv.y<0.06){if ( uv.y>.05){if ( uv.x<HoffSet+0.08){if (uv.x>HoffSet+0.03 ){color = StrokeC;}}}} //mid leg
				if (uv.y<0.08 ){if (uv.y>.02){if (uv.x<HoffSet+0.08 ){if (uv.x>HoffSet+0.07){color = StrokeC;}}}} //right leg
				if (uv.y<0.05 ){if (uv.y>.02){if (uv.x<HoffSet+0.04 ){if (uv.x>HoffSet+0.03){color = StrokeC;}}}} //left leg
				}
		return color;}
		case 5: 
			if (uv.x>HoffSet){if (uv.x<HoffSet+0.1){
				if (uv.y<0.02){if (uv.y>0.01){if ( uv.x<HoffSet+0.08){if (uv.x>HoffSet+0.03){color = StrokeC;}}}} //uper leg
				if (uv.y<0.09){if ( uv.y>.08){if ( uv.x<HoffSet+0.08){if (uv.x>HoffSet+0.03 ){color = StrokeC;}}}} //botton leg
				
				if (uv.y<0.06){if ( uv.y>.05){if ( uv.x<HoffSet+0.08){if (uv.x>HoffSet+0.03 ){color = StrokeC;}}}} //mid leg
				
				if (uv.y<0.05 ){if (uv.y>.02){if (uv.x<HoffSet+0.04 ){if (uv.x>HoffSet+0.03){color = StrokeC;}}}} //left leg
				if (uv.y<0.08 ){if (uv.y>.05){if (uv.x<HoffSet+0.08 ){if (uv.x>HoffSet+0.07){color = StrokeC;}}}} //right leg
				}
		return color;}
						case 6: 
			if (uv.x>HoffSet){if (uv.x<HoffSet+0.1){
				if (uv.y<0.02){if (uv.y>0.01){if ( uv.x<HoffSet+0.08){if (uv.x>HoffSet+0.03){color = StrokeC;}}}} //uper leg
				if (uv.y<0.09){if ( uv.y>.08){if ( uv.x<HoffSet+0.08){if (uv.x>HoffSet+0.03 ){color = StrokeC;}}}} //botton leg
				
				if (uv.y<0.06){if ( uv.y>.05){if ( uv.x<HoffSet+0.08){if (uv.x>HoffSet+0.03 ){color = StrokeC;}}}} //mid leg
				
				if (uv.y<0.08 ){if (uv.y>.02){if (uv.x<HoffSet+0.08 ){if (uv.x>HoffSet+0.07){color = StrokeC;}}}} //right leg
				if (uv.y<0.08 ){if (uv.y>.05){if (uv.x<HoffSet+0.04 ){if (uv.x>HoffSet+0.03){color = StrokeC;}}}} //left leg
				}
		return color;}
				case 7: 
			if (uv.x>HoffSet){if (uv.x<HoffSet+0.1){
				if (uv.y<0.02){if (uv.y>0.01){if ( uv.x<HoffSet+0.06){if (uv.x>HoffSet+0.03){color = StrokeC;}}}} //uper leg
				if (uv.y<0.05){if ( uv.y>.04){if ( uv.x<HoffSet+0.08){if (uv.x>HoffSet+0.03 ){color = StrokeC;}}}} //center leg
				
				if (uv.y<0.08 ){if (uv.y>.02){if (uv.x<HoffSet+0.06 ){if (uv.x>HoffSet+0.05){color = StrokeC;}}}} //mid leg
				}
		return color;}
								case 8: 
			if (uv.x>HoffSet){if (uv.x<HoffSet+0.1){
				if (uv.y<0.02){if (uv.y>0.01){if ( uv.x<HoffSet+0.08){if (uv.x>HoffSet+0.03){color = StrokeC;}}}} //uper leg
				if (uv.y<0.09){if ( uv.y>.08){if ( uv.x<HoffSet+0.08){if (uv.x>HoffSet+0.03 ){color = StrokeC;}}}} //botton leg
				
				if (uv.y<0.06){if ( uv.y>.05){if ( uv.x<HoffSet+0.08){if (uv.x>HoffSet+0.03 ){color = StrokeC;}}}} //mid leg
				
				if (uv.y<0.08 ){if (uv.y>.02){if (uv.x<HoffSet+0.08 ){if (uv.x>HoffSet+0.07){color = StrokeC;}}}} //right leg
				if (uv.y<0.08 ){if (uv.y>.02){if (uv.x<HoffSet+0.04 ){if (uv.x>HoffSet+0.03){color = StrokeC;}}}} //left leg
				}
		return color;}
						case 9: 
			if (uv.x>HoffSet){if (uv.x<HoffSet+0.1){
				if (uv.y<0.02){if (uv.y>0.01){if ( uv.x<HoffSet+0.08){if (uv.x>HoffSet+0.03){color = StrokeC;}}}} //uper leg
				if (uv.y<0.09){if ( uv.y>.08){if ( uv.x<HoffSet+0.08){if (uv.x>HoffSet+0.03 ){color = StrokeC;}}}} //botton leg
				
				if (uv.y<0.06){if ( uv.y>.05){if ( uv.x<HoffSet+0.08){if (uv.x>HoffSet+0.03 ){color = StrokeC;}}}} //mid leg
				
				if (uv.y<0.08 ){if (uv.y>.02){if (uv.x<HoffSet+0.08 ){if (uv.x>HoffSet+0.07){color = StrokeC;}}}} //right leg
				if (uv.y<0.06 ){if (uv.y>.02){if (uv.x<HoffSet+0.04 ){if (uv.x>HoffSet+0.03){color = StrokeC;}}}} //left leg
				}
		return color;}

				
				}
		
		
		
		
		
		
		}}
				return color;}

//uniform int userNumber;
void fragment(){
	
	///shift the value 1 decimal place to the left (eg: in an text that is the same as substring)
	float y=2.8;
	int x= int(y);
	x=x*10;
	float z=y*10.0-float(x);
	int aux2=int(z);
	
	///shift the value 1 decimal place to the right (eg: in an text that is the same as substring)
	 y=72.8;
	 x= int(y);
	 x=x/10;
	aux2=x;
	 //z=y/10.0-float(x/10);
	 //aux2=int(z);
	
	
	
	COLOR=print(aux2, UV, COLOR);

}
