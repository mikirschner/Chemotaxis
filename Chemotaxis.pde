Bacteria colony []; 
 void setup()   
 {     
 	size(500,500);
	colony = new Bacteria [50];
 	for(int i = 0; i < colony.length; i++) {
 		colony[i] = new Bacteria();
 	}  
 }   
 void draw()   
 {    
 	background(194, 186, 214);
 	for(int i = 0; i<colony.length; i++) {
 		colony[i].show();
 		colony[i].walk();
 	}   
 }  
 class Bacteria    
 {     
 	int myX,myY;
 	Bacteria()
 	{
 		myX = myY = 250;
 	} 
 	void walk()
 	{
 		if(mouseX > myX && mouseY > myY) {
 			myX = myX + (int)(Math.random()*5)-1;
 			myY = myY + (int)(Math.random()*5)-1;
 		}
 		else {
 			myX = myX + (int)(Math.random()*5)-3;
 			myY = myY + (int)(Math.random()*5)-3;
 		}
 	}
 	void show()
 	{
  		noStroke();
  		fill(188, 161, 207);
  		ellipse(myX,myY,20,20);
 	}  
 }    