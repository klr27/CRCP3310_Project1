InputStream input;
BufferedReader reader;
char [] characters;


void setup() {
 input = createInput("Alic_PlainText.txt"); 
 reader = createReader("Alice_PlainText.txt");
  
}

void draw() {
  characters = new char[input.available()]; //unhandled exception
  try {
    reader.read(characters, 2, input.available());
  } catch (IOException e) {
    e.printStackTrace();
  }

}