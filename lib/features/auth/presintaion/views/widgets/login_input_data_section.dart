
import 'package:flutter/material.dart';
import 'package:traver/core/utils/strings.dart';

class LoginInputDataSection extends StatelessWidget {
  const LoginInputDataSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(decoration: const InputDecoration(labelText: AppStrings.email),),
        const SizedBox(height: 28,),
        TextFormField(decoration: const InputDecoration(labelText: AppStrings.password),),
      ],
    );
  }
}
