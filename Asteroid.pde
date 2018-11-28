class Asteroid extends Floater
{
	private int rotSpeed;
	public Asteroid()
	{
    myCenterX = (int)(Math.random()*800);
    myCenterY = (int)(Math.random()*600);
		corners = 10;
		xCorners = new int [corners];
		yCorners = new int[corners];
		xCorners[0] = -21;
		yCorners[0] = -12;
		xCorners[1] = -15;
		yCorners[1] = -21;
		xCorners[2] = -9;
		yCorners[2] = -21;
		xCorners[3] = 0;
		yCorners[3] = -15;
		xCorners[4] = 9;
		yCorners[4] = -21;
		xCorners[5] = 15;
		yCorners[5] = -21;
    xCorners[6] = 21;
    yCorners[6] = -12;
    xCorners[7] = 15;
    yCorners[7] = 3;
    xCorners[8] = 0;
    yCorners[8] = 15;
    xCorners[9] = -15;
    yCorners[9] = 3;
    myColor = color(255, 75, 75);
    if(Math.random() < 0.5){
      myDirectionX = Math.random()*2;
      myDirectionY = Math.random()*2;
    }
    else
    {
      myDirectionX = Math.random()*-2;
      myDirectionY = Math.random()*-2;
    }
    myPointDirection = Math.random()*360;
    if(Math.random() < 0.5)
      rotSpeed = -1;
    else
      rotSpeed = 1;
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
		
	public void move()
	{
    rotSpeed = 3;
		turn(rotSpeed);
		super.move();
	}
}
