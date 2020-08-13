shader_type canvas_item;
//an shader that convert RGB to HSL (and show it on screen for debugging purposes)
float resto(float aux, float valor){
	
	aux=aux - (valor * floor(aux/valor)); // mod of division
	return aux; 
}

float cMin(float r,float g, float b){
	float Min=1.0;
	if (r<Min){Min=r;}
	if (g<Min){Min=g;}
	if (b<Min){Min=b;}
	return Min;}
	
float cMax(float r, float g, float b){
	float Max=0.0;
	if (r>Max){Max=r;}
	if (g>Max){Max=g;}
	if (b>Max){Max=b;}
	return Max;}
	
vec3 toHSL(float r, float g, float b){
	vec3 hsl = vec3(1.0, 1.0, 2.0);
	
	float cmin =cMin(r,g,b);
	float cmax = cMax(r,g,b);
    float delta = cmax - cmin;
	float h=0.0;
	float s=0.0;
	float l=0.0;
	
	if (delta == 0.0){h = 0.0;}
    if (cmax == r){ 
		float aux= ((g - b) / delta) ;
		h = resto( aux , 6.0);
		}
	if (cmax == g){ 
		h = (b - r) / delta + 2.0;
		}
	if (cmax == b){ 
		 h = (r - g) / delta + 4.0;
	}
	h=h * 60.0;
	h = round(h);
	
	if (h < 0.0)
      h += 360.0;
	
	l = (cmax + cmin) / 2.0;
	if (delta==0.0){
		s=0.0; 
	}else{
		 s= delta / (1.0 - abs(2.0 * l - 1.0));
	}
	s =s +(s * 100.0);//.toFixed(1);
	l = +(l * 100.0);//.toFixed(1);
	
	hsl = vec3(h, s, l);
	return hsl;
}

float hue2rgb(float p, float q, float t){
	//float aux=1.2;
	//return aux;
	        if(t < 0.0) t += 1.0;
            if(t > 1.0) t -= 1.0;
            if(t < 1.0/6.0) return p + (q - p) * 6.0 * t;
            if(t < 1.0/2.0) return q;
            if(t < 2.0/3.0) return p + (q - p) * (2.0/3.0 - t) * 6.0;
            return p;
	
}

vec3 toRGB(float h, float s, float l){
	float r=0.0,g=0.0,b=0.0;
	float Chroma=0.0;
	if (s==0.0){
		r = g = b = l; // achromatic
	}else{
		float q=0.0;
		 if( l < 0.5 ){  q = l * (1.0 + s); } else{ q = l + s - l * s;}
		float p = 2.0 * l - q;
		r = hue2rgb(p, q, h + 1.0/3.0);
        g = hue2rgb(p, q, h);
        b = hue2rgb(p, q, h - 1.0/3.0);
	}
	
	//return [Math.round(r * 255), Math.round(g * 255), Math.round(b * 255)];
	vec3 RGB = vec3(r, g, b);
	return RGB;
	
}

void fragment(){
	COLOR = texture(TEXTURE, UV); //read from texture
	
	
	float r= COLOR.r ;
	float g=COLOR.g;
	float b= COLOR.b;
	
	vec3 HSL= toHSL(r,g,b);
	
	COLOR.r=HSL.x /360.0; //hue
	COLOR.g=HSL.y /100.0; //saturation
	COLOR.b=HSL.z /100.0; //luminance
	float shift=(HSL.x);
	//shift=20.0;
	shift=shift+(360.0 * TIME);
	
	shift=shift /360.0;
	shift=resto(shift, 1.0);
	vec3 RGB=toRGB(shift , HSL.y/100.0, HSL.z/100.0);
	COLOR.r=RGB.x;
	COLOR.g=RGB.y;
	COLOR.b=RGB.z;

	
	
}
