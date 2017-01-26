public void setup()
{
	size(600, 300);
	background(0);

}
public void draw()
{
	if(key == ' ')
	fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
	sierpinski(0,300,300);
	square(300,300,300);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if(key == 'z')
	fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
	if(len <= 10){
		triangle(x, y, x + len , y, x + len/2 , y - len);
	}	
	else{
		sierpinski(x, y, len/2);
		sierpinski(x + len/2, y, len/2 );
		sierpinski(x + len/4, y - len/2, len/2 );
	}
}
public void square(int x, int y, int len)
{
	if(len <= 10){
		rect(x, y, x + len, y - len);
	}
	else{
		rect(x, y, width, height);
		rect(x, y, width, height);
	}

}
