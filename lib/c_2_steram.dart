import 'dart:async';

class CounterStreamtwo {
  static final StreamController<int> _counterstreamController =
      StreamController<int>();
  static Stream<int> get counterStream => _counterstreamController.stream;
  static Sink<int> get _countersink => _counterstreamController.sink;

  static final StreamController<int> _countertwostreamController =
      StreamController<int>();
  static Stream<int> get countertwoStream => _countertwostreamController.stream;
  static Sink<int> get _countertwosink => _countertwostreamController.sink;

  static set addonecountvalue(int data) => _countersink.add(data);
  static set addtwocountvalue(int data) => _countersink.add(data);
}
