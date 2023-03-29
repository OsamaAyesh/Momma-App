import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/creditcardformating.dart';

class PaymentModeScreen extends StatefulWidget {
  const PaymentModeScreen({Key? key}) : super(key: key);

  @override
  State<PaymentModeScreen> createState() => _PaymentModeScreenState();
}

class _PaymentModeScreenState extends State<PaymentModeScreen> {
  TextEditingController numberCard=TextEditingController();
  TextEditingController date=TextEditingController();
  TextEditingController ccv=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Color(0XFF474559),
        ),
        title: Text(
          "Payment mode",
          style: GoogleFonts.roboto(
            color: const Color(0XFF474559),
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 214,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0XFF6C8EF2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: const [
                        SizedBox(
                          width: 15,
                        ),
                        Icon(
                          Icons.wallet,
                          size: 40,
                          color: Colors.white,
                        ),
                        Expanded(child: SizedBox()),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "1234 5678 9876 5432",
                              style: GoogleFonts.quicksand(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text("1234",style: GoogleFonts.quicksand(
                                color:const  Color(0XFFC7C7C7),
                                fontSize: 14,
                                fontWeight: FontWeight.w500
                            ),),
                          ],
                        ),
                        const Expanded(child: SizedBox()),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 15,
                        ),
                        Text(
                          "James Born",
                          style: GoogleFonts.quicksand(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Expanded(child: SizedBox()),
                        Text("EXPIRY",style: GoogleFonts.quicksand(
                            color:const  Color(0XFFC7C7C7),
                            fontSize: 9,
                            fontWeight: FontWeight.w500
                        ),),
                        const SizedBox(
                          width: 4,
                        ),
                        Text(
                          "03/17",
                          style: GoogleFonts.quicksand(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                      ],
                    ),


                  ],
                ),
              ),
            ),
            const SizedBox(height: 53,),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 28, end: 28),
              child: TextField(

                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  CreditCardNumberFormater(),
                  LengthLimitingTextInputFormatter(22)
                ],
                controller: numberCard,
                style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: '6524 2541 2164',
                  helperStyle: GoogleFonts.roboto(
                    color: const Color(0XFF9391A4),
                    fontWeight: FontWeight.w300,
                    fontSize: 22,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 28, end: 28),
              child: TextField(
                controller: date,
                style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
                decoration: InputDecoration(
                  hintText: 'MM/YY',
                  helperStyle: GoogleFonts.roboto(
                    color: const Color(0XFF9391A4),
                    fontWeight: FontWeight.w300,
                    fontSize: 22,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 28, end: 28),
              child: TextField(
                controller: ccv,
                style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
                decoration: InputDecoration(
                  hintText: 'CCV',
                  helperStyle: GoogleFonts.roboto(
                    color: const Color(0XFF9391A4),
                    fontWeight: FontWeight.w300,
                    fontSize: 22,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 43,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                onPressed: () {
                  if(numberCard.text.isNotEmpty&&date.text.isNotEmpty&&ccv.text.isNotEmpty){
                    Navigator.pushNamed(context, "/payment_successful_screen");

                  }
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor:const Color(0XFF6A90F2),
                    minimumSize: const Size(double.infinity, 45),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    )
                ),
                child: Text(
                  "Proceed",
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
