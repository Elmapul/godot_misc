shader_type canvas_item;

//va int test=2;

//uniform float userNumber;
void fragment(){
	int userNumber=0;
	
	float HoffSet=0.1;
	
	vec4 StrokeC = vec4(0.0, 1.0, 2.0,1.0); //StrokeCollor
	//for (HoffSet=HHoffSet; HoffSet<1.0; HoffSet+=0.1){
	//	if(UV.x>HoffSet){ if(UV.x<HoffSet+0.1){
	//	COLOR = vec4(0.0,1.0, 0.5, 1.0);
	//	}}}
	//COLOR = vec4(UV.x,0.0, 0.5, 1.0);
	if(UV.x<1.0){
		if(UV.y<0.1){
		COLOR = vec4(1.0,0.0, 0.5, 1.0);
		switch (userNumber){
		case 0: 
			if (UV.x>HoffSet){if (UV.x<HoffSet+0.1){
				if (UV.y<0.02){if (UV.y>0.01){COLOR = StrokeC;}} //uper leg
				if (UV.y>.08){if (UV.y<0.09){COLOR = StrokeC;}} //botton leg
				if (UV.y>.01){if (UV.y<0.08){if (UV.x<HoffSet+0.02){COLOR = StrokeC;}}} //left leg
				if (UV.y>.01){if (UV.y<0.08){if (UV.x>HoffSet+0.09){COLOR = StrokeC}}} //right leg
			
				}
		}}
		
		return 1;
		}
	}

}


void vertex() {
  //VERTEX += vec2(10.0, 0.0);
}
