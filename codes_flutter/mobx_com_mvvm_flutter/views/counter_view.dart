import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'counter_viewmodel.dart';

class CounterView extends StatelessWidget {
  final CounterViewModel _viewModel =
      Get.put(CounterViewModel()); // Injeção de dependência do viewmodel
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exemplo MVVM com GetX'),
      ),
      body: Center(
        child: Obx(() => Text(
              'Contador: ${_viewModel.counter.value.count}',
              style: TextStyle(fontSize: 24),
            )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _viewModel.increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
