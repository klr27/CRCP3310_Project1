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