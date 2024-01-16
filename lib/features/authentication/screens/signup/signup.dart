import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/login_signup/form_divider.dart';
import 'package:t_store/common/widgets/login_signup/social_buttons.dart';
import 'package:t_store/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          // padding: const EdgeInsets.all(TSizes.defaultSpace),
          padding: const EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),

              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              // Form
              const TSignUpForm(),
              // Divider
              TFormDivider(
                dividerText: TTexts.orSignUpWith.capitalize!,
              ),
              const SizedBox(
                // height: TSizes.spaceBtwSections,
                height: 15,
              ),
              // Social Button
              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
