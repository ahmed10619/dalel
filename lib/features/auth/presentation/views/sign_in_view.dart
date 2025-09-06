import 'package:dalel/core/functions/app_functions.dart';
import 'package:dalel/core/routers/app_routers.dart';
import 'package:dalel/features/auth/presentation/widgets/custom_bar_welcome.dart';
import 'package:dalel/features/auth/presentation/widgets/custom_row_have_account.dart';
import 'package:dalel/features/auth/presentation/widgets/custom_signin_form.dart';
import 'package:dalel/features/auth/presentation/widgets/custom_text.dart';

import 'package:dalel/core/utils/app_strings.dart';

import 'package:flutter/material.dart';

class SignInview extends StatelessWidget {
  const SignInview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          const SliverToBoxAdapter(
            child: CustomBarWelcome(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 32,
            ),
          ),
          const SliverToBoxAdapter(
            child: CustomText(text: AppStrings.welcomeBack),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: CustomSignInForm(),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 16,
            ),
          ),
          SliverToBoxAdapter(
            child: RowAlreadyHaveAccountOrNotWidget(
                text: AppStrings.dontHaveAnAccount,
                textButton: AppStrings.signUp,
                onTap: () {
                  customNavigator(context, AppRouters().signUpView);
                }),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 16,
            ),
          ),
        ],
      ),
    );
  }
}
