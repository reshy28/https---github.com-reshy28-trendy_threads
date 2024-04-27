import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LikedItems extends StatelessWidget {
  const LikedItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 160,
                width: 222,
                child: Image.asset("assets/Frame 35.png"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
