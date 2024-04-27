import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:trendy_threads/utlis/db.dart';

class AllItemScreen extends StatelessWidget {
  const AllItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String titile;
    List category = [
      "All",
      "Shirt",
      "Tshirt",
      "Pants",
      "Jackets",
    ];
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Search for products brand and more ",
                  contentPadding: EdgeInsets.all(10),
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder()),
            ),
            Container(
              //  /     color: Colors.amber,
              height: 60,
              child: ListView.builder(
                itemCount: category.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Row(
                    children: [
                      Chip(
                        label: Text(category[index]),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
                child: GridView.builder(
              itemCount: Dbdata.menscollections.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 280,
                  width: 161,
                  // color: Colors.grey,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 224,
                          width: 161,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      Dbdata.menscollections[index]))),
                        ),
                        // SizedBox(
                        //   height: 10,
                        // ),
                        Text(
                          "titile",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        Text(
                          "Price",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                );
              },
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.6,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 0),
            ))
          ],
        ),
      ),
    );
  }
}
