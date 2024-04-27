import 'package:flutter/material.dart';

class DetailedScreen extends StatelessWidget {
  const DetailedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
      ),
      body: Column(
        children: [
          Container(
            height: 368,
            width: MediaQuery.sizeOf(context).width,
            color: Colors.cyan,
          ),
          Text("Regular Fit Slogan")
        ],
      ),
    );
  }
}
