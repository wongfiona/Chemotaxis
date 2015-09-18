//declare bacteria variables here  
Bacteria [] colony;

 void setup()   
 {     
 	//initialize bacteria variables here   
 	size(500, 500);
 	colony = new Bacteria[8];
 	for (int i = 0; i < colony.length; i++)
 	{
 		colony [i] = new Bacteria();
 	}
 }   

 void draw()   
 {    
 	//move and show the bacteria   
 	for (int i = 0; i < colony.length; i++)
 	{
 		colony[i].move();
 		colony[i].show();
 	}
 }  

 class Bacteria    
 {     
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

 	void show(){
 		fill(0,0,255);
 		ellipse(myX, myY, 10, 10);
 	}
 }    