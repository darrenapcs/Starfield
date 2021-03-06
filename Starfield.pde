//your code here
Particle [] particle;
void setup()
{
	size(500, 500);
	
	particle = new Particle[300];
	for(int i = 0; i < particle.length ; i++)
	{
		particle[i] = new NormalParticle();
	}
	particle[0] = new OddballParticle();
	particle[1] = new JumboParticle();
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


class NormalParticle implements Particle
{
	double xPos;
	double yPos;
	int myColor;
	double myAngle;
	double mySpeed;
	int mySize;

  NormalParticle()
  {
  	myColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    xPos = 250;
    yPos = 250;
    myAngle = (Math.random()*3)*Math.PI;
    mySpeed = (Math.random()*5);
  	mySize = 10;
  }

  	public void move()
  	{
  		xPos = xPos+ Math.cos(myAngle)* mySpeed;
  		yPos = yPos+ Math.sin(myAngle)* mySpeed;
  		mySize += 1;
  		if(mySize > 20)
  		{
  			mySize = 10;
  		}

  	}
  	public void show()
  	{
        fill(myColor);
        ellipse((float)xPos, (float)yPos, mySize,mySize);
  	}


  }

	//your code here

interface Particle
{
	public void show();
	public void move();
	//your code here
}
class OddballParticle implements Particle //uses an interface
{
   	double xPos;
	double yPos;
	int myColor;
	double myAngle;
	double mySpeed;

	OddballParticle()
  {
  	myColor = color(255,255,255,150);
    xPos = 250;
    yPos = 250;
    myAngle = (Math.random()*3)*Math.PI;
    mySpeed = (Math.random()*5);
  	
  }

  	public void move()
  	{
  		xPos = xPos+ (int)(Math.random()*11)-5;
  		yPos = yPos+ (int)(Math.random()*11)-5;
  		
  	}
  	public void show()
  	{

        fill(myColor);
        ellipse((float)xPos, (float)yPos, 20,20);

  	}




	//your code here
}
class JumboParticle extends  NormalParticle //uses inheritance
{

    public void show()
    {
    	fill(myColor);
    	ellipse((float)xPos, (float)yPos, 60,60);
    }


	//your code here
}

