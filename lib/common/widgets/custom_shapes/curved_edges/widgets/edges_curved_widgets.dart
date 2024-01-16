import 'package:ecommerece/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:flutter/material.dart';

class ECurvedPath extends StatelessWidget {
  const ECurvedPath({
    super.key,
    this.child,
  });
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ECustomCurvedShape(),
      child: child,
    );
  }
}