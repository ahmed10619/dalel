import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/custom_text_style.dart';
import 'package:dalel/features/auth/presentation/widgets/custom_forget_form.dart';
import 'package:dalel/features/auth/presentation/widgets/custom_forget_image.dart';
import 'package:dalel/features/auth/presentation/widgets/custom_text.dart';
import 'package:dalel/features/auth/presentation/widgets/custom_text_forget_view.dart';
import 'package:flutter/material.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 108,
            ),
          ),
          SliverToBoxAdapter(
            child: CustomText(text: AppStrings.forgotPassword),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 40,
            ),
          ),
          SliverToBoxAdapter(
            child: CustomForgetImage(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 24,
            ),
          ),
          SliverToBoxAdapter(
            child: CustomTextForgetView(),
          ),
          SliverToBoxAdapter(
            child: CustomForgetPasswordForm(),
          ),
        ],
      ),
    );
  }
}
