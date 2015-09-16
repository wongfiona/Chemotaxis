import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Chemotaxis extends PApplet {

//declare bacteria variables here  
Bacteria bob;

 public void setup()   
 {     
 	//initialize bacteria variables here   
 	size(500, 500);
 }   

 public void draw()   
 {    
 	//move and show the bacteria   
 	bob = new Bacteria();
 	bob.move();
 	bob.show();
 }  

 class Bacteria    
 {     
 	//lots of java! 
 	int myX, myY;
 	Bacteria()
 	{
 		myX = 50;
 		myY = 50;
 	}

 	public void move(){
 		myX = myX + (int)(Math.random()*400)-1;
 		myY = myY + (int)(Math.random()*400)-1;
 	}

 	public void show(){
 		fill(0,0,255);
 		ellipse(myX, myY, 10, 10);
 	}
 }    
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Chemotaxis" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
