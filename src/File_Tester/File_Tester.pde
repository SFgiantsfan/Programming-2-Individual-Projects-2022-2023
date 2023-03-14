Table text1;

void setup(){
  size(500,500);
  text1 = loadTable("Test.csv", "header");
  //text1.addColumn("test");
  //text1.addColumn("hi");
  TableRow row = text1.addRow();
  row.setString("Test Header", "test");
  row.setInt("Hello World", 1);
  saveTable(text1, "Test.csv");
}

void draw(){
  
}

void keyPressed() {
}
