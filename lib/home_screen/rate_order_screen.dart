import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RateOrderScreen extends StatefulWidget {
  const RateOrderScreen({Key? key}) : super(key: key);

  @override
  State<RateOrderScreen> createState() => _RateOrderScreenState();
}

class _RateOrderScreenState extends State<RateOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 200,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "How was your order experiences from it Momma ?",
              style: GoogleFonts.quicksand(
                color: const Color(0XFF171717),
                fontWeight: FontWeight.w500,
                fontSize: 25,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: const [
              Expanded(child: SizedBox()),
              Icon(
                Icons.star,
                size: 36,
                color: Colors.black12,
              ),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.star,
                size: 36,
                color: Colors.black12,
              ),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.star,
                size: 36,
                color: Colors.black12,
              ),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.star,
                size: 36,
                color: Colors.black12,
              ),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.star,
                size: 36,
                color: Colors.black12,
              ),
              Expanded(child: SizedBox()),
            ],
          ),
          const SizedBox(
            height: 38,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 56),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0XFF6A90F2),
                  minimumSize: const Size(double.infinity, 45),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  )),
              child: Text(
                "Finish",
                style: GoogleFonts.quicksand(
                  color: const Color(0XFFFFFFFF),
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "Not now!",
              style: GoogleFonts.roboto(
                color: const Color(0XFF9A98A8),
                fontSize: 18,
                fontWeight: FontWeight.w400,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
