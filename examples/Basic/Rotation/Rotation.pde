/**
 *  This example shows rotation methods in Zone. rotating about
 *  the centre of the zone, and getting the angle
 */

import vialab.SMT.*;
void setup() {
  size(400, 400, P3D);
  TouchClient.init(this, TouchSource.MOUSE);
  TouchClient.add(new ShapeZone("RotatingZone",100,100,200,200));
}
void draw() {
  background(79, 129, 189);
  println(TouchClient.getZone("RotatingZone").getRotationAngle()*180/PI);
}
void drawRotatingZone(){
  fill(255);
  ellipse(100,100,200,200); 
  fill(0);
  line(100,100,200,100);
}
void touchRotatingZone(Zone z){
  z.rotateAboutCentre();
}