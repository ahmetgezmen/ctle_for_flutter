import 'package:ctle/core/base/char_list.dart';

class Cylinder{

  static String fuse(String text, int charlistNumber1, int charlistNumber2, int slideNumberOne, int slideNumberTwo){

    String outText='';

    Map<int, String> charMap1 = CharList.slideCharListAsMap(charlistNumber1, slideNumberOne);
    Map<int, String> charMap2 = CharList.reSlideCharListAsMap(charlistNumber2, slideNumberTwo);

    text.split('').forEach((element) {
      int index = charMap1.keys.firstWhere((e) =>  charMap1[e]==element);
      if (charMap1[index]!=null){
        outText = outText + charMap2[index].toString();
      }
    });
    return outText;
  }
  static String reFuse(String text, int charlistNumber1, int charlistNumber2, int slideNumberOne, int slideNumberTwo){

    String outText='';

    Map<int, String> charMap1 = CharList.reSlideCharListAsMap(charlistNumber1, slideNumberOne);
    Map<int, String> charMap2 = CharList.slideCharListAsMap(charlistNumber2, slideNumberTwo);

    text.split('').forEach((element) {
      int index = charMap2.keys.firstWhere((e) =>  charMap2[e]==element);
      if (charMap2[index]!=null){
        outText = outText + charMap1[index].toString();
      }
    });

    return outText;

  }

}


