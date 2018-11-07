class Star //note that this class does NOT extend Floater
{
  private int starPosX, starPosY, myColor, myColor2;
  public Star(){
    starPosX = (int)(Math.random()*800);
    starPosY = (int)(Math.random()*600);
    myColor = color((int)(Math.random()*255), (int)(Math.random()*190), (int)(Math.random()*240));
    myColor2 = color(255, 255, 80, 95);
  }

    
  public void show(){
    noStroke();
    fill(myColor);
    ellipse(starPosX, starPosY, 3, 3);
    fill(myColor2);
    ellipse(starPosX, starPosY, (int)(Math.random()*4), (int)(Math.random()*4));
  }
  
}
