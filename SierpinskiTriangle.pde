public void setup()
{
	background(0);
	size(1000,1000);

}
public void draw()
{
stroke(250);
fill(random(0, 255), random(0, 255), random(0, 255));
sierpinski(250,500,500);
fill(random(0, 255), random(0, 255), random(0, 255));
sierpinski(0,1000,500);
fill(random(0, 255), random(0, 255), random(0, 255));
sierpinski(500,1000,500);
fill(random(0, 255), random(0, 255), random(0, 255));
sierpinski(375,750,250);
fill(random(0, 255), random(0, 255), random(0, 255));
sierpinski(437,375,125);
}
public void mouseDragged() //optional
{

}
public void sierpinski(int x, int y, int len) 
{
		if(len <=20)
		{
		triangle(x , y , x + (len/2), y - len, x + len, y);
		
		}
		else 
		{
		sierpinski(x,y,len/2);
		sierpinski(x + (len/2), y, len/2);
		sierpinski(x + (len/4), y - (len/2), len/2);
		}
	
	
}

