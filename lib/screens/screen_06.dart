import 'dart:async';

import 'package:flutter/material.dart';
import 'package:layouts/provider/screen_06_provider.dart';
import 'package:provider/provider.dart';

/* Provider */

class Screen06 extends StatefulWidget {
  const Screen06({super.key});

  @override
  State<Screen06> createState() => _Screen06State();
}

class _Screen06State extends State<Screen06> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final screen06Provider = Provider.of<Screen06Provider>(context, listen: false);
    Timer.periodic(Duration(seconds: 1), (timer) {
      screen06Provider.setCount();
    });
  }

  @override
  Widget build(BuildContext context) {
    final screen06Provider = Provider.of<Screen06Provider>(context, listen: false);
    print("whole widget gets rebuilt");
    return Scaffold(
      body: Center(
          child: Consumer<Screen06Provider>(builder: (context, value, string) {
        print("Only this widget gets rebuilt");
        return Text(
          screen06Provider.count.toString(),
          style: const TextStyle(fontSize: 60),
        );
      })),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          screen06Provider.setCount();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
