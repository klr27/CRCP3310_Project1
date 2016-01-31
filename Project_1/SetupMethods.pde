
void setupVis() {
  reader = createReader(FILE_NAME);
  try {
    int character;
    int pixelCount = 0;
    int positionCount = 0;
    aliceCount = 0;
    while ((character = reader.read()) != -1) {
      if (!Character.isAlphabetic(character)) {
        colorBlack(pixelCount);
      } else {
        int letter = Character.toLowerCase(character);
        colorPixel(letter, pixelCount);
        countFrequency(letter);
        if (character == 65) {
          checkAlice(positionCount);
        }
      }
      pixelCount++;
      positionCount++;
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

void checkAlice(int pos) {
  String compare = "A"; 
  try {
    reader.mark(4);
    for (int i=0; i<4; i++) {
      compare += char(reader.read());
    }
    if (compare == alice) {
      aliceCount += 1;
      highlightAlice(pos);
    }
    reader.reset();
  }
  catch (IOException e) {
    println("Error");
    e.printStackTrace();
  }
}

void highlightAlice(int pos) {
  for (int i=0; i<5; i++) {
    letterVis.pixels[pos + i] = color(red(letterVis.pixels[pos + i]), green(letterVis.pixels[pos + i]), blue(letterVis.pixels[pos + i]), 150);
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