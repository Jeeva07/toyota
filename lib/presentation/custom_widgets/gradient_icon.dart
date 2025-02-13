import 'package:flutter/material.dart';
import 'package:toyota/utils/app_properties.dart';

class GradientIcon extends StatelessWidget {
  final IconData icon;
  final bool selected;

  const GradientIcon({super.key, required this.icon, required this.selected});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return LinearGradient(
          colors: AppProperties.headerGradientColors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ).createShader(bounds);
      },
      child: Icon(icon, size: selected ? 35 : 30, color: Colors.white),
    );
  }
}
