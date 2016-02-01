void mouseClicked() {
  state = (state + 1) % 2;
}

void drawLetterVis() {
  background(0);
  image(letterVis, 0, 0);

  String textAlice = "Alice is presented " + aliceCount + " times.";
  fill(255);
  textSize(14);
  text(textAlice, 20, 590);
}

void drawFreqVis() {
  background(0);
  float posx = 20;
  float posy = 50;
  textSize(14);
  
  for (int i=0; i<26; i++) {
    fill(palette[i]);
    text(char(i + ASCII_OFFSET), (i * 34) + 20, 20);
    noStroke();
    rect(posx, posy, freqsVis[i], 500);
    posx += freqsVis[i];
  }

  String textMax = "The most frequent letter is " + char(letterMax + ASCII_OFFSET) + ".";
  String textMin = "The least frequent letter is " + char(letterMin + ASCII_OFFSET) + ".";
  fill(255);
  stroke(255);
  text(textMax, 20, 570);
  text(textMin, 20, 590);
}