import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:momma/widgets/profile_list_widget.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
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
                height: 20,
              ),
              const Divider(),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, "/profile_screen");
                },
                  child: const ProfileList(title: "My Profile", icon: Icons.person)),
              const Divider(),
              const ProfileList(title: "Favorites", icon: Icons.favorite),
              const Divider(),
              const ProfileList(title: "Orders", icon: Icons.library_books),
              const Divider(),
              const ProfileList(
                  title: "Terms & Conditions",
                  icon: Icons.perm_device_info_sharp),
              const Divider(),
              const ProfileList(title: "Privacy Policy", icon: Icons.lock),
              const Divider(),
              const ProfileList(title: "Logout", icon: Icons.login),
              const Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
