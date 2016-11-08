//class Star

class Star
{
  float column;
  String name;
  String descr;
  Table table;
  
  Star()
  {
    name = "";
    descr = "";
  }
  
  Star(TableRow row)
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
  
}