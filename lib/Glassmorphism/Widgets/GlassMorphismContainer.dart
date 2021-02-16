import 'dart:ui';

import 'package:flutter/material.dart';

class GlassMorphismContainer extends StatelessWidget {
  final Widget child;
  final double height;
  final double width;
  final double borderRadius;
  const GlassMorphismContainer({
    Key key,
    this.child,
    this.height,
    this.width,
    this.borderRadius = 20.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(
        Radius.circular(borderRadius),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
        child: Container(
          height: this.height,
          width: this.width,
          decoration: BoxDecoration(
            gradient: RadialGradient(
              radius: 50,
              colors: [
                Colors.white.withOpacity(0.20),
                Colors.white.withOpacity(0.1),
              ],
            ),
          ),
          child: this.child,
        ),
      ),
    );
  }
}
