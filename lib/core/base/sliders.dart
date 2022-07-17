class Sliders {
  static String slide(String text, int slipNumber) {
    int len = text.length;
    for (int i = 0; i < slipNumber; i++) {
      text = text[len - 1] + text.substring(0, len - 1);
    }
    return text;
  }

  static String reSlide(String text, int slipNumber) {
    int len = text.length;
    for (int i = 0; i < slipNumber; i++) {
      text = text.substring(1, len) + text[0];
    }
    return text;
  }
}
