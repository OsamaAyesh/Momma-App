import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController firstName=TextEditingController();
  TextEditingController lastName=TextEditingController();
  TextEditingController email =TextEditingController();
  TextEditingController phone=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Image.asset("images/profile.png"),
              const SizedBox(
                height: 30,
              ),
              Text(
                "John Deo",
                style: GoogleFonts.quicksand(
                    color: const Color(0XFF444657),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "johndeo@yourmail.com",
                style: GoogleFonts.quicksand(
                    fontSize: 17.2,
                    fontWeight: FontWeight.w500,
                    color: const Color(0XFF87879D)),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 40,
                  ),
                  Column(
                    children: [
                      Text(
                        "Orders Count",
                        style: GoogleFonts.quicksand(
                          color: const Color(0XFF444557),
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        "13",
                        style: GoogleFonts.quicksand(
                          color: const Color(0XFF9E9DB0),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const Expanded(child: SizedBox()),
                  Image.asset("images/column.png"),
                  const Expanded(child: SizedBox()),
                  Column(
                    children: [
                      Text(
                        "Total Paid",
                        style: GoogleFonts.quicksand(
                          color: const Color(0XFF444557),
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        "2342.55 ",
                        style: GoogleFonts.quicksand(
                          color: const Color(0XFF9E9DB0),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                ],
              ),
              Divider(),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 28, end: 28),
                child: TextField(
                  controller: firstName,
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                  decoration: InputDecoration(
                    hintText: 'First Name',
                    helperStyle: GoogleFonts.roboto(
                      color: const Color(0XFF9391A4),
                      fontWeight: FontWeight.w300,
                      fontSize: 20,
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
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Last Name',
                    helperStyle: GoogleFonts.roboto(
                      color: const Color(0XFF9391A4),
                      fontWeight: FontWeight.w300,
                      fontSize: 20,
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
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Email',
                    helperStyle: GoogleFonts.roboto(
                      color: const Color(0XFF9391A4),
                      fontWeight: FontWeight.w300,
                      fontSize: 20,
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
                  controller: phone,
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Phone',
                    helperStyle: GoogleFonts.roboto(
                      color: const Color(0XFF9391A4),
                      fontWeight: FontWeight.w300,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                  onPressed: () {
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
            ],
          ),
        ),
      ),
    );
  }
}
