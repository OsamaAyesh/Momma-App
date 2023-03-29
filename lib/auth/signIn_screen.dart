import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool visable = false;
  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 139,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 27,
                  ),
                  Text(
                    "Sign In",
                    style: GoogleFonts.nunito(
                      color: const Color(0XFF23203F),
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  const Expanded(child: SizedBox()),
                ],
              ),
              const SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 27,
                  ),
                  Text(
                    "Login to start using app,",
                    style: GoogleFonts.roboto(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                        color: const Color(0XFF716F87)),
                  ),
                  const Expanded(child: SizedBox()),
                ],
              ),
              const SizedBox(height: 37,),
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
                height: 29,
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
                height: 28,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                  onPressed: () {
                    if(password.text.isNotEmpty&&email.text.isNotEmpty) {
                      Navigator.pushNamed(context, "/main_screen");
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0XFF6A90F2),
                      minimumSize: const Size(double.infinity, 53),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      )),
                  child: Text(
                    "Login",
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15,),
              Row(
                children: [
                  const Expanded(child: SizedBox()),
                  Text(
                    "Don’t have an account?",
                    style: GoogleFonts.roboto(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                      color: const Color(0XFF9391A4),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  TextButton(
                    onPressed: () {
                        Navigator.pushNamed(context, "/signup_screen");
                    },
                    child: Text(
                      "Sign up",
                      style: GoogleFonts.roboto(
                        color: const Color(0XFF23203F),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const Expanded(child: SizedBox()),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
