import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widget/custom_button.dart';
import 'package:dalel/features/auth/presentation/widgets/custom_agree_text.dart';
import 'package:dalel/features/auth/presentation/widgets/custom_row_have_account.dart';
import 'package:dalel/features/auth/presentation/widgets/custom_text.dart';
import 'package:dalel/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 157,
            ),
          ),
          const SliverToBoxAdapter(
            child: CustomText(text: AppStrings.welcome),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          const SliverToBoxAdapter(
            child: CustomTextField(
              text: AppStrings.fristName,
            ),
          ),
          const SliverToBoxAdapter(
            child: CustomTextField(
              text: AppStrings.lastName,
            ),
          ),
          const SliverToBoxAdapter(
            child: CustomTextField(
              text: AppStrings.emailAddress,
            ),
          ),
          const SliverToBoxAdapter(
            child: CustomTextField(
              text: AppStrings.password,
            ),
          ),
          const SliverToBoxAdapter(
            child: CustomAgreeText(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 88,
            ),
          ),
          SliverToBoxAdapter(
            child: CustomButton(text: AppStrings.signUp, onPressed: () {}),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 16,
            ),
          ),
          const SliverToBoxAdapter(
            child: RowAlreadyHaveAccountWidget(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 24,
            ),
          ),
        ],
      ),
    ));
  }
}
