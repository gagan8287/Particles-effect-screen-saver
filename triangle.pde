class Design
{
  float x , y , xSpeed , ySpeed, colr , colg, colb;
  Design()
  {
    x=random(width);
    y=random(height);
    xSpeed=random(-5, 5);
    ySpeed=random(-5, 5);
    colr=random(250);
    colg=random(250);
    colb=random(250);
  }
  void createDots()
  {
    fill(100,colour,colour1 );
    stroke(100,colour,colour1 );
    //strokeWeight();
    ellipse(x, y,random(4),random(4));
  }
  void update()
  {
    x = x+xSpeed;
    y = y+ySpeed;
  }
  void checkEdges()
  {
    if (x<=0 || x>=width)
    {
      if (x<=0)
      {
        x = width;
      } else
        x = 0;
      xSpeed=random(-1, 1);
      ySpeed=random(-1, 1);
    }
    if (y<=0 || y>=height)
    {
      if (y<=0)
      {
        y = height;
      } else
        y = 0;
      xSpeed=random(-1, 1);
      ySpeed=random(-1, 1);
    }
  }
}
