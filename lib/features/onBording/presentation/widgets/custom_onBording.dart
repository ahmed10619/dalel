import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/core/utils/custom_text_style.dart';
import 'package:dalel/features/onBording/data/models/on_bording.dart';
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
          itemCount: onBordingData.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  height: 220,
                  width: 280,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(onBordingData[index].image),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                CustomSmoothPageIndicator(
                  controller: _controller,
                ),
                const SizedBox(
                  height: 32,
                ),
                Text(
                  onBordingData[index].title,
                  style: CustomTextStyle.Poppins500Style22,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 14,
                ),
                Text(
                  onBordingData[index].subTitle,
                  style: CustomTextStyle.Poppins300Style14.copyWith(
                    color: Colors.black.withOpacity(0.5),
                  ),
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
