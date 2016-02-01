void initializeLetterVis() {
  letterVis = new PImage(420, 420, RGB);
  letterVis.loadPixels();
}

void initializeFreqs() {
  for (int i=0; i < 26; i++) {
    freqs[i] = 0;
  }
}

void initializePalette() {
  palette[0] = color(255,0,0); //a
  palette[1] = color(255,200,255); //b
  palette[2] = color(0,255,0); //c
  palette[3] = color(255,162,165); //d
  palette[4] = color(0,200,255); //e
  palette[5] = color(171,234,38); //f
  palette[6] = color(150,150,150); //g
  palette[7] = color(255,0,255); //h
  palette[8] = color(255,255,0); //i
  palette[9] = color(230,162,255); //j
  palette[10] = color(50,150,130); //k
  palette[11] = color(255,155,0); //l
  palette[12] = color(14,193,48); //m
  palette[13] = color(157,253,255); //n
  palette[14] = color(0,0,255); //o
  palette[15] = color(201,8,8); //p
  palette[16] = color(160,215,255); //q
  palette[17] = color(0,255,215); //r
  palette[18] = color(15,140,5); //s
  palette[19] = color(255,210,0); //t
  palette[20] = color(175,0,255); //u
  palette[21] = color(34,37,175); //v
  palette[22] = color(255,250,200); //w
  palette[23] = color(147,0,5); //x
  palette[24] = color(173,122,122); //y
  palette[25] = color(255,200,250); //z
  
  
}