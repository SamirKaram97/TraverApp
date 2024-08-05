import 'package:flutter/material.dart';

class ActiveIndicator extends StatelessWidget {
  const ActiveIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.0),
      child: Stack(
        children: [
          Divider(color: Colors.white,thickness: 2,),
        ],
      ),
    ));
  }
}
