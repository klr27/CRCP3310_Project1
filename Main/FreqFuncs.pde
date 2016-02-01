void countFrequency(int letter) {
  freqs[letter - ASCII_OFFSET]++;
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