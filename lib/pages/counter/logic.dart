import 'package:get/get.dart';

import 'state.dart';

class CounterLogic extends GetxController {
  final CounterState state = CounterState();
  /// .obs makes the  variable reactive
  var counter=0.obs;

  void increment(){

    counter.value+=2;
  }
}
