import 'package:flutter/material.dart';
import 'package:stream_builder/Task_1/task_1_stream.dart';

class TaskOneDemo extends StatelessWidget {
  const TaskOneDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Gender:',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              StreamBuilder(
                  stream:
                      StreamTaskOne.genderStreamController.asBroadcastStream(),
                  builder: (context, snapshot) {
                    return Radio(
                      value: StreamTaskOne.male,
                      groupValue: StreamTaskOne.grpvalue,
                      onChanged: (value) {
                        StreamTaskOne.genderControllervalue =
                            StreamTaskOne.grpvalue = value!;
                      },
                    );
                  }),
              const Text('Male'),
              StreamBuilder(
                  stream:
                      StreamTaskOne.genderStreamController.asBroadcastStream(),
                  builder: (context, snapshot) {
                    return Radio(
                      value: StreamTaskOne.female,
                      groupValue: StreamTaskOne.grpvalue,
                      onChanged: (value) {
                        StreamTaskOne.genderControllervalue =
                            StreamTaskOne.grpvalue = value!;
                      },
                    );
                  }),
              const Text('Female'),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Hobbies:',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: StreamTaskOne.iscricket,
                        onChanged: (value) {
                          StreamTaskOne.iscricket = value!;
                        },
                      ),
                      const Text('Cricket'),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: StreamTaskOne.isfootball,
                        onChanged: (value) {
                          StreamTaskOne.isfootball = value!;
                        },
                      ),
                      const Text('Football'),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: StreamTaskOne.isvolleyball,
                        onChanged: (value) {
                          StreamTaskOne.isvolleyball = value!;
                        },
                      ),
                      const Text('Volleyball'),
                    ],
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          StreamBuilder(
            stream: StreamTaskOne.genderStreamController,
            builder: (context, snapshot) => ElevatedButton(
                onPressed: () {
                  StreamTaskOne.grpvalue;
                },
                child: const Text('Submit')),
          ),
          const SizedBox(
            height: 10,
          ),
          // StreamBuilder(
          //   builder: (context, snapshot) => Container(
          //     height: 100,
          //     width: double.infinity,
          //     color: Colors.grey,
          //     child: Column(
          //       children: [Text('Gender: ${snapshot.data}')],
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
