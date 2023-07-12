import 'package:flutter/material.dart';
import 'package:layouts/provider/screen_07_provider.dart';
import 'package:provider/provider.dart';

class Screen07 extends StatefulWidget {
  const Screen07({super.key});

  @override
  State<Screen07> createState() => _Screen07State();
}

class _Screen07State extends State<Screen07> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<Screen07Provider>(builder: ((context, value, child) {
            return Slider(
              min: 0,
              max: 1,
              value: value.value,
              onChanged: (val) {
                value.setValue(val);
              },
            );
          })),
          Consumer<Screen07Provider>(builder: ((context, value, child) {
            return Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    color: Colors.green.withOpacity(value.value),
                    child: const Center(
                      child: Text(
                        "Container 1",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    color: Colors.red.withOpacity(value.value),
                    child: const Center(
                      child: Text(
                        "Container 2",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                ),
              ],
            );
          })),
        ],
      ),
    );
  }
}
