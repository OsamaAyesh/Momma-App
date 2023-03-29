import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cart extends StatelessWidget {
  const Cart({
    Key? key,
    required this.image,
    required this.nameBag,
    required this.price,
  }) : super(key: key);
  final String image;
  final String nameBag;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Stack(
        children: [
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(30),
            child: Container(
              height: 107,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("images/$image.png"),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        nameBag,
                        style: GoogleFonts.quicksand(
                            color: const Color(0XFF111111),
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "from boots category",
                        style: GoogleFonts.roboto(
                            color: const Color(0XFFA1A1B4),
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                      ),
                      Text(
                        price,
                        style: GoogleFonts.quicksand(
                            color: const Color(0XFF111111),
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                    ],
                  ),
                  const  SizedBox(
                    width: 30,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                            start: 60, end: 10),
                        child: Image.asset("images/delete.png"),
                      ),
                      const  SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          GestureDetector(
                              onTap: () {},
                              child: Image.asset("images/min.png")),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text("3"),
                          const SizedBox(
                            width: 8,
                          ),
                          GestureDetector(
                              onTap: (){},
                              child: Image.asset("images/add.png")),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}