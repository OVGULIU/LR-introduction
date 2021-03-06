
/**
  * animate - vertex shader
  *
  * Do a linear interpolation from start- to end-position by
  * the time-uniform (between 0.0 and 1.0)
  *
  * Author: Kjetil A. Johannessen
  * Date: August 2012
  *
  */
  
attribute vec4 vPositionStart;
attribute vec4 vPosition;
uniform mat4 mMVP;       
uniform float time;     
void main() {           
	vec4 pos = vec4(0,0,0,1);
	pos.x = vPositionStart.x*(1.0-time) + time*vPosition.x;
	pos.y = vPositionStart.y*(1.0-time) + time*vPosition.y;
	gl_Position = mMVP * pos;
}