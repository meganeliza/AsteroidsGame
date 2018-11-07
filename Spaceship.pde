class Spaceship extends Floater  
{  
  public Spaceship(){
   myCenterX = 400;
   myCenterY = 300;
   corners = 3;
   xCorners = new int[corners];
   yCorners = new int[corners];
   xCorners[0] = -9;
   yCorners[0] = -9;
   xCorners[1] = 17;
   yCorners[1] = 1;
   xCorners[2] = -9;
   yCorners[2] = 9;
   myColor = color(155, 42, 83); //or 206 for RGB
   myDirectionX = 2;
   myDirectionY = 2;
   myPointDirection = 45;
   
  }
  public void setX(int x){myCenterX = x;}
  public int getX(){return (int)myCenterX;}
  public void setY(int y){myCenterY = y;}
  public int getY(){return (int)myCenterY;}
  public void setDirectionX(double x){myDirectionX = x;}
  public double getDirectionX(){return (double)myDirectionX;}
  public void setDirectionY(double y){myDirectionY = y;}
  public double getDirectionY(){return (double)myDirectionY;}   
  public void setPointDirection(int degrees){myPointDirection = degrees;}
  public double getPointDirection(){return (double)myPointDirection;} 
}
