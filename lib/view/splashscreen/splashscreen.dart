import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'package:trendy_threads/provider/auth_provider.dart';
import 'package:trendy_threads/view/LoginScreens/Login_screen.dart';
import 'package:trendy_threads/view/homescreen/homescreen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    final ap = Provider.of<Authprovider>(context, listen: false);

    ap.isSignedIn == true
        ? Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Homescreen(),
            ))
        : Timer(Duration(seconds: 3), () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LoginScreen(),
              ),
            );
          });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/logo.jpg",
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // SpinKitWaveSpinner(
            //   color: Colors.grey,
            //   trackColor: Colors.white,
            //   waveColor: Color(0xffb99a45),
            // ),
            SpinKitSpinningLines(
              color: Color(0xffc7ae6a),
              size: 40,
            ),
            SizedBox(
              height: 130,
            ),
          ],
        ),
      ),
    );
  }
}
