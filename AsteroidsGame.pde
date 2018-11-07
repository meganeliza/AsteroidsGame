Spaceship ghafa = new Spaceship();
Star[] starrySky = new Star[350];
public void setup() 
{
  size(800, 600);
  ghafa.setDirectionX(0);
  ghafa.setDirectionY(0);
  for(int i = 0; i < starrySky.length; i++)
  {
    starrySky[i] = new Star();
  }
}

public void draw() 
{
  background(0);
  for(int i = 0; i < starrySky.length; i++)
  {
    starrySky[i].show();
  }
  ghafa.show();
  ghafa.move();
}

public void keyPressed(){
  //hyperspace
  if(key == 'q')
  {
    ghafa.setDirectionX(0);
    ghafa.setDirectionY(0);
    ghafa.setX((int)(Math.random()*801));
    ghafa.setY((int)(Math.random()*601));
    ghafa.setPointDirection((int)(Math.random()*361));
    
  }
  //direction
  if(key == 'a')
  {
    ghafa.turn(-10);
  }
  if(key == 'd')
  {
    ghafa.turn(10);
  }
  //accelerate
  if(key == 'w')
  {
    ghafa.accelerate(0.5);
  }
}
