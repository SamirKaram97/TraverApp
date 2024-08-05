import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/on_boarding_cubit/on_boarding_cubit.dart';
import 'active_indicator.dart';
import 'current_indicator.dart';
import 'not_active_indicator.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator({super.key});


  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<OnBoardingCubit, OnBoardingState>(
  builder: (context, state) {
     int currentIndex=BlocProvider.of<OnBoardingCubit>(context).currentIndex;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0,vertical: 66.0+ MediaQuery.sizeOf(context).height*0.1),
      child:  Align(alignment: Alignment.bottomCenter,child: Row(
        children: [
          for(int i=0;i<3;i++)
            currentIndex>i?const ActiveIndicator():currentIndex==i?const CurrentIndicator():const NotActiveIndicator()
        ],
      ),),
    );
  },
);
  }
}
