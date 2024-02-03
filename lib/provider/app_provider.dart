import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier {
  int countLikes = 0;
  bool isClicked = false;
  bool isDark = false;

  bool checkLike() {
    return countLikes <= 0;
  }

  void like() {
    if (isClicked) {
      isClicked = !isClicked;
      countLikes--;
      notifyListeners();
    } else {
      isClicked = !isClicked;
      countLikes++;
      notifyListeners();
    }
  }

  // void dislike() {
  //   isClicked = !isClicked;
  //   countLikes--;
  //   notifyListeners();
  // }

  void appereance() {
    isDark = !isDark;
    notifyListeners();
  }
}
