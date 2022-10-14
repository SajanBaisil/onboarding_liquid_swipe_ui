import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:onboarding_liquid_swipe_ui/utils/liquid_containers.dart';

class ScreenMain extends StatefulWidget {
  const ScreenMain({super.key});

  @override
  State<ScreenMain> createState() => _ScreenMainState();
}

class _ScreenMainState extends State<ScreenMain> {
  @override
  Widget build(BuildContext context) {
    final pages = [
      const LiquidContiners(
        colors: Color.fromARGB(255, 150, 208, 255),
        images: 'assets/images/onwalk.png',
        title: 'Travel',
        buttontext: 'Skip',
      ),
      const LiquidContiners(
        colors: Color.fromARGB(255, 166, 241, 250),
        images: 'assets/images/image2.png',
        title: 'Tourism',
        buttontext: 'Skip',
      ),
      const LiquidContiners(
        colors: Colors.white,
        images: 'assets/images/image3.png',
        title: 'Trip',
        buttontext: 'Finish',
      ),
    ];
    return Scaffold(
        body: LiquidSwipe(
      pages: pages,
      positionSlideIcon: 0.8,
      waveType: WaveType.liquidReveal,
      enableSideReveal: true,
      fullTransitionValue: 1000,
      slideIconWidget: const Icon(Icons.arrow_left_outlined),
    ));
  }
}
