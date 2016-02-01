void mouseClicked() {
  state = (state + 1) % 2;
}

void drawLetterVis() {
  background(255);
  image(letterVis, 0, 0);
}

void drawFreqVis() {
  background(0);
  
  float posx = 0;
  float posy = 50;
  
  for (int i=0; i<26; i++) {
    fill(palette[i]);
    text(char(i + ASCII_OFFSET), (i * 15) + 10, 20);
    noStroke();
    rect(posx, posy, freqsVis[i], 300);
    posx += freqsVis[i];
  }
  
  String textMax = "The most frequent letter is " + char(letterMax + ASCII_OFFSET) + ".";
  String textMin = "The least frequent letter is " + char(letterMin + ASCII_OFFSET) + ".";
  
  fill(255);
  stroke(255);
  text(textMax, 10, 370);
  text(textMin, 10, 390);
}