import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:traver/core/widgets/app_button.dart';
import '../../../../../core/utils/assets.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(AssetsData.logoWhite,),
          const SizedBox(height: 72,),
          TextFormField(decoration: const InputDecoration(labelText: "Email"),),
          const SizedBox(height: 32,),
          TextFormField(decoration: const InputDecoration(labelText: "Password"),),
          const SizedBox(height: 24,),
          const Text("dsadsa"),
          AppButton(text: "text", onPressed: (){},color: Colors.white,),
          AppButton(text: "text", onPressed: (){}),
        ],
      ),
    );
  }
}
