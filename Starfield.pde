Particle [] lunas;
public void setup()
{
	size(700,700);
	
	lunas = new Particle[250];
	for(int i = 0; i<lunas.length;i++)
	{
	lunas[i] = new NormalParticle();
	}
	lunas[0] = new OddballParticle();
	lunas[1] = new JumboParticle();
}

void draw()
{
	background(0,50,100);
	for(int i = 0;  i< lunas.length; i++)
	{
		lunas[i].move();
		lunas[i].show();
		lunas[i].wrap();
	}
}


class NormalParticle implements Particle
{
	double dX, dY,dTheta, dSpeedX, dSpeedY;
    int  dSize, dColor,tColor;
	NormalParticle()
	{
		dX=350;
		dY=350;
		dTheta = (Math.random()*2*Math.PI);
		dSpeedX = (Math.random()*5)+1;
		dSpeedY = (Math.random()*5)+1;
		dSize = (int)(Math.random()*15)+5;
		dColor = (int)(Math.random()*10);
		if(dColor > 5)
		{
		tColor=255;
	    }
	    else 
	    { 
		tColor=0;
		  
	    }

	}

	public void move()
	{
		dX = dX + Math.cos(dTheta) * dSpeedX;
		dY = dY + Math.sin(dTheta) * dSpeedY;
	}
	public void show()
	{
	fill(tColor);

		ellipse((float)dX,(float)dY,dSize,dSize);
	}
	public void wrap()
	{
		if(dX>700 || dX<0 || dY>700 || dY<0)
		{
			dX = 350;
			dY = 350;
			dTheta = (Math.random()*2*Math.PI);
			dSpeedX = (Math.random()*5)+1;
			dSpeedY = (Math.random()*5)+1;
			dSize = (int)(Math.random()*15)+5;
			dColor = (int)(Math.random()*10);
		}
	}
	
}








interface Particle
{
	public void show();
	public void move();
	public void wrap();
}

class OddballParticle implements Particle
{
	int theX, theY;
	int  theSize;
	OddballParticle()
	{
		theX = 0;
		theY = 350;
		theSize = 20;
		
	}
	public void move()
	{
    
    for(int i=0;i<60;i++)
{
	theSize+=1;
	if(theSize>80)
	{
		theSize=20;
	}


}
theX+=4;
if(theX>700)
{
theX=0;
}
		
	}
	public void show()
	{
		fill(245,140,196);
		ellipse(theX,theY,theSize,theSize);
	}
	public void wrap()
	{

	}
}

class JumboParticle extends NormalParticle
{
	JumboParticle()
	{
		dSize = 80;
	}
	public void wrap()
	{
		if(dX>700 || dX<0 || dY>700 || dY<0)
		{
			dX = 350;
			dY = 350;
			dTheta = (Math.random()*3*Math.PI);
			dSpeedX = (Math.random()*4)+1;
			dSpeedY = (Math.random()*4)+1;
			tColor =125;

			
		}
	}
}

