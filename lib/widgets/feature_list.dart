import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:headphones_shop/constants.dart';

class FeatureList extends StatefulWidget {
  @override
  _FeatureListState createState() => _FeatureListState();
}

class _FeatureListState extends State<FeatureList> {
  int isSelected = 0;
  final List<IconData> _icons = [
    FontAwesomeIcons.headphones,
    FontAwesomeIcons.gamepad,
    FontAwesomeIcons.camera,
    FontAwesomeIcons.mobile,
    FontAwesomeIcons.music
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _icons.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              child: Container(
                margin: EdgeInsets.only(right: 10.0, left: 10.0),
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                  color: isSelected == index ? kUtilsColor : Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Icon(
                    _icons[index],
                    color: isSelected == index ? Colors.white : kUtilsColor,
                    size: 30.0,
                  ),
                ),
              ),
              onTap: () {
                setState(() {
                  isSelected = index;
                });
              },
            );
          }),
    );
  }
}
