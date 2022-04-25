import 'dart:math';

import 'package:flutter/material.dart';

class BackGround extends StatelessWidget {
  const BackGround({Key? key}) : super(key: key);
  final boxDecoration = const BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.2, 0.8],
          colors: [Color(0xff2E305F), Color(0xff202333)]));

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //Purple radian
        Container(
          height: double.infinity,
          decoration: boxDecoration,
        ),
        const Positioned(top: -100, left: -30, child: _PickBox())
      ],
    );
  }
}

class _PickBox extends StatelessWidget {
  const _PickBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi / 5,
      child: Container(
        width: 360,
        height: 360,
        decoration: BoxDecoration(
            gradient: const LinearGradient(colors: [
              Color.fromRGBO(236, 98, 188, 1),
              Color.fromRGBO(251, 141, 172, 1)
            ]),
            borderRadius: BorderRadiusDirectional.circular(80)),
      ),
    );
  }
}
