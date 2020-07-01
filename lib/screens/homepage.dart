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
            SizedBox(height: 20.0),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Latest Favorites',
                style: TextStyle(fontSize: 22.0, color: Colors.white70),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.18,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0.0,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.13,
                      width: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0, 10),
                            blurRadius: 10.0,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 15.0,
                    bottom: 10.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Desert Sand',
                              style: TextStyle(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.w600,
                                  color: kUtilsColor,
                                  letterSpacing: 1.1),
                            ),
                            Icon(
                              Icons.favorite_border,
                              color: kUtilsColor,
                            ),
                          ],
                        ),
                        SizedBox(height: 17.0),
                        Text(
                          '\$ 100',
                          style: TextStyle(
                              fontSize: 22.0,
                              color: kUtilsColor,
                              letterSpacing: 1.1),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: -10.0,
                    right: 5.0,
                    child: Image.asset(
                      'images/razer.png',
                      height: 150.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
