import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Customcards extends StatelessWidget {
  const Customcards(
      {super.key,
      required this.titile,
      required this.imagelist,
      required this.subtitile,
      required this.amount});

  final String titile;
  final String subtitile;
  final String amount;
  final String imagelist;

  @override
  Widget build(BuildContext context) {
    return Container(
      //  color: Colors.red,
      width: 161,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 204,
            width: 161,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(imagelist), fit: BoxFit.fill),
                // color: Colors.amber,
                borderRadius: BorderRadius.circular(20)),
          ),
          SizedBox(
            height: 4,
          ),
          SizedBox(
            child: Center(
              child: Column(
                children: [
                  Text(
                    titile,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    subtitile,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  Text(
                    amount,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
