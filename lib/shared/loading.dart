import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.brown,
      child: const Center(
          child: SpinKitChasingDots(
        color: Color.fromARGB(255, 255, 255, 255),
        size: 50.0,
      )),
    );
  }
}
