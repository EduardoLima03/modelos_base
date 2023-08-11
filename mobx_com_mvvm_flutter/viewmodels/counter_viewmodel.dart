import 'package:get/get.dart';

class CounterViewModel extends GetxController {
  var counter = CounterModel(count: 0).obs;

  void increment() {
    counter.update((model) {
      model!.count++;
    });
  }
}
