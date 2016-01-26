BufferedReader reader;
final String FILENAME = "Alice.txt";
int [] freqs = new int[26];
int [] redValue = new int[26];
int [] greenValue = new int[26];
int [] blueValue = new int[26];


void setup() {
  size(420, 420);
  reader = createReader(FILENAME);
  for (int i=0; i++; i<26) {
    freqs[i] = 0;
  }
  for (int i=0; i++; i<26) {
   redValue[i] = rand(255);
  }
  for (int i=0; i++; i<26) {
   greenValue[i] = rand(255);
  }
  for (int i=0; i++; i<26) {
   blueValue[i] = rand(255);
  }
}

void draw() {
  try {
    Character character = char(reader.read());
    println(character);
  } 
  catch (IOException e) {
    println("Error");
    e.printStackTrace();
  }
  
}