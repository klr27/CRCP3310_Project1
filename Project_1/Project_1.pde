BufferedReader reader;
final String FILE_NAME = "Alice.txt";
PImage letterVis;
int [] freqs = new int[26];
color [] palette = new color[26];
final int ASCII_OFFSET = 97;
int state;
final int LETTER_VIS_STATE = 0;
final int FREQUENCY_VIS_STATE = 1;



void setup() {
  size(420, 420);
  state = 0;
  initializeLetterVis();
  initializeFreqs();
  initializePalette();
  setupVis();
}

void draw() {
  if (state == 0) {
    image(letterVis, 0, 0);
  } else {
    println("draw frequency graph");
  }
}

void mouseClicked() {
  state = (state + 1) % 2;
}