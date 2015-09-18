//declare bacteria variables here  
Bacteria [] colony;

 void setup()   
 {     
   //initialize bacteria variables here   
   size(500, 500);
   colony = new Bacteria [100];
   for (int i = 0; i < colony.length; i++)
   {
    colony[i] = new Bacteria();
   }
 }   

 void draw()   
 {    
   //move and show the bacteria   
   background(0);
   for (int i = 0; i < colony.length; i++)
   {
    colony[i].move();
    colony[i].show();
   }
 }  

 class Bacteria    
 {      
   int myX, myY, myR, myG, myB, myColor;
   Bacteria()
   {
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
    myR = (int)(Math.random()*500);
    myG = (int)(Math.random()*500);
    myB = (int)(Math.random()*500);
    myColor = color (myR, myG, myB);
   }

   void move()
   {
    myX = myX + (int)(Math.random()*3)-1;
    myY = myY + (int)(Math.random()*3)-1;
   }

   void show()
   {
   	stroke(myColor);
    fill(myColor, 125);
    ellipse(myX, myY, 10, 10);
    fill(myColor, 150);
    ellipse(myX, myY, 20, 20);
   }
 }      
