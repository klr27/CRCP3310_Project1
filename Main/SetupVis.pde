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
      pixelCount += 3;
    }
  } 
  catch (IOException e) {
    println("Error");
    e.printStackTrace();
  }
}