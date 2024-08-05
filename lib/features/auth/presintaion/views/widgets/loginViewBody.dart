import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:traver/core/utils/functions/service_locator.dart';
import 'package:traver/core/utils/shared_pref_helper.dart';
import 'package:traver/core/utils/strings.dart';
import 'package:traver/core/widgets/app_button.dart';
import '../../../../../core/utils/assets.dart';
import 'forgot_password_button.dart';
import 'login_input_data_section.dart';

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
          SizedBox(height: MediaQuery.sizeOf(context).height*0.2),
          SvgPicture.asset(AssetsData.logoWhite,),
          const SizedBox(height: 72,),
          const LoginInputDataSection(),
          const ForgotPasswordButton(),
          const Spacer(),
          AppButton(text: AppStrings.createAccount, onPressed: (){},color: Colors.white,),
          AppButton(text: AppStrings.signIn, onPressed: (){
          }),
          SizedBox(height: MediaQuery.sizeOf(context).height*0.1),
        ],
      ),
    );
  }
}
