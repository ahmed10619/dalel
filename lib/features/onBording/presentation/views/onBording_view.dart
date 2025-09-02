import 'package:dalel/features/onBording/data/models/on_bording.dart';
import 'package:dalel/features/onBording/presentation/widgets/custom_get_button.dart';
import 'package:dalel/features/onBording/presentation/widgets/custom_onBording.dart';
import 'package:dalel/features/onBording/presentation/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';

class OnBordingView extends StatefulWidget {
  const OnBordingView({super.key});

  @override
  State<OnBordingView> createState() => _OnBordingViewState();
}

class _OnBordingViewState extends State<OnBordingView> {
  final PageController _controller = PageController(initialPage: 0);
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ListView(
            children: [
              const SizedBox(height: 20),
              currentIndex == onBordingData.length - 1
                  ? Container(
                      height: 47,
                    )
                  : Align(
                      alignment: Alignment.topRight,
                      child: CustomTextButton(
                        onPressed: () {
                          _controller.jumpToPage(2);
                        },
                        text: "Skip",
                      ),
                    ),
              OnBordingBody(
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                controller: _controller,
              ),
              const SizedBox(height: 10),
              CustomGetButton(
                  currentIndex: currentIndex, controller: _controller),
              const SizedBox(height: 17),
            ],
          ),
        ),
      ),
    );
  }
}
