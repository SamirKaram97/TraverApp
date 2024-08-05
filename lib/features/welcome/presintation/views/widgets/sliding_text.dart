
import 'package:flutter/material.dart';

import '../../../../../core/utils/strings.dart';
class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: slidingAnimation,
            child: const Text(
              AppStrings.traver,
              textAlign: TextAlign.center,
            ),
          );
        });
  }
}
