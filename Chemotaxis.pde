//declare bacteria variables here  
Bacteria [] colony;

 void setup()   
 {     
<<<<<<< HEAD
 	//initialize bacteria variables here   
 	size(500, 500);
 	colony = new Bacteria[8];
 	for (int i = 0; i < colony.length; i++)
 	{
 		colony [i] = new Bacteria();
 	}
=======
   //initialize bacteria variables here   
   size(500, 500);
   colony = new Bacteria [20];
   for (int i = 0; i < colony.length; i++){
     colony[i] = new Bacteria();
   }
>>>>>>> cd9649d07ca0e65311e72006a0f0031e0c8b3ea6
 }   

 void draw()   
 {    
<<<<<<< HEAD
 	//move and show the bacteria   
 	for (int i = 0; i < colony.length; i++)
 	{
 		colony[i].move();
 		colony[i].show();
 	}
=======
   //move and show the bacteria   
   background(0);
   for (int i = 0; i < colony.length; i++){
     colony[i].move();
     colony[i].show();
   }
>>>>>>> cd9649d07ca0e65311e72006a0f0031e0c8b3ea6
 }  

 class Bacteria    
 {     
<<<<<<< HEAD
 	//lots of java! 
 	int myX, myY;
 	Bacteria()
 	{
 		myX = (int)(Math.random()*500)-50;
 		myY = (int)(Math.random()*500)-50;
 	}

 	void move(){
 		myX = myX + (int)(Math.random()*400)-10;
 		myY = myY + (int)(Math.random()*400)-10;
 	}
=======
   //lots of java! 
   int myX, myY;
   Bacteria()
   {
     myX = (int)(Math.random()*500);
     myY = (int)(Math.random()*500);
   }

   void move(){
     myX = myX + (int)(Math.random()*3)-1;
     myY = myY + (int)(Math.random()*3)-1;
   }
>>>>>>> cd9649d07ca0e65311e72006a0f0031e0c8b3ea6

   void show(){
     fill(0,0,255);
     ellipse(myX, myY, 10, 10);
   }
 }    
