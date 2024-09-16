import 'dart:math';

import 'package:flutter/material.dart';
import 'package:recipe/pages/home_page.dart';
import 'package:recipe/utils/recipe.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {

  @override
  Widget build(BuildContext context) {
           Map<String, dynamic>? item = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    Size size = MediaQuery.sizeOf(context);
    Map<String, dynamic>? recipies =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.popAndPushNamed(context, 'home_page');
        }, icon: Icon(Icons.arrow_back_ios_new,color: Colors.white,)),
        title: Text("Detail page",style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.grey.shade900,

      ),
      body: 
          Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: SizedBox(
                          height: size.height * .3,
                          width: size.width * .3,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade800,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.shade900,
                                        blurRadius: 3,
                                      )
                                    ]),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.network(
                                      recipies['image'],
                                    ))),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * .3,
                        width: size.width * .60,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey.shade800,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade900,
                                  blurRadius: 3,
                                ),
                              ]),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 20, top: 10),
                                    child: Text(
                                      recipies['name'],
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 20, top: 10),
                                    child: Text(
                                      "Difficulty  : ${recipies['difficulty']}",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 20, top: 10),
                                    child: Text(
                                      "Cuisine  : ${recipies['cuisine']}",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 20, top: 10),
                                    child: Text(
                                      "Prepare Time  : ${recipies['prepTimeMinutes']}",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 20, top: 10),
                                    child: Text(
                                      "Cook Time  : ${recipies['cookTimeMinutes']}",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 20, top: 10),
                                    child: RatingBarIndicator(
                                      rating: recipies['rating'],
                                      itemBuilder: (context, index) => Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                      ),
                                      itemCount: 5,
                                      itemSize: 20.0,
                                      direction: Axis.horizontal,
                                    ),
                                  )
                                ],
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: SizedBox(
                                    height: size.height * 0.0600,
                                    width: size.width * 0.0900,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.grey.shade800,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.shade900,
                                              blurRadius: 3,
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      
                                          child: InkWell(
                                            onTap: () {
                                              if(!cart_item.contains(item))
                                              {
                                                  item['qty'] = 1;
                                                  cart_item.add(item);
                                              }
                                            },
                                            child: Align(
                                                alignment: Alignment.center,
                                                child: Text("Add to Diet",style: TextStyle(color: Colors.white),)),
                                          ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.1,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 10, left: 20),
                        child: SizedBox(
                          height: size.height * .4,
                          width: size.width * .40,
                          child: Container(
                            
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade800,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.shade900,
                                      blurRadius: 3,
                                    )
                                  ]),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding:
                                          EdgeInsets.only(left: 10, top: 15),
                                      child: Column(
                                        children: recipies['ingredients'].map((ingredients) {
                      return Text(ingredients);
                    }).toList(),
                                        
                                      )),
                                ],
                              )),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10, left: 20),
                        child: SizedBox(
                          height: size.height * .4,
                          width: size.width * .40,
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade800,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.shade900,
                                      blurRadius: 3,
                                    ),
                                  ]),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding:
                                          EdgeInsets.only(left: 10, top: 15),
                                      child: Column(
                                        children: [
                                              Text(
                                          "INSTRUCTION : \n",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white),
                                        ),

                                        Text(
                                          "${recipies['instructions']}",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white),
                                        ),
                                        ],
                                        
                                      )),
                                ],
                              )),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        
      
    );
  }
}
