BufferedReader reader;
final String FILE_NAME = "Alice.txt";
PImage letterVis;
int [] freqs = new int[26];
color [] palette = new color[26];
final int ASCII_OFFSET = 97;
int aliceCount;
int letterMin;
int letterMax;
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
  findMin(freqs, letterMin);
  findMax(freqs, letterMax);
}

void draw() {
  if (state == 0) {
    drawLetterVis();
  } else {
    println("draw frequency graph");
  }
}