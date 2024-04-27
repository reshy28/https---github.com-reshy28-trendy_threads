import 'package:country_picker/country_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pinput/pinput.dart';
import 'package:provider/provider.dart';
import 'package:trendy_threads/provider/auth_provider.dart';
import 'package:trendy_threads/utlis/color_constant.dart';

import 'package:trendy_threads/view/LoginScreens/otp_verification.dart';
import 'package:trendy_threads/view/homescreen/homescreen.dart';
import 'package:trendy_threads/view/homescreen/widgets/liked_items.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Country selectedcountry = Country(
      phoneCode: "91",
      countryCode: "IN",
      e164Sc: 0,
      geographic: true,
      level: 1,
      name: "India",
      example: "India",
      displayName: "India",
      displayNameNoCountryCode: "In",
      e164Key: "");

  TextEditingController CountryCode = TextEditingController();
  TextEditingController phonecntrlr = TextEditingController();
  @override
  Widget build(BuildContext context) {
    phonecntrlr.selection = TextSelection.fromPosition(
        TextPosition(offset: phonecntrlr.text.length));
    return Scaffold(
      backgroundColor: Colorconstants.mybg,
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 320,
                width: 320,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/loginlogo.png"),
                  ),
                ),
              ),
              Text(
                "Login to Your Account",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                onChanged: (value) {
                  setState(() {
                    phonecntrlr.value;
                  });
                },
                controller: phonecntrlr,
                decoration: InputDecoration(
                  hintText: "Enter phone number",
                  hintStyle: TextStyle(color: Colors.grey.shade500),
                  suffixIcon: phonecntrlr.length > 9
                      ? Container(
                          margin: EdgeInsets.all(15),
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.green),
                          child: Icon(
                            Icons.done,
                            color: Colorconstants.mybg,
                            size: 20,
                          ),
                        )
                      : null,
                  contentPadding: EdgeInsets.all(17),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: phonecntrlr.length > 9
                        ? BorderSide(color: Colors.green)
                        : BorderSide(color: Colors.white),
                  ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(15),
                    child: InkWell(
                      onTap: () {
                        showCountryPicker(
                          context: context,
                          countryListTheme:
                              CountryListThemeData(bottomSheetHeight: 500),
                          onSelect: (value) {
                            setState(() {
                              selectedcountry = value;
                            });
                          },
                        );
                      },
                      child: Container(
                        child: Text(
                          "${selectedcountry.flagEmoji} +${selectedcountry.phoneCode} ",
                          style: TextStyle(
                              fontSize: 17,
                              color: Colorconstants.mywhite,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Otpverification(),
                      ));
                },
                child: Container(
                  height: 51,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffFE8723),
                  ),
                  child: Center(
                    child: Text(
                      "Send OTP",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colorconstants.mywhite),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
