import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileList extends StatelessWidget {
  const ProfileList({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: GoogleFonts.quicksand(
          fontSize: 17,
          fontWeight: FontWeight.w500,
          color: const Color(0XFF87879D),
        ),
      ),
      leading: Icon(
        icon,
        color: const Color(0XFF87879D),
      ),
      contentPadding: const EdgeInsetsDirectional.only(start: 30),
    );
  }
}
