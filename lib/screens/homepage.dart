import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:headphones_shop/constants.dart';
import 'package:headphones_shop/widgets/drawer.dart';
import 'package:headphones_shop/widgets/feature_list.dart';
import 'package:headphones_shop/widgets/headphone_selector.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kHomePageColor,
      appBar: AppBar(
        backgroundColor: kHomePageColor,
        elevation: 0.0,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Icon(FontAwesomeIcons.search),
          ),
        ],
      ),
      drawer: DrawerWidget(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Featured',
                    style: GoogleFonts.montserrat(
                      textStyle:
                          TextStyle(color: Colors.white70, fontSize: 22.0),
                    ),
                  ),
                  SizedBox(height: 7.0),
                  Text(
                    'Collections',
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 26.0,
                          letterSpacing: 1.1,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            FeatureList(),
            SizedBox(height: 20.0),
            HeadphoneSelector(),
          ],
        ),
      ),
    );
  }
}
