import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool visable=true;
  TextEditingController firstName=TextEditingController();
  TextEditingController lastName=TextEditingController();
  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Color(0XFF000000),
                    ),
                  ),
                  const Expanded(child: SizedBox()),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Sign Up",
                  style: GoogleFonts.nunito(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              Text(
                "Create an account",
                style: GoogleFonts.roboto(
                  color: const Color(0XFF9391A4),
                  fontWeight: FontWeight.w300,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 28, end: 28),
                child: TextField(
                  controller: firstName,
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.normal,
                  ),
                  decoration: InputDecoration(
                    hintText: 'First Name',
                    helperStyle: GoogleFonts.roboto(
                      color: const Color(0XFF9391A4),
                      fontWeight: FontWeight.w300,
                      fontSize: 22,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 28, end: 28),
                child: TextField(
                  controller: lastName,
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.normal,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Last Name',
                    helperStyle: GoogleFonts.roboto(
                      color: const Color(0XFF9391A4),
                      fontWeight: FontWeight.w300,
                      fontSize: 22,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 28, end: 28),
                child: TextField(
                  controller: email,
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.normal,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Email',
                    helperStyle: GoogleFonts.roboto(
                      color: const Color(0XFF9391A4),
                      fontWeight: FontWeight.w300,
                      fontSize: 22,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 28, end: 28),
                child: TextField(
                  controller: password,
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.normal,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Password',
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          visable = !visable;
                        });
                      },
                      icon: Icon(
                        visable == true
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,color: const Color(0XFFD0D0D0),
                      ),
                    ),
                    helperStyle: GoogleFonts.roboto(
                      color: const Color(0XFF9391A4),
                      fontWeight: FontWeight.w300,
                      fontSize: 22,
                    ),
                  ),
                  obscureText: visable,
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                  onPressed: () {
                    if(firstName.text.isNotEmpty&&lastName.text.isNotEmpty&&password.text.isNotEmpty&&email.text.isNotEmpty) {
                      Navigator.pushNamed(context, "/verify_screen");
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0XFF6A90F2),
                      minimumSize: const Size(double.infinity, 53),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      )),
                  child: Text(
                    "Sign Up",
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
