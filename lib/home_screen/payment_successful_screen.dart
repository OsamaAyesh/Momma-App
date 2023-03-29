import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentSuccessfulScreen extends StatefulWidget {
  const PaymentSuccessfulScreen({Key? key}) : super(key: key);

  @override
  State<PaymentSuccessfulScreen> createState() =>
      _PaymentSuccessfulScreenState();
}

class _PaymentSuccessfulScreenState extends State<PaymentSuccessfulScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 200,
            ),
            Image.asset("images/successful.png"),
            const SizedBox(
              height: 22,
            ),
            Text(
              "Payment Successful!",
              style: GoogleFonts.quicksand(
                color: const Color(0XFF111111),
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "We have emailed you the receipt.",
              style: GoogleFonts.quicksand(
                color: const Color(0XFF8F8FA6),
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 43,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 56),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/rate_order_screen");
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor:const Color(0XFF6A90F2),
                    minimumSize: const Size(double.infinity, 45),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    )
                ),
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
          ],
        ),
      ),
    );
  }
}
