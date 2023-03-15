Table text1;
TextBox test;

void setup(){
  size(500,500);
  text1 = loadTable("Test.csv", "header");
  //text1.addColumn("test");
  //text1.addColumn("hi");
  //TableRow row = text1.addRow();
  
  
  
  
  test = new TextBox(150,150,200,30);
}

void draw(){
  test.draw();
  println(test.textValue);
  TableRow row = text1.addRow();
  row.setString("Test Header", test.textValue);
  row.setInt("Hello World", 1);
  saveTable(text1, "Test.csv");
}

void keyPressed() {
}
