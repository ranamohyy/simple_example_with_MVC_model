import 'package:mvc_example_project/model/counter_model.dart';

class CounterController {
  CounterModel model = CounterModel();
  CounterController(this.model);
  void increment() {
    model.increment();
  }

  void decrement() {
    model.decrement();
  }

  void reset() {
    model.reset();
  }
}
