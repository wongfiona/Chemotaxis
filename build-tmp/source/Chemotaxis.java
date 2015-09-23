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
Bacteria [] colony;

 public void setup()   
 {     
   //initialize bacteria variables here   
   size(1400, 500);
   colony = new Bacteria [100];
   for (int i = 0; i < colony.length; i++)
   {
    colony[i] = new Bacteria();
   }
 }   

 public void draw()   
 {    
   //move and show the bacteria   
   background(200, 200, 200);
   for (int i = 0; i < colony.length; i++)
   {
    colony[i].move();
    colony[i].show();
   }
   carrot();
 }  

 public void carrot(){
 	fill(250, 185, 110);
	triangle(mouseX, mouseY, mouseX+10, mouseY+50, mouseX+20, mouseY); //carrot
	fill(110, 250, 160);
	ellipse(mouseX, mouseY-10, 12, 20);
	ellipse(mouseX+10, mouseY-10, 15, 25);
	ellipse(mouseX+20, mouseY-10, 12, 20);
 }

 class Bacteria    
 {      
   int myX, myY, myR, myG, myB, myColor;
   Bacteria()
   {
    myX = (int)(Math.random()*1400);
    myY = (int)(Math.random()*500);
    myR = (int)(Math.random()*37)+118;
    myG = (int)(Math.random()*58)+197;
    myB = (int)(Math.random()*60)+195;
    myColor = color (myR*2, myG, myB);
   }

   public void move()
   {
   	frameRate(20);
   	//right and up
    if (myX < mouseX && myY > mouseY)
    {
        myX = myX + (int)(Math.random()*5);
        myY = myY - (int)(Math.random()*5);
    }
    //left and up
    else if(myX > mouseX && myY > mouseY)
    {
    	myX = myX - (int)(Math.random()*5);
    	myY = myY - (int)(Math.random()*5);
    }
    //right and down
    else if (myX < mouseX && myY < mouseY)
    {
    	myX = myX + (int)(Math.random()*5);
    	myY = myY + (int)(Math.random()*5);
    }
    //left and down
    else if (myX > mouseX && myY < mouseY)
    {
    	myX = myX - (int)(Math.random()*5);
    	myY = myY + (int)(Math.random()*5);
    }
    else
    {
    	myX = myX + (int)(Math.random()*5)-2;
    	myY = myY + (int)(Math.random()*5)-2;
    }
   }

   public void show()
   {
    noStroke();
    fill(myColor);
    ellipse(myX, myY, 30, 20);  //head
    ellipse(myX-7, myY-6, 10, 30); //left ear
    ellipse(myX+7, myY-6, 10, 30); //right ear
    fill(0);
    ellipse(myX-5, myY, 3, 3); //left eye
    ellipse(myX+5, myY, 3, 3); //right eye
    fill(228, 133, 228);
    ellipse(myX, myY+3, 3, 2); //nose
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
