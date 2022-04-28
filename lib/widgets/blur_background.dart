import 'dart:ui';

import 'package:flutter/material.dart';

const EdgeInsetsGeometry defaultPadding = EdgeInsets.all(16);
const Color defaultColor = Colors.transparent;
const BorderRadius defayultBorderRadius = BorderRadius.all(Radius.circular(20));

class BlurBackground extends StatelessWidget {
  const BlurBackground({
    Key? key,
    required this.child,
    this.blur = 10,
    required this.height,
    this.width = double.infinity,
    this.padding = defaultPadding,
    this.backGroundColor = defaultColor,
    this.margin = EdgeInsets.zero,
    this.borderRadius = defayultBorderRadius,
  }) : super(key: key);

  final Widget child;
  final double blur;
  final double? height, width;
  final EdgeInsetsGeometry padding;
  final Color backGroundColor;
  final BorderRadius borderRadius;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: ClipRRect(
        borderRadius: borderRadius,
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
          child: Container(
            height: height!,
            width: width!,
            padding: padding,
            color: backGroundColor == Colors.transparent
                ? backGroundColor
                : backGroundColor.withOpacity(0.5),
            child: child,
          ),
        ),
      ),
    );
  }
}
