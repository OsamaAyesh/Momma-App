import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:momma/home_screen/detail_product_screen.dart';
import 'package:momma/widgets/cart.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: Text(
          "Cart",
          style: GoogleFonts.quicksand(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: const Color(0XFF474559),
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                "3 items available",
                style: GoogleFonts.quicksand(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: const Color(0XFF111111),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: (){
              // Future.delayed(Duration(seconds: 3),(){
              //   Navigator.pushNamed(context, "/detail_product_screen");
              // });
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=>const DetailProductScreen())
              );
            },
              child: const Cart(image: "bag3", nameBag: "Handbag", price: "100")),
          const SizedBox(
            height: 10,
          ),
          const Cart(image: "bag4", nameBag: "Backpack", price: "120"),
          const SizedBox(
            height: 10,
          ),
          const Cart(image: "bag4", nameBag: "Backpack", price: "200"),
          const SizedBox(
            height: 40,
          ),
          Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Sub total:",
                    style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: const Color(0XFFA1A1B4)),
                  ),
                  const Expanded(child: SizedBox()),
                  const Text("100"),
                  const SizedBox(
                    width: 30,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Tax(15%):",
                    style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: const Color(0XFFA1A1B4)),
                  ),
                  const Expanded(child: SizedBox()),
                  const Text("15"),
                  const SizedBox(
                    width: 30,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Divider(
                  thickness: 1,
                  color: Color(0XFFECECEC),
                ),
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Total:",
                    style: GoogleFonts.quicksand(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: const Color(0XFF232323)),
                  ),
                  const Expanded(child: SizedBox()),
                  Text(
                    "115",
                    style: GoogleFonts.quicksand(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: const Color(0XFF232323),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 45),
                        backgroundColor: const Color(0XFF6A90F2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        )),
                    onPressed: () {
                      Navigator.pushNamed(context, "/payment_mode_screen");
                    },
                    child: Text("Checkout")),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 45),
                      backgroundColor: Colors.white,
                      side: const BorderSide(color: const Color(0XFFC9D8E7),width: 2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      )),
                  onPressed: () {
                    Navigator.pushNamed(context, "/cancel_screen");
                  },
                  child: Text(
                    "Cancel Order",
                    style: GoogleFonts.quicksand(
                      color: Color(0XFF474459),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
