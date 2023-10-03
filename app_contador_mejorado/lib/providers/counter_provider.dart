import 'package:flutter/material.dart';

class CounterProvider with ChangeNotifier{
  int _counter = 0;
  int get counter=> _counter; //variable publica
   
  void increment(){
    _counter++;
    notifyListeners();//le avisa a los listerners que cambio un dato
  }

   void decrement(){
    _counter--;
    notifyListeners();//le avisa a los listerners que cambio un dato
  }

   void reset0(){
    _counter = 0;
    notifyListeners();//le avisa a los listerners que cambio un dato
  }

  void multiDos(){
    _counter = _counter*2;
    notifyListeners();//le avisa a los listerners que cambio un dato
  }

  void multiCinco(){
    _counter =_counter*5;
    notifyListeners();//le avisa a los listerners que cambio un dato
  }

  void multiTres(){
    _counter =_counter*3;
    notifyListeners();//le avisa a los listerners que cambio un dato
  }


  

}