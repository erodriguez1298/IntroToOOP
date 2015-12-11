class Ball {
  //declaring all information (fields) contained within the Ball class
  PVector loc, vel;
  PImage shiv;
  int diam;
  color c;

  //this is a constructor. you can have more than one constructor for a given class
  Ball() {
    diam = 200;
    loc = new PVector(random(diam, width-diam), random(diam, height-diam));
    c = color(random(255), random(50), random(100, 255));
    vel = PVector.random2D();
    shiv = loadImage("shiv.png");
  }
  
  //Shiv(){
  //  loc = new PVector(random(diam, width-diam), random(diam, height-diam));
  //  shiv = loadImage("shiv.jpg");
  //  vel = PVector.random2D();
  //}

  //after declaring fields and setting up constructors, you can define your methods
  void display() {
    fill(c);
    noStroke();
    ellipse(loc.x, loc.y, diam, diam);
    image(shiv,loc.x-150,loc.y-150);
  }

  void move() {
    loc.add(vel);
  }
  
  void bounce(){
    if(loc.x>=width-diam/2||loc.x<=0+diam/2){
      vel.x=-vel.x;
    }
    if(loc.y>=height-diam/2||loc.y<=0+diam/2){
      vel.y=-vel.y;
    }
  }
  
  void run(){
    display();
    move();
    bounce();
  }
}