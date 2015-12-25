int space = 80;
float a = 0.0;
float a_init = 0.0;
float inc = TWO_PI/25.0;
PImage restart;

boolean isPlaying = true;

void isInRegion( float x, float y, float w, float h)
{
  if(mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h)
  {
    isPlaying = false;
  }
}

void setup()
{
  size(480,480);
  restart = loadImage("img/restart.png");
}

void draw()
{
  background(255);
  
  if(isPlaying)
  {
    stroke(0);
      fill(0, 102, 204);
      
      for(int i = 0; i<10; i++)
      {
        float heightOfUpRect = 200 + sin(a)*50.0;
        rect( 40+i*40, 0, 40, heightOfUpRect);
        isInRegion(40+i*40, 0, 40, heightOfUpRect);
        
        rect( 40+i*40, space + heightOfUpRect, 40, 480 - (space + heightOfUpRect));
        isInRegion(40+i*40, space + heightOfUpRect, 40, 480 - (space + heightOfUpRect));
        a = a + inc;
      }
      a_init+=0.03;
      a = a_init;

      fill(0, 255, 0);
      noStroke();
      ellipse( mouseX, mouseY , 30,30);
  }
  else
  {
    image(restart, 0, 0);

      if(mouseX < restart.width && mouseY < restart.height && mousePressed == true)
      {
        isPlaying = true;
      }
  }
 
}
