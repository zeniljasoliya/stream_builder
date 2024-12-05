import 'package:flutter/material.dart';
import 'package:stream_builder/c_2_steram.dart';

class CounttowDemo extends StatelessWidget {
  const CounttowDemo({super.key});

  @override
  Widget build(BuildContext context) {
    int count = 0;
    int counttwo = 0;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                  onPressed: () {
                    CounterStreamtwo.addonecountvalue = --count;
                  },
                  icon: const Icon(Icons.remove)),
              StreamBuilder(
                stream: CounterStreamtwo.counterStream,
                builder: (context, snapshot) => Text(
                    snapshot.data != null ? snapshot.data.toString() : '0'),
              ),
              IconButton(
                  onPressed: () {
                    CounterStreamtwo.addonecountvalue = ++count;
                  },
                  icon: const Icon(Icons.add))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {
                    CounterStreamtwo.addtwocountvalue = counttwo -= 2;
                  },
                  icon: const Icon(Icons.remove)),
              StreamBuilder(
                stream: CounterStreamtwo.countertwoStream,
                builder: (context, snapshot) => Text(
                    snapshot.data != null ? snapshot.data.toString() : '0'),
              ),
              IconButton(
                  onPressed: () {
                    CounterStreamtwo.addtwocountvalue = counttwo += 2;
                  },
                  icon: const Icon(Icons.add))
            ],
          )
        ],
      ),
    );
  }
}
