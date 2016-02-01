//CRCP 3310 Project 1 - Alice in Wonderland Visualization
//Kali Ruppert

BufferedReader reader;
final String FILE_NAME = "Alice.txt";
final String alice = "Alice";
PImage letterVis;
int [] freqs = new int[26];
float [] freqsVis = new float[26];
color [] palette = new color[26];
final int ASCII_OFFSET = 97;
int aliceCount;
int letterMin;
int letterMax;
float letterTotal;
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
  println(aliceCount);
  findMin(freqs);
  findMax(freqs);
  setupFreqsVis();
  letterVis.updatePixels();
  for (int i=0; i<26; i++) {
    print(freqs[i]);
    print("  ");
  }
}

void draw() {
  if (state == 0) {
    drawLetterVis();
  } else {
    drawFreqVis();
  }
}