import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier {
  AppProvider() {
    checkLike();
    notifyListeners();
  }

  int countLikes = 0;
  bool isClicked = false;
  bool isDark = false;



  bool checkLike() {
    if (countLikes <= 0) {
      return true;
    } else {
      return false;
    }
  }

  // count likes

  void like() {
    isClicked = !isClicked;
    countLikes++;
    notifyListeners();
  }

  // count dislikes

  void dislike() {
    isClicked = !isClicked;
    countLikes--;
    notifyListeners();
  }

  // appereance switcher
  void appereance() {
    isDark = !isDark;
    notifyListeners();
  }
}
