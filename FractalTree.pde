private double fractionLength = .8; 
private int smallestBranch = 10; 
private float branchAngle = .2;  
public void setup() 
{   
	size(640,480);    
	noLoop(); 
} 
public void draw() 
{   
	background(0);   
	stroke(0,255,0); 
	line(320,480,320,380);     
	drawBranches(320,480,320,380);  //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   	
	double leftangle = angle - smallestBranch;
	double rightangle = angle + smallestBranch;
	int endX = (int)(x + branchLength * Math.cos(leftangle));
	if(branchLength > smallestBranch){
		line(endX,y,(int)branchLength/2,(int)leftangle);
		// line(x,y,(int)branchLength/2,(int)rightangle);
	}else{
		line(x,y,(int)branchLength,(int)angle);
	}
} 
