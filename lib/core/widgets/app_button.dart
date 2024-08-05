
import 'package:flutter/material.dart';

import '../theme/colors.dart';
import '../utils/styles.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key, this.onPressed, required this.text,this.color,
  });
  final VoidCallback? onPressed;
  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return TextButton(style: TextButton.styleFrom(
      backgroundColor: color,
          foregroundColor: color == null ? Colors.white : Colors.black,
    ),
      onPressed: onPressed,
      child:  Text(
        text,
      ),
    );
  }
}
