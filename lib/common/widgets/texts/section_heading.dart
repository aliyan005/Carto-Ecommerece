import 'package:flutter/material.dart';

class ESectionHeading extends StatelessWidget {
  const ESectionHeading({
    super.key,
    this.showButton = true,
    this.textColor,
    required this.text,
    this.buttonText = 'view all',
    this.onPressed,
  });

  final bool showButton;
  final Color? textColor;
  final String text, buttonText;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: textColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showButton)
          TextButton(onPressed: onPressed, child: Text(buttonText))
      ],
    );
  }
}
