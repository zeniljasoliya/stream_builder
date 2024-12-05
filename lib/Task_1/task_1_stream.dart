import 'dart:async';

class StreamTaskOne {
  static String grpvalue = 'Gender', male = 'Male', female = 'Female';
  static bool iscricket = false,
      isfootball = false,
      isvolleyball = false,
      issubmitted = false;
  List<String> selectedhobby = [];

  static final StreamController<String> _genderstreamController =
      StreamController<String>.broadcast();
  static Stream<String> get genderStreamController =>
      _genderstreamController.stream;
  static StreamSink<String> get genderSinkController =>
      _genderstreamController.sink;
  static set genderControllervalue(String data) =>
      genderSinkController.add(data);

  // static final StreamController<bool> _streamSubmitController =
  //     StreamController<bool>.broadcast();
  // static Stream<bool> get submitStreamController =>
  //     _streamSubmitController.stream;
  // static Sink<bool> get submitSinkController => _streamSubmitController.sink;
  // static set submitControllerValue(bool data) => submitSinkController.add(data);
}
