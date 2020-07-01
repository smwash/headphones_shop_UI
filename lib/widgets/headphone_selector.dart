import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:headphones_shop/model/data.dart';

import '../constants.dart';

class HeadphoneSelector extends StatefulWidget {
  @override
  _HeadphoneSelectorState createState() => _HeadphoneSelectorState();
}

class _HeadphoneSelectorState extends State<HeadphoneSelector>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.39,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: headphones.length,
          itemBuilder: (context, index) {
            Headphones page = headphones[index];
            return Container(
              height: size.height * 0.38,
              width: size.width * 0.5,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Positioned(
                    bottom: 20.0,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      height: size.height * 0.26,
                      width: size.width * 0.47,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.white10,
                              offset: Offset(0, 10),
                              blurRadius: 10.0),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: -3.0,
                    right: 30.0,
                    left: 30.0,
                    child: Image.asset(
                      page.imgeUrl,
                      height: size.height * 0.22,
                    ),
                  ),
                  Positioned(
                    left: 20.0,
                    bottom: 70.0,
                    child: Text(
                      page.headphoneName,
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20.0,
                          color: kUtilsColor),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Positioned(
                    left: 20.0,
                    bottom: 40.0,
                    child: Text(
                      page.price,
                      style: TextStyle(fontSize: 20.0, color: kUtilsColor),
                    ),
                  ),
                  Positioned(
                    right: 13.0,
                    bottom: 25.0,
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: kUtilsColor,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Icon(
                        Icons.add_shopping_cart,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
