int space = 80;
float a = 0.0;
float a_init = 0.0;
float inc = TWO_PI/25.0;

void setup()
{
  size(480,480);
}

void draw()
{
  background(255);
  stroke(0);
  fill(0, 102, 204);
  
  for(int i = 0; i<10; i++)
  {
    float heightOfUpRect = 200 + sin(a)*50.0;
    rect( 40+i*40, 0, 40, heightOfUpRect);
    rect( 40+i*40, space + heightOfUpRect, 40, 480 - (space + heightOfUpRect));
    a = a + inc;
  }
  a_init+=0.03;
  a = a_init;

}
