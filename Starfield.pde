//your code here
NormalParticle [] particle;
void setup()
{
	size(500, 500);
	
	particle = new NormalParticle[150];
	for(int i = 0; i < particle.length ; i++)
	{
		particle[i] = new NormalParticle();
	}
	//your code here
}
void draw()
{
	background(0);
	for(int i = 0 ; i < particle.length; i++)
	{	
    particle[i].show();
    particle[i].move();

    }
	//your code here
}

class NormalParticle
{
	double xPos;
	double yPos;
	int myColor;
	double myAngle;
	double mySpeed;

  NormalParticle()
  {
  	myColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    xPos = 250;
    yPos = 250;
    myAngle = (Math.random()*3)*Math.PI;
    mySpeed = (Math.random()*8);
  	
  }

  	void move()
  	{
  		xPos = xPos+ Math.cos(myAngle)* mySpeed;
  		yPos = yPos+ Math.sin(myAngle)* mySpeed;
  		
  	}
  	void show()
  	{
        fill(myColor);
        ellipse((float)xPos, (float)yPos, 10,10);
  	}


  }

	//your code here

interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

