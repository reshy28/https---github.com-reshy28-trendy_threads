// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:trendy_threads/utlis/color_constant.dart';

// class Carouselsliderscreen extends StatelessWidget {
//   const Carouselsliderscreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     List pickedimages = [
//       "assets/images/shirts/1.png",
//       "assets/images/shirts/3.png",
//       "assets/images/shirts/4.png",
//       "assets/images/shirts/5.png",
//       "assets/images/shirts/6.png",
//     ];
//     int _currentIndex = 0;
//     final CarouselController _controller = CarouselController();
//     return Scaffold(
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Center(
//             child: Container(
//               decoration: BoxDecoration(),
//               width: MediaQuery.sizeOf(context).width,
//               child: Column(
//                 children: [
//                   Container(
//                     height: 140,
//                     width: MediaQuery.sizeOf(context).width,
//                     child: CarouselSlider(
//                       carouselController: _controller,
//                       options: CarouselOptions(
//                         enableInfiniteScroll: true,
//                         viewportFraction: 1,
//                         enlargeCenterPage: true,
//                         //  disableCenter: true,
//                         // enlargeStrategy: CenterPageEnlargeStrategy.zoom,
//                         autoPlay: true,
//                         initialPage: _currentIndex,
//                         onPageChanged: (index, reason) {},
//                       ),
//                       items: List.generate(
//                         pickedimages.length,
//                         (index) => Container(
//                           width: 180,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(30),
//                             image: DecorationImage(
//                                 image: AssetImage(pickedimages[index]),
//                                 fit: BoxFit.fill),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Text(
//                     "Shirt",
//                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
//                   ),
//                   Text(
//                     "LENIN SHIRTS",
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         "₹1999",
//                         style: TextStyle(
//                             fontSize: 17, fontWeight: FontWeight.bold),
//                       ),
//                     ],
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
