import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:traver/core/utils/constants.dart';

class CurrentIndicator extends StatefulWidget {
  const CurrentIndicator({
    super.key,
  });

  @override
  State<CurrentIndicator> createState() => _CurrentIndicatorState();
}

class _CurrentIndicatorState extends State<CurrentIndicator> with SingleTickerProviderStateMixin{
  late AnimationController controller;

    late Animation animation;
  @override
  void initState() {
    _initAnimation();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Expanded(child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Stack(
        children: [
          const Divider(color: Colors.grey,thickness: 2,),
          LayoutBuilder(
            builder: (context, constraints) =>  Row(
              children: [
                const Expanded(child: Divider(color: Colors.white,thickness: 2.25,)),
                SizedBox(width: constraints.maxWidth*animation.value,),
              ],
            ),
          ),
        ],
      ),
    ));


  }
  _initAnimation()
  {
    controller=AnimationController(vsync: this,duration: Constants.onBoardingIndicatorDuration)..forward()..addListener(()=>setState(() {
    }));
    animation=Tween<double>(begin: 1,end: .5).animate(controller);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
