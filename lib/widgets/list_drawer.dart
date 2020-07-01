import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListDrawer extends StatelessWidget {
  const ListDrawer({
    Key key,
    this.text,
    this.icon,
  }) : super(key: key);
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.white,
      ),
      title: Text(
        text,
        style: GoogleFonts.montserrat(
          textStyle: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
