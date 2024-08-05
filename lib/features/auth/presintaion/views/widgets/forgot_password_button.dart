
import 'package:flutter/material.dart';
import 'package:traver/core/utils/strings.dart';
import 'package:traver/core/utils/styles.dart';

class ForgotPasswordButton extends StatelessWidget {
  const ForgotPasswordButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  InkWell(child: Padding(
      padding: const EdgeInsets.all(4.0),
      child: Align(alignment: AlignmentDirectional.centerEnd,child: Text(AppStrings.forgotPassword,style: Styles.textStyleNormal14(context),)),
    ));
  }
}
