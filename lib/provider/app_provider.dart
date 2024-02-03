import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier {
  AppProvider() {
    checkLike();
    notifyListeners();
  }

// count
  int countLikes = 0;

  // for clicking like
  bool isClicked = false;

  // for dark appereance
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
