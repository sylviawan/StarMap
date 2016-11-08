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
    
    TableRow rows = table.addRow();
    rows.setFloat("column", 2);
    rows.setString("name", "Hab?");
    rows.setString("descr", "Habitability flag 1 = star has a high probability of hosting a human habitable planet");
  }
  
  String toString()
  {
    return column + "\t" + name + "\t" + descr;
  }
  
}