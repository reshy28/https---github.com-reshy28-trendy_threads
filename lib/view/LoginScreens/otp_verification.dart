import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:provider/provider.dart';
import 'package:trendy_threads/provider/auth_provider.dart';
import 'package:trendy_threads/utlis/color_constant.dart';
import 'package:trendy_threads/view/homescreen/widgets/bottomnav_screen.dart';

class Otpverification extends StatelessWidget {
  const Otpverification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconstants.mybg,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Phone Verification",
          style: TextStyle(color: Colors.white, fontSize: 17),
        ),
        backgroundColor: Colorconstants.mybg,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Text(
                "Enter 6 digit verification code sent to your phone number",
                style: TextStyle(
                    color: Colorconstants.mywhite,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                child: Pinput(
                  length: 4,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 51,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xffFE8723),
                ),
                child: Center(
                    child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BottomNavBar()));
                  },
                  child: Text(
                    "Submit",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colorconstants.mywhite),
                  ),
                )),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Resend Code",
                    style: TextStyle(
                        color: Color(0xffFE8723),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
