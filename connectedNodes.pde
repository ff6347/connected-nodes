NodeSystem ns; // the System
  int num = 2500; // number of nodes

void setup(){
  background(255,5);  // bg for startup

  size(1920,1080);
  // the starting distance for the calculation of the lines
  int distance = 40;
  // create the NodeSystem with distance
   ns = new NodeSystem(distance);
   
// frameRate(1);
   smooth(); // make it smooth
    // initalise all the nodes
    // if you put the init into the draw it calcs every loop new nodes
   ns.init(num);

}// end of setup

//
void draw(){
  // write a rect in the size of the sketch for smooth background clear
  noStroke();
  fill(255,100);
  rect(0,0,width,height);

// run the node system
  ns.run();
saveFrame("images/nodes-####.jpg");
//  noLoop();
}

