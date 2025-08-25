import 'package:dalel/core/widget/custom_button.dart';
import 'package:dalel/features/onBording/presentation/widgets/custom_onBording.dart';
import 'package:dalel/features/onBording/presentation/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';

class OnBordingView extends StatelessWidget {
  const OnBordingView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            const SizedBox(height: 40),
            const Align(
              alignment: Alignment.topRight,
              child: CustomTextButton(
                text: "Skip",
              ),
            ),
            OnBordingBody(),
            const SizedBox(height: 88),
            const CustomButton(
              text: 'Next',
            ),
            const SizedBox(height: 17),
          ],
        ),
      ),
    );
  }
}
