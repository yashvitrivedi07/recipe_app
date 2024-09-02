import 'package:flutter/material.dart';
import 'package:recipe/utils/recipe.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:recipe/utils/recipe.dart';
import 'package:recipe/pages/detail_page.dart';
import 'package:recipe/pages/home_page.dart';


class FavPage extends StatefulWidget {
  const FavPage({super.key});

  @override
  State<FavPage> createState() => _FavPageState();
}

class _FavPageState extends State<FavPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.popAndPushNamed(context, 'home_page');
        }, icon: Icon(Icons.arrow_back_ios_new,color: Colors.white,)),
        title: Text("fav page",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.grey.shade900,
      ),
      body: Padding(padding: EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: cart_item.map((e) => SizedBox(
                                    height: size.height * 0.450,
                                    width: size.width * .80,
                                    
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.grey.shade800,
                                          borderRadius: BorderRadius.only(topLeft: Radius.circular(40) , bottomLeft: Radius.circular(40) ,topRight: Radius.circular(200) , bottomRight: Radius.circular(200) )),
                                          margin: EdgeInsets.all(30),
                                        child: Expanded(
                                        child: Stack(
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 20,
                                                        top: 20,
                                                        right: 10),
                                                    child: Text(
                                                      e['name'],
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20),
                                                    )),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 20, top: 10),
                                                    child: Text(
                                                      "Prepare time : ${e['prepTimeMinutes']}"
                                                          .toString(),
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 16),
                                                    )),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 20, top: 10),
                                                    child: Text(
                                                      "Cook time : ${e['cookTimeMinutes']}"
                                                          .toString(),
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 16),
                                                    )),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 20, top: 10),
                                                    child: Text(
                                                      "Difficulty : ${e['difficulty']}"
                                                          .toString(),
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 16),
                                                    )),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 20, top: 10),
                                                  child: RatingBarIndicator(
                                                    rating: e['rating'],
                                                    itemBuilder: (context, index) =>
                                                        Icon(
                                                      Icons.star,
                                                      color: Colors.amber,
                                                    ),
                                                    itemCount: 5,
                                                    itemSize: 30.0,
                                                    direction: Axis.horizontal,
                                                  ),
                                                ),
                                                Padding(padding: EdgeInsets.only(left: 20,top: 10),
                                                child: IconButton(onPressed: () {
                                                  cart_item.remove(e);
                                                  setState(() {
                                                  });
                                                }, icon: Icon(Icons.delete,color: Colors.white,)),
                                                )
                                              ],
                                            ),
                                            
                                              Align(
                                                alignment: Alignment.centerRight,
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(200),
                                                  child: Image.network(
                                                    e['image'],
                                                    scale: 1,
                                                  ),
                                                ),
                                              ),
                                            
                                          ],
                                        ),
                                      ),
                                         
                                        
                                      
                                    ),
                                  ),).toList(),
          ),
        ),
      ),
      ),
    );
  }
}