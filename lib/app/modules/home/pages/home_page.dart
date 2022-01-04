import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_b_w/constants/constants.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = 'HomePage'}) : super(key: key);
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _blackBody(size),
            _whiteBody(size),
          ],
        ),
      ),
    );
  }

// ? First Component
  Container _blackBody(Size size) {
    return Container(
      height: size.height,
      width: size.width,
      decoration: const BoxDecoration(
        color: kBgDarkColor,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 50,
            child: AnimatedTextKit(
              animatedTexts: [
                FlickerAnimatedText(
                  'Portfólio',
                  textStyle:
                      GoogleFonts.bebasNeue(color: kBgLightColor, fontSize: 50),
                )
              ],
              repeatForever: true,
            ),
          ),
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
    );
  }
}

// ? Second Component
Container _whiteBody(Size size) {
  return Container(
    width: size.width,
    height: size.height,
    decoration: const BoxDecoration(
      color: kBgLightColor,
    ),
  );
}
