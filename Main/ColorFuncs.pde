void colorBlack(int pixelNumber) {
  letterVis.pixels[pixelNumber] = color(255);
  letterVis.pixels[pixelNumber + 1] = color(255);
  letterVis.pixels[pixelNumber + 2] = color(255);
}


void colorPixel(int letter, int pixelNumber) {
  letterVis.pixels[pixelNumber] = palette[letter - ASCII_OFFSET];
  letterVis.pixels[pixelNumber + 1] = palette[letter - ASCII_OFFSET];
  letterVis.pixels[pixelNumber + 2] = palette[letter - ASCII_OFFSET];
}


void colorAlice(int [] pos) {
  for (int i=0; i<402; i++) {
    letterVis.pixels[pos[i]] = color(0);
    letterVis.pixels[pos[i] + 1] = color(0);
    letterVis.pixels[pos[i] + 2] = color(0);
    letterVis.pixels[pos[i] + 3] = color(0);
    letterVis.pixels[pos[i] + 4] = color(0);
    letterVis.pixels[pos[i] + 5] = color(0);
    letterVis.pixels[pos[i] + 6] = color(0);
    letterVis.pixels[pos[i] + 7] = color(0);
    letterVis.pixels[pos[i] + 8] = color(0);
    letterVis.pixels[pos[i] + 9] = color(0);
    letterVis.pixels[pos[i] + 10] = color(0);
    letterVis.pixels[pos[i] + 11] = color(0);
    letterVis.pixels[pos[i] + 12] = color(0);
    letterVis.pixels[pos[i] + 13] = color(0);
    letterVis.pixels[pos[i] + 14] = color(0);
  }
}