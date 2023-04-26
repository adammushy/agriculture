import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'blog.dart';

class MarketPlace extends StatefulWidget {
  const MarketPlace({super.key});

  @override
  State<MarketPlace> createState() => _MarketPlaceState();
}

class _MarketPlaceState extends State<MarketPlace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("data1"),
                Text("data2"),
                Text("data3"),
              ],
            ),
            marketPlace(),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ArticlesPage()));
                },
                child: Text("article"),
              ),
            )
          ],
        ),
      ),
    );
  }

  marketPlace() {
    // return ListView(
    //   scrollDirection: Axis.vertical,
    //   children: [
    //     Container(
    //       child: Column(
    //         children: [
    //           Row(
    //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //             children: [
    //               Container(
    //                 child: Text("Crop1"),
    //               ),
    //               Text("old p"),
    //               Text("New p"),
    //               Text("changes")
    //             ],
    //           )
    //         ],
    //       ),
    //     )
    //   ],
    // );

    return GestureDetector(
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 0,
                blurRadius: 2,
                offset: Offset(0, 1),
              ),
            ]),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(children: [
                    Container(
                      width: 60,
                      height: 60,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        // child: Image.asset(snapshot.data![index].product_image.toString()),

                        // remove image after creating upload backend image to the server
                        child: Image(
                            image: AssetImage("assets/tour.png"),
                            // image: NetworkImage(
                            //   CallApi.image_crop +
                            //       snapshot.data![index]
                            //           .images![0]['image']
                            //           .toString(),
                            // ),
                            fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(width: 10),
                    Flexible(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Text("name",
                                  // snapshot.data![index].name
                                  //     .toString(),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500)),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("",
                                // snapshot.data![index].name
                                // .toString(),
                                style: TextStyle(color: Colors.grey[500])),
                          ]),
                    )
                  ]),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
      //         onTap: () {
      //           Navigator.push(
      //               context,
      //               MaterialPageRoute(
      //                   builder: (context) =>DetailPage(
      //                         snapshot.data![index].id,
      //                         snapshot.data![index].name,
      //                         snapshot.data![index].description,
      //                         // snapshot.data![index].district,
      //                         // snapshot.data![index].product_code,
      //                         snapshot.data![index].images,
      //                         widget.name,
      //                         // snapshot.data![index].quantity,
      //                         // snapshot.data![index].buying_price,
      //                         // snapshot.data![index].retail_price,
      //                         // snapshot.data![index].wholesale_price,
      //                         // snapshot.data![index].supplier,
      //                         // snapshot.data![index].e_commerce_status,.
      //                       )
      //                       )
      //                       );
      //         },
      //       );
    );
  }
}
