import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:headphones_shop/constants.dart';

import 'list_drawer.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(canvasColor: kUtilsColor),
      child: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 25.0,
                    backgroundColor: Colors.white,
                    child: Text(
                      'JD',
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'John Doe',
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(color: Colors.white, fontSize: 16.5),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'smwash123@gmail.com',
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
            Divider(color: kDetailPageColor),
            Column(
              children: [
                ListDrawer(
                  text: 'Home',
                  icon: FontAwesomeIcons.home,
                ),
                ListDrawer(
                  text: 'profile',
                  icon: FontAwesomeIcons.user,
                ),
                ListDrawer(
                  text: 'Wallet',
                  icon: FontAwesomeIcons.googleWallet,
                ),
                ListDrawer(
                  text: 'My Cart',
                  icon: FontAwesomeIcons.shoppingCart,
                ),
                ListDrawer(
                  text: 'Favorites',
                  icon: FontAwesomeIcons.star,
                ),
                ListDrawer(
                  text: 'Settings',
                  icon: FontAwesomeIcons.cog,
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Divider(color: kDetailPageColor),
            SizedBox(height: 50.0),
            ListDrawer(text: 'Logout', icon: FontAwesomeIcons.signOutAlt),
          ],
        ),
      ),
    );
  }
}
