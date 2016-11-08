/* 
  Object Oriented Programming Lab Test 1
  DT282 Group E
  C15423602 Sylvia Siu Wei Wan
*/

void setup()
{
  size(800, 800);
  background(0);
  
  stroke(#A92FCB);
  noSmooth();
  
  for(int i=0; i<Star; i++)
  {
    Star s = Star.get(i);
    println(s);
  }//end for
  
  //Call methods
  loadData();
  printStars();
 
}

//Create ArrayList
ArrayList<Star> data = new ArrayList<Star>();

//Declare variables
Table table;
int i;
int j;


void loadData()
{
  data.clear();
  
  Table t = loadTable("stars.csv", "header");
  for(int i = 0 ; i < t.getRowCount(); i++)
  {
    TableRow row = t.getRow(i);
    Star stars = new Star(row);
    data.add(stars);
  }
  
}//end loadData()

void printStars()
{
  for(Star s: data)
  {
    println(s);
  }
}//end printStars()

void draw()
{
  //Draw grid
  for(int i=0; i<width; i++)
  {
    for(int j=0; j<heigth; j++)
    {
      line(i, j, i+5, j);
      line(i, j, i, j+5);
      line(i+5, j, i+5, j+5);
      line(i, j+5, i+5, j+5);
    }
  }
}//end draw()