public class Player{
  int x,y;
  String name;
  int dam, health, maxhealth;
  PImage pic;
  
  Armor armor;
  Usable hpot;
  Usable mpot;
  Weapon weapon;
  
  public Player(){}
  public Player(int x, int y){
    this.x = x;
    this.y = y;
    try {
      pic = loadImage("player.png");
    } catch (Exception e) {}
  }
  public Player(String n){
    name = n;
  }
  public Player(String n, int i){
    name = n;
    health = i;
    maxhealth = i;
    dam = 10;
  }
  
  public void setx(int x){
    this.x = x;
  }
  public void sety(int y){
    this.y = y;
  }
  public int getx(){
    return x;
  }
  public int gety(){
    return y;
  }
  public void setHealth(int h){
    health = h;
    if (h>maxhealth){
      maxhealth = h;
    }
  }
  public int getHealth(){
    return health;
  }
  public boolean alive() {
   return !(health==0); 
  }
  public void takeDamage(int n){
    health -= n;
  }
  public void attack(Player p) {
    int totaldamage = dam + weapon.getDamage();
    p.takeDamage(totaldamage);
    if(p.getHealth() < 0){
      p.setHealth(0);
    }
  }
  public int healthPercent(){
    return (int)(health*20/maxhealth);
  }
}

