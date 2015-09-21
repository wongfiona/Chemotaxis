//declare bacteria variables here  
Bacteria [] colony;

 void setup()   
 {     
   //initialize bacteria variables here   
   size(1400, 500);
   colony = new Bacteria [240];
   for (int i = 0; i < colony.length; i++)
   {
    colony[i] = new Bacteria();
   }
 }   

 void draw()   
 {    
   //move and show the bacteria   
   background(200,200,200);
   for (int i = 0; i < colony.length; i++)
   {
    colony[i].move();
    colony[i].show();
   }
 }  

 void carrot(){
 	fill(250, 185, 110);
	triangle(100, 100, 110, 150, 120, 100); //carrot
	fill(110, 250, 160);
	ellipse(100, 90, 12, 20);
	ellipse(110, 90, 15, 25);
	ellipse(120, 90, 12, 20);
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

   void move()
   {
      /*if (myX < mouseX && myY < mouseY)
      {*/
        myX = myX + (int)(Math.random()*3)-1;
        myY = myY + (int)(Math.random()*3)-1;
      /*}
      else
      {
        myX = myX + (int)(Math.random()*7)-8;
        myY = myY + (int)(Math.random()*7)-8;
      }*/
   }

   void show()
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
