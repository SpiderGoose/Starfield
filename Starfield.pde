//your code here
void setup()
{
	size(700,700);
	background(0,50,100);
//	NormalParticle[] space = new NormalParticle;
	//your code here
}
void draw()
{
	NormalParticle[] space = new NormalParticle[15];
	for(int i = 0; i<15;i++)
	{
		space[i] = new NormalParticle

	}

}
class NormalParticle
{
	double dX, dY, dSpeed, dAngle;
	int dcolor;
	NormalParticle()
	{
		dX=250;
		dY=250;
		dSpeed = (int)(Math.random()*10);
		dAngle = (Math.random()*2*Math.PI);
	}
	//your code here
}
interface Particle
{
public void move();
public void show(); 

}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

