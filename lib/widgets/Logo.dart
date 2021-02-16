import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          children: [
            FaIcon(
              FontAwesomeIcons.plusSquare,
              size: 120,
              color: Color(0xffFF0303),
            ),
            Text(
              'AppMedica',
              style: TextStyle(fontSize: 25, color: Color(0xffFF0303)),
            )
          ],
        ),
      ),
    );
  }
}
