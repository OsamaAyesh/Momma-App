import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class GridView1 extends StatelessWidget {
  const GridView1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: 140,
          child: Stack(
            children: [
              Container(
                color: Colors.black12,
              ),
              Center(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(child: SizedBox()),
                        IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border))
                      ],
                    ),
                    Image.asset("images/bag2.png"),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Hand bags",
                      style: GoogleFonts.roboto(
                          color: const Color(0XFF474559),
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    Text("10.00",style: GoogleFonts.roboto(fontSize: 15,fontWeight: FontWeight.w500,color: const Color(0XFF9E9DB0)),)
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(
          width: 140,
          child: Stack(
            children: [
              Container(
                color: Colors.black12,
              ),
              Center(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(child: SizedBox()),
                        IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border))
                      ],
                    ),
                    Image.asset("images/bag2.png"),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Hand bags",
                      style: GoogleFonts.roboto(
                          color: const Color(0XFF474559),
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    Text("10.00",style: GoogleFonts.roboto(fontSize: 15,fontWeight: FontWeight.w500,color: const Color(0XFF9E9DB0)),)
                  ],
                ),
              )
            ],
          ),
        ),

      ],
    );
  }
}
