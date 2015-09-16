//declare bacteria variables here  
Bacteria bob;

 void setup()   
 {     
 	//initialize bacteria variables here   
 	size(500, 500);
 }   

 void draw()   
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

 	void move(){
 		myX = myX + (int)(Math.random()*400)-1;
 		myY = myY + (int)(Math.random()*400)-1;
 	}

 	void show(){
 		fill(0,0,255);
 		ellipse(myX, myY, 10, 10);
 	}
 }    