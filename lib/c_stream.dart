import 'dart:async';

class CounterStream {
  static StreamController<int> _counterstreamController =
      StreamController<int>();
  static Stream<int> get counterStream => _counterstreamController.stream;
  static Sink<int> get _countersink => _counterstreamController.sink;

  static set countvalue(int data) => _countersink.add(data);
}
