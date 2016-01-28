int randomColor = (int)Math.random()*255;
public void setup()
{
 
 size(500, 500);


}
public void draw()
{
 background(0);
 sierpinski(mouseX-300/2, mouseY+300/2, 300);
 mouseDragged();
}
public void mouseDragged()
{
 
}
public void sierpinski(int x, int y, int len) 
{ 
         fill(mouseX, mouseY, (int)Math.sqrt(mouseX*mouseX + mouseY*mouseY));
	triangle(x, y, x+ len/2, y - len, x+ len, y);
    if (len > 20) {

   
    
    	sierpinski(x, y, len/2);

    	sierpinski(x + len/2, y, len/2);

    	sierpinski(x+ len/4, y - len/2, len/2);
    }
    else {
    	 triangle(x, y, x+ len/2, y - len, x+ len, y);
    	
    }

}