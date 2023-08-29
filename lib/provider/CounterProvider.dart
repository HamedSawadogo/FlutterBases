
import 'package:flutter/cupertino.dart';

class CounterProvider extends ChangeNotifier{
   int compteur=0;
   List<double>numbers=[];

   void addNumber(double number){
     numbers.add(number);
     notifyListeners();
   }
   void clear(){
     numbers.clear();
     notifyListeners();
   }
   void incrementer(){
     compteur++;
     notifyListeners();
   }
   void decrementer(){
     compteur--;
     notifyListeners();
   }

}