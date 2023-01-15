import 'package:bansosku/pages/hasil_data/hasil_data_screen.dart';
import 'package:flutter/material.dart';

Route customSlideTransition() {
  // final Widget direction;

  // customSlideTransition({
  //   required this.direction,
  // });

  return PageRouteBuilder(
    pageBuilder: (context, a, b) => const HasilDataScreen(),
    transitionDuration: const Duration(milliseconds: 100),
    transitionsBuilder: (context, a, b, c) => SlideTransition(
      position:
          Tween(begin: const Offset(1.0, 0.0), end: const Offset(0.0, 0.0))
              .animate(a),
      child: c,
    ),
  );
}
