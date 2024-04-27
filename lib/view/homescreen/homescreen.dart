import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:trendy_threads/utlis/db.dart';
import 'package:trendy_threads/view/Custom_cards/custom_cards.dart';
import 'package:trendy_threads/view/homescreen/widgets/Carouseldliderscreen.dart';
import 'package:trendy_threads/view/homescreen/widgets/seeall_screen.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    // List imagepath = [];
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Picked for you",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: 200,

                    // /width: 300,
                    child: Swiper(
                      pagination: SwiperPagination(),
                      autoplay: true,
                      viewportFraction: 0.5,
                      scale: 1,
                      layout: SwiperLayout.DEFAULT,
                      itemCount: Dbdata.menscollections.length,
                      itemWidth: 200,
                      itemHeight: 405,
                      loop: true,
                      duration: 2002,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 200,
                          // width: 400,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      Dbdata.menscollections[index]),
                                  fit: BoxFit.cover)),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Mens",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => AllItemScreen(),
                                  ));
                            },
                            child: Text(
                              "See all",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 290,
                        child: ListView.builder(
                          itemCount: Dbdata.menscollections.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Customcards(
                              titile: "reshy",
                              amount: "3987",
                              subtitile: "disuibdus",
                              imagelist: Dbdata.menscollections[index],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Womens",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "See all",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 290,
                        child: ListView.builder(
                          itemCount: Dbdata.womenscollections.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Customcards(
                              titile: "reshy",
                              amount: "3987",
                              subtitile: "disuibdus",
                              imagelist: Dbdata.womenscollections[index],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Kids",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "See all",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 290,
                        child: ListView.builder(
                          itemCount: Dbdata.kidscollections.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Customcards(
                              titile: "reshy",
                              amount: "3987",
                              subtitile: "disuibdus",
                              imagelist: Dbdata.kidscollections[index],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 70,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
