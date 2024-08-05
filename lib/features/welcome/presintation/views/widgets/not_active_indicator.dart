import 'package:flutter/material.dart';

class NotActiveIndicator extends StatelessWidget {
  const NotActiveIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.0),
      child: Stack(
        children: [
          Divider(color: Colors.grey,thickness: 2,),
        ],
      ),
    ));
  }
}