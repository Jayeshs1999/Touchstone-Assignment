import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: Container(
        width: size.height * 0.2,
        height: 60,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 1,
              blurRadius: 2,
            )
          ],
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 40.0),
              child: Image(
                image: AssetImage("images/bulb.png"),
                height: 50,
                width: 50,
              ),
            ),
            Image(
              image: AssetImage("images/homeN.png"),
              height: 50,
              width: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: Image(
                image: AssetImage("images/settingN.png"),
                height: 50,
                width: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
