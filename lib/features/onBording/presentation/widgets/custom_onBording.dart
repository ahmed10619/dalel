import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/core/utils/custom_text_style.dart';
import 'package:dalel/features/onBording/presentation/widgets/custom_smooth_page_indicator.dart';
import 'package:flutter/material.dart';

class OnBordingBody extends StatelessWidget {
  OnBordingBody({super.key});
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: PageView.builder(
          physics: const BouncingScrollPhysics(),
          controller: _controller,
          itemCount: 3,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  height: 250,
                  width: 300,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(Assets.assetsImagesOnBoarding1),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                CustomSmoothPageIndicator(
                  controller: _controller,
                ),
                const Text(
                  "Explore The history withDalel in a smart way",
                  style: CustomTextStyle.Poppins500Style24,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  "Using our app’s history libraries you can find many historical periods ",
                  style: CustomTextStyle.Poppins300Style16,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                ),
              ],
            );
          }),
    );
  }
}
