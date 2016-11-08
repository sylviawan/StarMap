/* 
  Object Oriented Programming Lab Test 1
  DT282 Group E
  C15423602 Sylvia Siu Wei Wan
*/

//
ArrayList<Star> star = new ArrayList<Star>();

//Declare variables
Table table;

void setup()
{
  size(800, 800);
  
  //Call methods
  loadData();
 
}

void Star()
{
  table = new Table();
  
  table.addColumn("column", Table.FLOAT);
  table.addColumn("name", Table.STRING);
  table.addColumn("descr", Table.STRING);
  
  TableRow row = table.addRow();
  row.setFloat("column", 2);
  row.setString("name", "Hab?");
  row.setString("descr", "Habitability flag 1 = star has a high probability of hosting a human habitable planet");

}

void loadData()
{
  data.clear();
  
  Table t = loadTable("stars.csv");
  for(int i = 0 ; i < t.getRowCount(); i++)
  {
    TableRow row = t.getRow(i);
    Star stars = new Star(TableRow);
    data.add(stars);
}
void draw()
{
  
}