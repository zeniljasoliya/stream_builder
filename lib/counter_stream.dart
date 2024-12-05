import 'package:flutter/material.dart';
import 'package:stream_builder/c_stream.dart';

class CounterStreamDemo extends StatelessWidget {
  const CounterStreamDemo({super.key});

  @override
  Widget build(BuildContext context) {
    int count = 0;

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          CounterStream.countvalue = ++count;
        },
        child: const Icon(Icons.add),
      ),
      body: Center(
          child: StreamBuilder(
        initialData: 'Zenil Jasoliya',
        stream: CounterStream.counterStream,
        builder: (context, snapshot) =>
            Text(snapshot.data != null ? snapshot.data.toString() : '0'),
      )),
    );
  }
}
