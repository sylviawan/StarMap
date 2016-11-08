/* 
  Object Oriented Programming Lab Test 1
  DT282 Group E
  C15423602 Sylvia Siu Wei Wan
*/

//Create ArrayList
ArrayList<Star> data = new ArrayList<Star>();

//Declare variables
Table table;
int i;

void setup()
{
  size(800, 800);
  
  //Call methods
  loadData();
 
}


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
  
  printStars();
}

void printStars()
{
  
}
void draw()
{
  
}