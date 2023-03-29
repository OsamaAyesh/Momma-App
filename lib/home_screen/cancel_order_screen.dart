import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CancelScreen extends StatefulWidget {
  const CancelScreen({Key? key}) : super(key: key);

  @override
  State<CancelScreen> createState() => _CancelScreenState();
}

class _CancelScreenState extends State<CancelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "images/cancelscreen.png",
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fitWidth,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(top: 200,start: 30,end: 30),
            child: Container(
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Column(
                  children: [
                    const SizedBox(height: 20,),
                    Image.asset("images/cancel.png"),
                    const SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "Are you sure you want to cancel this order?",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.quicksand(
                            color: Color(0XFF23203F),
                            fontSize: 25,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0XFF6A90F2),
                            minimumSize: const Size(double.infinity, 53),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            )),
                        child: Text(
                          "Save",
                          style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height:20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/about_screen");
                        },
                        style: ElevatedButton.styleFrom(
                            side: const BorderSide(
                              color: Color(0XFFE1E1E7),
                            ),
                            backgroundColor: Colors.white,
                            minimumSize: const Size(double.infinity, 53),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            )),
                        child: Text(
                          "Not Now!",
                          style: GoogleFonts.roboto(
                            color: Colors.black,
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
          )
        ],
      ),
    );
  }
}
