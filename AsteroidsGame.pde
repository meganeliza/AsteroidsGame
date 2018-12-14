Spaceship ghafa = new Spaceship();
Star[] starrySky = new Star[350];
ArrayList <Asteroid> kaz = new ArrayList<Asteroid>();
ArrayList <Bullet> j = new ArrayList<Bullet>();
public void setup() 
{
  size(900, 700);
  ghafa.setDirectionX(0);
  ghafa.setDirectionY(0);
  for(int i = 0; i < starrySky.length; i++)
  {
    starrySky[i] = new Star();
  }
  for(int i = 0; i < 20; i++)
  {

    kaz.add(new Asteroid());
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
  for(int i = 0; i < kaz.size(); i++)
  {
    kaz.get(i).show();
    kaz.get(i).move();
    float d = dist(ghafa.getX(), ghafa.getY(), kaz.get(i).getX(), kaz.get(i).getY());
    if(d < 20)
    kaz.remove(i);
  }
  for(int nO = 0; nO < j.size(); nO++)
  {
    j.get(nO).show();
    j.get(nO).move();
    for(int nI = 0; nI < kaz.size(); nI++)
    {
      float d = dist(kaz.get(nI).getX(), kaz.get(nI).getY(), j.get(nO).getX(), j.get(nO).getY());
      if(d < 15)
        { 
          j.remove(nO);
          kaz.remove(nI);
          break;
        }
    }
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
  //shoot bullets
  if(key == 'l')
  {
    j.add(new Bullet(ghafa));
  }

}
