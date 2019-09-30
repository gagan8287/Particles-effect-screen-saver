Design[] b;
float distance = 50;
float colour = 255;
float colour1 = 255;
void setup()
{
  fullScreen();
  b = new Design[500];
  smooth();
  for (int i = 0; i<b.length; i++)
  {
    b[i] = new Design();
  }
}
void draw()
{
  colour = map(mouseX,0,width,200,255);
  colour1 = map(mouseY,0,height,0,255);
  background(0);
  
  for (int i = 0; i<b.length; i++)
  {
    b[i].createDots();
    b[i].update();
    b[i].checkEdges();
    for (int j = i+1; j<b.length; j++)
    {
      if (dist(b[i].x, b[i].y, b[j].x, b[j].y)<distance)
      {
        for (int k = j+1; k<b.length; k++)
        {
          if (dist(b[j].x, b[j].y, b[k].x, b[k].y)<distance)
          {
            //fill(100,colour,colour1,150);
            noFill();
            stroke(100,colour,colour1,150);
            //noStroke();
            beginShape(TRIANGLES);
            vertex(b[i].x, b[i].y);
            vertex(b[j].x, b[j].y);
            vertex(b[k].x, b[k].y);
            endShape();
          }
        }
      }
    }
  }
  //saveFrame("output/design_###.png");
}
