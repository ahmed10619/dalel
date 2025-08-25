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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ListView(
            children: [
              const SizedBox(height: 20),
              const Align(
                alignment: Alignment.topRight,
                child: CustomTextButton(
                  text: "Skip",
                ),
              ),
              OnBordingBody(),
              const SizedBox(height: 10),
              const CustomButton(
                text: 'Next',
              ),
              const SizedBox(height: 17),
            ],
          ),
        ),
      ),
    );
  }
}
