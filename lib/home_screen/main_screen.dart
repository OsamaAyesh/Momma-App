import 'package:flutter/material.dart';
import 'package:momma/home_screen/cart_screen.dart';
import 'package:momma/home_screen/home_screen.dart';
import 'package:momma/home_screen/more_screen.dart';
import 'package:momma/models/bnitem.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<BnItem> _items = <BnItem>[
    BnItem(const HomeScreen()),
    BnItem(const CartScreen()),
    BnItem(const MoreScreen()),
  ];
  int _currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _items[_currentIndex].widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int currentIndex){
          setState(() {
            _currentIndex=currentIndex;
          });
        },
          currentIndex: _currentIndex,
          selectedIconTheme: IconThemeData(
            color: Colors.blue,
          ),
          selectedItemColor: Colors.blue,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.more_vert),
              label: 'More',
            ),
          ]),
    );
  }
}
