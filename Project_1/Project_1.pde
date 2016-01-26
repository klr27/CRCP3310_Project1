BufferedReader reader;
final String FILENAME = "Alice.txt";
int [] freqs = new int[26];
float [] redValue = new float[26];
float [] greenValue = new float[26];
float [] blueValue = new float[26];


void setup() {
  size(420, 420);
  reader = createReader(FILENAME);
  for (int i=0; i < 26; i++) {
    freqs[i] = 0;
  }
  for (int i=0; i < 26; i++) {
   redValue[i] = random(255);
  }
  for (int i=0; i < 26; i++) {
   greenValue[i] = random(255);
  }
  for (int i=0; i < 26; i++) {
   blueValue[i] = random(255);
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