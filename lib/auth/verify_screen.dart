import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({Key? key}) : super(key: key);

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  bool color = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
            Text(
              "Verify Your Account",
              style: GoogleFonts.quicksand(
                color: const Color(0XFF23203F),
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 27,
            ),
            Text(
              "We are sending OTP to validate your mobile number. Hang on!",
              style: GoogleFonts.roboto(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: const Color(0XFF9192AE)),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 60,
                  width: 60,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.w400),
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                    ],
                    decoration: InputDecoration(
                      filled: true,
                        fillColor : const Color(0XFF9E9DB0),
                        border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                  ),
                ),
                SizedBox(
                  height: 60,
                  width: 60,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.w400),
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                    ],
                    decoration: InputDecoration(
                        filled: true,
                        fillColor : const Color(0XFF9E9DB0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
                SizedBox(
                  height: 60,
                  width: 60,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.w400),
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                    ],
                    decoration: InputDecoration(
                        filled: true,
                        fillColor : const Color(0XFF9E9DB0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
                SizedBox(
                  height: 60,
                  width: 60,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.w400),
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                    ],
                    decoration: InputDecoration(
                        filled: true,
                        fillColor : const Color(0XFF9E9DB0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                const Expanded(child: SizedBox()),
                Text("SMS has been sent to 1800 123 4567",style: GoogleFonts.roboto(
                  color: const Color(0XFF9192AE),
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),),
                const Expanded(child: SizedBox()),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/main_screen");
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0XFF6A90F2),
                    minimumSize: const Size(double.infinity, 53),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    )),
                child: Text(
                  "Submit",
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
    );
  }
}
