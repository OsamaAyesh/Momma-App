import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, "/main_screen");
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          )),
      body: SafeArea(
        child: Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                "M O M M A .",
                style: GoogleFonts.josefinSans(
                    color: const Color(0XFF000000),
                    fontSize: 48,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "FASHIONS",
                style: GoogleFonts.poppins(
                  color: const Color(0XFF000000),
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(thickness: 1, endIndent: 20, indent: 20),
              const SizedBox(
                height: 40,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "About",
                    style: GoogleFonts.roboto(
                      color: const Color(0XFF474559),
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical professor.",
                  style: GoogleFonts.roboto(
                    color: const Color(0XFF66647B),
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(thickness: 1, endIndent: 20, indent: 20),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("images/about1.png"),
                  Image.asset("images/about2.png"),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28),
                  child: Image.asset(
                    "images/about3.png",
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
