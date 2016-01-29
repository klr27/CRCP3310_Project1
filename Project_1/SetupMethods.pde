
void setupVis() {
  reader = createReader(FILE_NAME);
  try {
    int character;
    int pixelCount = 0;
    while ((character = reader.read()) != -1) {
      if (!Character.isAlphabetic(character)) {
        colorBlack(pixelCount);
      } else {
        character = Character.toLowerCase(character);
        colorPixel(character, pixelCount);
        countFrequency(character);
        checkAlice();
      }
      pixelCount++;
    }
  } 
  catch (IOException e) {
    println("Error");
    e.printStackTrace();
  }
}

void colorBlack(int pixelNumber) {
  letterVis.pixels[pixelNumber] = color(0);
}

void colorPixel(int letter, int pixelNumber) {
  letterVis.pixels[pixelNumber] = palette[letter - ASCII_OFFSET];
}

void countFrequency(int letter) {
  freqs[letter - ASCII_OFFSET]++;
}

void checkAlice() {
  //??? looking ahead - how to do this
}

void findMin(int [26] frequencies, int min) {
  min = frequencies[0];
  for (int i=1; i<26; i++) {
    if (frequencies[i] < min) {
      min = frequencies[i];
    } else continue;
  }
}

void findMax(int [26] frequencies, int max) {
  max = frequencies[0];
  for (int i=1; i<26; i++) {
    if (frequencies[i] > max) {
      max = frequencies[i];
    } else continue;
  }
}