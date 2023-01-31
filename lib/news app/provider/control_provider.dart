import 'package:flutter/material.dart';
import 'package:revision/news%20app/view/screens/berkingnews_screen.dart';
import 'package:revision/news%20app/view/screens/search_screen.dart';
import 'package:revision/news%20app/view/screens/sports_screen.dart';


class ControlProvider extends ChangeNotifier {

int currentindex=0;

Widget currentscreen=BreakingNewsScreen();

void changescreen(int index){
  currentindex=index;
  switch(index){
    case 0:
      currentscreen=BreakingNewsScreen();
      break;
    case 1:
      currentscreen=SearchScreen();
      break;
    case 2:
      currentscreen=SportsScreen();
      break;
  }
  notifyListeners();

}
}
