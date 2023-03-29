import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OutBoardingPage extends StatelessWidget {
  OutBoardingPage({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final String image;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    final double heightScreen = MediaQuery.of(context).size.height;
    final double widthScreen = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Image.asset(
          "images/$image.png",
          width: widthScreen,
        ),
        Text(
          title,
          style: GoogleFonts.nunito(
            color: const Color(0XFF23203F),
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.only(
              start: widthScreen * 0.1, end: widthScreen * 0.1),
          child: Text(
            subtitle,
            style: GoogleFonts.openSans(
              color: Color(0XFF716F87),
              fontSize: 17,
              fontWeight: FontWeight.w300,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
