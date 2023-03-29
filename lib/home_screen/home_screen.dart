import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/gridview.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TabController? _tabController;
  CarouselController controller = CarouselController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Home",
            style: GoogleFonts.quicksand(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: const Color(0XFF474559),
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          automaticallyImplyLeading: false,
          bottom: TabBar(
            controller: _tabController,
            labelColor: Colors.black,
            labelStyle: GoogleFonts.quicksand(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            unselectedLabelStyle: GoogleFonts.quicksand(),
            indicatorColor: Colors.black,
            tabs: const [
              Tab(
                text: 'Womens',
              ),
              Tab(
                text: 'Handbags',
              ),
              Tab(
                text: 'Boots',
              ),
            ],
          ),
          actions: const [
            Icon(
              Icons.search,
              color: Colors.black,
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
        body: SingleChildScrollView(
          physics:const  BouncingScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              CarouselSlider(
                items: [
                  Stack(
                    children: [
                      Container(
                        height: 198,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color(0XFFF0F1F6),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Center(child: Image.asset("images/bag.png")),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 198,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color(0XFFF0F1F6),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Center(child: Image.asset("images/bag.png")),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 198,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color(0XFFF0F1F6),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Center(child: Image.asset("images/bag.png")),
                    ],
                  ),
                ],
                options: CarouselOptions(
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentPage = index;
                    });
                  },
                  enlargeCenterPage: true,
                  enableInfiniteScroll: false,
                  autoPlay: true,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TabPageSelectorIndicator(
                      backgroundColor: _currentPage == 0
                          ? const Color(0XFF474459)
                          : const Color(0XFFF0F1F6),
                      borderColor: Colors.white,
                      size: 15),
                  TabPageSelectorIndicator(
                      backgroundColor: _currentPage == 1
                          ? const Color(0XFF474459)
                          : const Color(0XFFF0F1F6),
                      borderColor: Colors.white,
                      size: 15),
                  TabPageSelectorIndicator(
                      backgroundColor: _currentPage == 2
                          ? const Color(0XFF474459)
                          : const Color(0XFFF0F1F6),
                      borderColor: Colors.white,
                      size: 15),
                ],
              ),
              // SizedBox(
              //   height: 700,
              //   width: double.infinity,
              //   child: GridView(
              //     physics: const NeverScrollableScrollPhysics(),
              //     scrollDirection: Axis.vertical,
              //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              //         crossAxisCount: 2),
              //     children: <Widget>[
              //       Stack(
              //         children: [
              //           Container(
              //             color: Colors.black12,
              //           ),
              //           Center(
              //             child: Column(
              //               children: [
              //                 const SizedBox(
              //                   height: 10,
              //                 ),
              //                 Row(
              //                   children: [
              //                     Expanded(child: SizedBox()),
              //                     IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border))
              //                   ],
              //                 ),
              //                 Image.asset("images/bag2.png"),
              //                 const SizedBox(
              //                   height: 10,
              //                 ),
              //                 Text(
              //                   "Hand bags",
              //                   style: GoogleFonts.roboto(
              //                       color: const Color(0XFF474559),
              //                       fontSize: 20,
              //                       fontWeight: FontWeight.w500),
              //                 ),
              //                 Text("10.00",style: GoogleFonts.roboto(fontSize: 15,fontWeight: FontWeight.w500,color: const Color(0XFF9E9DB0)),)
              //               ],
              //             ),
              //           )
              //         ],
              //       )
              //     ],
              //   ),
              // ),
              GridView1(),
              GridView1(),
              GridView1(),
              GridView1(),
              GridView1(),

            ],
          ),
        ),
      ),
    );
  }
}

