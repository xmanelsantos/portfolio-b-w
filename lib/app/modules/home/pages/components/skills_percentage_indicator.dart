import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:portfolio_b_w/constants/constants.dart';

class SkillsPercentIndicator extends StatelessWidget {
  const SkillsPercentIndicator({
    Key? key,
    required this.title,
    required this.percent,
  }) : super(key: key);
  final String title;
  final double percent;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title,
            style: GoogleFonts.openSans(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            )),
        const Spacer(),
        LinearPercentIndicator(
          width: 200,
          lineHeight: 8,
          percent: percent,
          animation: true,
          animationDuration: 5000,
          backgroundColor: kAlternativeColor,
          progressColor: kPrimaryColor,
          linearStrokeCap: LinearStrokeCap.roundAll,
        ),
      ],
    );
  }
}
