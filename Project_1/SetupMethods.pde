
void setupVis() {
  reader = createReader(FILE_NAME);
  try {
    int character;
    int pixelCount = 0;
    aliceCount = 0;
    while ((character = reader.read()) != -1) {
      if (!Character.isAlphabetic(character)) {
        colorBlack(pixelCount);
      } else {
        int letter = Character.toLowerCase(character);
        colorPixel(letter, pixelCount);
        countFrequency(letter);
        if (character == 65) {
          checkAlice(pixelCount);
        }
      }
      //pixelCount++;
      pixelCount += 3;
    }
  } 
  catch (IOException e) {
    println("Error");
    e.printStackTrace();
  }
}

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

void countFrequency(int letter) {
  freqs[letter - ASCII_OFFSET]++;
}

void checkAlice(int pos) {
  String compare = "A"; 
  try {
    reader.mark(4);
    for (int i=0; i<4; i++) {
      compare += char(Character.toLowerCase(reader.read()));
      if (compare.equals(alice)) {
        aliceCount += 1;
        alicePos[aliceCount - 1] = pos;
      }
    }
    reader.reset();
  }
  catch (IOException e) {
    println("Error");
    e.printStackTrace();
  }
}

void highlightAlice(int [] pos) {
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

void setupFreqsVis() {
  for (int i=0; i<26; i++) {
    letterTotal += freqs[i];
  }
  for (int i=0; i<26; i++) {
    freqsVis[i] = (freqs[i] / letterTotal) * 860;
  }
}