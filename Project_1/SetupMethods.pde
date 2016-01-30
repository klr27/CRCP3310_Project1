
void setupVis() {
  reader = createReader(FILE_NAME);
  try {
    int character;
    int pixelCount = 0;
    while ((character = reader.read()) != -1) {
      if (!Character.isAlphabetic(character)) {
        colorBlack(pixelCount);
      } else {
        int letter = Character.toLowerCase(character);
        colorPixel(letter, pixelCount);
        countFrequency(letter);
        checkAlice(character);
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

void checkAlice(int character) {
  aliceCount = 0;
  if (character == 65) {
    try {
      reader.mark(4);
      for (int i=0; i<4; i++) {
      reader.read();
      }
    }
    catch (IOException e) {
      println("Error");
      e.printStackTrace();
    }
  }
}

void findMin(int [] frequencies) {
  int minCount = frequencies[0];
  letterMin = 0;
  for (int i=0; i<26; i++) {
    if (frequencies[i] < minCount) {
      minCount = frequencies[i];
      letterMin = i;
    }
  }
}

void findMax(int [] frequencies) {
  int maxCount = frequencies[0];
  letterMax = 0;
  for (int i=0; i<26; i++) {
    if (frequencies[i] > maxCount) {
      maxCount = frequencies[i];
      letterMax = i;
    }
  }
}