Ball a;                //declare a new ball called b
Ball b;
Ball c;
Ball d;

void setup() {
  size(800, 800);
  a = new Ball();      //initialize b as a new object of the Ball class
  b = new Ball();
  c = new Ball();
  d = new Ball();
}

void draw() {
  background(0);
  a.run();         //call b's display() method
  b.run();
  c.run();
  d.run();
}