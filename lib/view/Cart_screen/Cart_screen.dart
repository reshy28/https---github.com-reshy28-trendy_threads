import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:trendy_threads/utlis/color_constant.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Cart",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 340,
              child: ListView.separated(
                  itemBuilder: (context, index) =>
                      Container(child: cartitems(context)),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 0,
                      ),
                  itemCount: 20),
            ),
            Padding(
              padding: const EdgeInsets.all(13),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Sub-Total"),
                      Text(
                        "₹9328",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Shipping Fee",
                      ),
                      Text(
                        "₹90",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "TOTAL",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        "₹9328",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      )
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20)),
                    height: 40,
                    width: MediaQuery.sizeOf(context).width,
                    child: Center(
                      child: Text(
                        "Go To Checkout",
                        style: TextStyle(color: Colorconstants.mywhite),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Padding cartitems(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7),
      child: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.black12)),
        //  color: Colors.blue,
        height: 144,
        width: MediaQuery.sizeOf(context).width,
        child: Row(
          children: [
            Container(
              height: 144,
              width: 91,
              child: Image.network(
                  "https://images.pexels.com/photos/47856/rolex-wrist-watch-clock-gmt-47856.jpeg"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Fabric Strap Watch",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Size/32 MM"),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 27,
                    width: 77,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: CircleAvatar(
                            maxRadius: 13,
                            child: Icon(
                              Icons.add,
                              color: Colorconstants.myblack,
                              size: 15,
                            ),
                          ),
                        ),
                        Text(
                          "2",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        InkWell(
                          onTap: () {},
                          child: CircleAvatar(
                            maxRadius: 13,
                            child: Icon(
                              Icons.remove,
                              size: 15,
                              color: Colorconstants.myblack,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "₹400",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
