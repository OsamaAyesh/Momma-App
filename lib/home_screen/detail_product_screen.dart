import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailProductScreen extends StatefulWidget {
  const DetailProductScreen({Key? key}) : super(key: key);

  @override
  State<DetailProductScreen> createState() => _DetailProductScreenState();
}

class _DetailProductScreenState extends State<DetailProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Product Details",
          style: GoogleFonts.quicksand(
            color: const Color(0XFF474559),
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Color(0XFF474559),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              const Expanded(child: SizedBox()),
              Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(40),
                child: const CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.black12,
                  child: Icon(
                    Icons.favorite,
                    color: Colors.deepOrange,
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
            ],
          ),
          SizedBox(
            width: double.infinity,
            child: Image.asset("images/bag6.png"),
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              Text(
                "Handbag",
                style: GoogleFonts.quicksand(
                  color: const Color(0XFF111111),
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Expanded(child: SizedBox()),
              Text(
                "125",
                style: GoogleFonts.quicksand(
                  color: const Color(0XFF111111),
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              Text(
                "Bags",
                style: GoogleFonts.roboto(
                  color: const Color(0XFF87879D),
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Expanded(child: SizedBox()),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Material(
              elevation: 6,
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  height: 218,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
                    child: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
                      style: GoogleFonts.roboto(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: const Color(0XFF9393A7),
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor:const Color(0XFF6A90F2),
                minimumSize: const Size(double.infinity, 45),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                )
              ),
              child: Text(
                "ADD TO CART",
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
    );
  }
}
