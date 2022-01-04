import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_b_w/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: size.height,
              width: size.width,
              decoration: const BoxDecoration(
                color: kBgDarkColor,
              ),
              child: Column(
                children: [
                  AnimatedTextKit(
                      animatedTexts: [FlickerAnimatedText('Portfólio')]),
                  AnimatedTextKit(
                    repeatForever: true,
                    pause: const Duration(milliseconds: 1200),
                    stopPauseOnTap: true,
                    animatedTexts: [
                      TypewriterAnimatedText(
                        'Olá, meu nome é Emanuel.',
                        textStyle: GoogleFonts.openSans(
                          color: kTextColor,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 1080,
              decoration: const BoxDecoration(
                color: kBgLightColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
