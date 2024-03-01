import 'package:ecommerece/common/widgets/custom_shapes/containers/custom_circle.dart';
import 'package:ecommerece/common/widgets/custom_shapes/curved_edges/widgets/edges_curved_widgets.dart';
import 'package:ecommerece/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class EPrimaryHeaderContent extends StatelessWidget {
  const EPrimaryHeaderContent({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ECurvedPath(
      child: Container(
        color: Ecolors.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 380,
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: CustomShape(
                  color: Ecolors.textWhite.withOpacity(0.1),
                ),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: CustomShape(
                  color: Ecolors.textWhite.withOpacity(0.1),
                ),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
