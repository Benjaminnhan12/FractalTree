private double fractionLength = .8; 
private int smallestBranch = 10; 
private float branchAngle = .2;  
public void setup() 
{   
	size(700,500);    
	// noLoop(); 
} 
public void draw() 
{   
	background(0);   
	stroke(0,255,0); 
	line(320,500,320,440);     
	drawBranches(320,440,100,3*Math.PI/2);  //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   	
	double angle1 = angle + branchAngle;
	double angle2 = angle - branchAngle;
	double angle3 = angle;	
	int endX1 = (int)(branchLength*Math.cos(angle1) + x);
	int endY1 = (int)(branchLength*Math.sin(angle1) + y); 
	int endX2 = (int)(branchLength*Math.cos(angle2) + x);
	int endY2 = (int)(branchLength*Math.sin(angle2) + y);
	line(x,y,endX1,endY1);
	line(x,y,endX2,endY2);
	if(branchLength > smallestBranch){
		drawBranches(endX1,endY1,branchLength/1.2,angle1);
		drawBranches(endX2,endY2,branchLength/1.4,angle2);
	}
} 
