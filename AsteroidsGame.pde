Spaceship ghafa = new Spaceship();
Star[] starrySky = new Star[350];
Asteroid[] kaz = new Asteroid[15];
public void setup() 
{
  size(800, 600);
  ghafa.setDirectionX(0);
  ghafa.setDirectionY(0);
  for(int i = 0; i < starrySky.length; i++)
  {
    starrySky[i] = new Star();
  }
  for(int i = 0; i < kaz.length; i++)
  {
    kaz[i] = new Asteroid();
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
  for(int i = 0; i < kaz.length; i++)
  {
    kaz[i].show();
    kaz[i].move();
  }
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
