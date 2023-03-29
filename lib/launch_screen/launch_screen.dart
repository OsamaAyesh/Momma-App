import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 5),(){
      Navigator.pushReplacementNamed(context, "/out_boarding_screen");
    });
  }
  @override
  Widget build(BuildContext context) {

    final double heightScreen = MediaQuery.of(context).size.height;
    final double widthScreen = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              "images/launch_screen.png",
              width: widthScreen,
              height: heightScreen,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.only(top: heightScreen*0.1),
              child: Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Text(
                      "M O M M A .",
                      style: GoogleFonts.josefinSans(
                        color: const Color(0XFF000000),
                        fontSize: 48,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      "FASHIONS",
                      style: GoogleFonts.poppins(
                        color: const Color(0XFF000000),
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
