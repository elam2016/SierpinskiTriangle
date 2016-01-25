int screenSize;
public void setup(){
	screenSize = 400;
	size(screenSize, screenSize);
}
public void draw(){
	sierpinski(0, screenSize - 1, screenSize - 1);
}
public void mouseDragged() { //optional

}
public void sierpinski(int x, int y, int len) {
	if(len > 20){
		sierpinski(x, y, len/2);
		sierpinski(x + len/2, y, len/2);
		sierpinski(x + len/4, y - len/2, len/2);
	} else {
		fill(0);
		noStroke();
		triangle(x, y, x + len, y, x + len/2, y - len);
	}
}
