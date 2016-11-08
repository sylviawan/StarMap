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
  
  Table t = loadTable("stars.csv");
  for(int i = 0 ; i < t.getRowCount(); i++)
  {
    TableRow row = t.getRow(i);
    Star stars = new Star(row);
    data.add(stars);
  }
  
}

void printStars()
{
  for(Star s: data)
  {
    println(s);
  }
}

void draw()
{
  //Draw grid
  for(int i=0; i<width; i++)
  {
    for(int j=0; j<heigth; j++)
    {
      line(i, j, i+50, j);
      line(i, j, i, j+50);
      line(i+50, j, i+50, j+50);
      line(i, j+50, i+50, j+50);
    }
}