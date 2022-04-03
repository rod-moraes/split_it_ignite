import 'dart:math';

import 'package:flutter/material.dart';

abstract class AppGradients {
  Gradient get background;
  Gradient get box;
  Gradient get boxInvert;
}

class AppGradientsDefault implements AppGradients {
  @override
  Gradient get background => const LinearGradient(
        colors: [Color(0xFF40B28C), Color(0xFF45CC93)],
        stops: [0, 1],
        transform: GradientRotation((135 / 180) * pi * pi),
      );

  @override
  Gradient get box => const LinearGradient(
        colors: [Color(0xFF00FF94), Color(0x0040B28C)],
        stops: [0.3, 1],
        transform: GradientRotation(pi),
      );

  @override
  Gradient get boxInvert => const LinearGradient(
        colors: [Color(0x0040B28C), Color(0xFF00FF94)],
        stops: [0, 0.7],
        transform: GradientRotation(pi),
      );
}
