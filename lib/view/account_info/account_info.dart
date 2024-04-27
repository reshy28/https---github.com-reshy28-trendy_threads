import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AccountInfo extends StatefulWidget {
  const AccountInfo({super.key});

  @override
  State<AccountInfo> createState() => _AccountInfoState();
}

class _AccountInfoState extends State<AccountInfo> {
  @override
  Widget build(BuildContext context) {
    final heightm = MediaQuery.sizeOf(context).height;
    final Widthm = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Account"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //My orders
            GestureDetector(
              onTap: () {},
              child: Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black12)),
                height: 60,
                width: Widthm,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.add_box_outlined),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "My Orders",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ],
                      ),
                      Icon(Icons.chevron_right),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            //my Details
            GestureDetector(
              onTap: () {},
              child: Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black12)),
                height: 60,
                width: Widthm,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.manage_accounts_outlined),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "My Details",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ],
                      ),
                      Icon(Icons.chevron_right),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            //Adress
            GestureDetector(
              onTap: () {},
              child: Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black12)),
                height: 60,
                width: Widthm,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.home_mini_outlined),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Address",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ],
                      ),
                      Icon(Icons.chevron_right),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            //payment Method
            GestureDetector(
              onTap: () {},
              child: Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black12)),
                height: 60,
                width: Widthm,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.credit_card_outlined),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Payment Method",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ],
                      ),
                      Icon(Icons.chevron_right),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            //Notification
            GestureDetector(
              onTap: () {},
              child: Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black12)),
                height: 60,
                width: Widthm,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.notifications_none_outlined),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Notifications",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ],
                      ),
                      Icon(Icons.chevron_right),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),

            //Help Center
            GestureDetector(
              onTap: () {},
              child: Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black12)),
                height: 60,
                width: Widthm,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.help_outline_outlined),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Help Center",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ],
                      ),
                      Icon(Icons.chevron_right),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),

            //Logout
            GestureDetector(
              onTap: () {},
              child: Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black12)),
                height: 60,
                width: Widthm,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.logout_outlined),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Logout",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ],
                      ),
                      //   Icon(Icons.chevron_right),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
