
import 'package:flutter/material.dart';
import 'package:recipe/utils/recipe.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        title: Text(
          "Home Page",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(onPressed: () {
            Navigator.pushNamed(context, 'fav_page');
          }, icon: Icon(Icons.thumb_up,color: Colors.white,))
        ],
      ),
      body: SizedBox(
        height: size.height * 100,
        width: size.width * 100,
        child: Container(
          decoration: BoxDecoration(color: Colors.grey.shade900),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
           
            
child: Column(
                children: allRecipies
                    .map((e) => count++ % 2 == 0 
                    
                    ? Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed('detail_page', arguments: e);
                              },

                              
                              child: SizedBox(
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
                              ),
                            ),
                          ],
                        )

                        //condition 

                        :Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed('detail_page', arguments: e);
                              },

                              
                              child: SizedBox(
                                height: size.height * 0.450,
                                width: size.width * .80,
                                
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade800,
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(40) , bottomRight: Radius.circular(40) ,topLeft: Radius.circular(200) , bottomLeft: Radius.circular(200) )),
                                      margin: EdgeInsets.all(30),
                                    child: Expanded(
                                    child: Stack(
                                      children: [
                                        
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Align(
                                              alignment: Alignment.centerRight,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 20,
                                                      top: 20,
                                                      left: 10),
                                                  child: Align(
                                                    alignment: Alignment.topRight,
                                                    child: Text(
                                                      e['name'],
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20),
                                                    ),
                                                  )),
                                            ),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    right: 20, top: 10),
                                                child: Text(
                                                  "Prepare time : ${e['prepTimeMinutes']}"
                                                      .toString(),
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 16),
                                                )),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    right: 20, top: 10),
                                                child: Text(
                                                  "Cook time : ${e['cookTimeMinutes']}"
                                                      .toString(),
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 16),
                                                )),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    right: 20, top: 10),
                                                child: Text(
                                                  "Difficulty : ${e['difficulty']}"
                                                      .toString(),
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 16),
                                                )),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  right: 20, top: 10),
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
                                          ],
                                        ),
                                        
                                          Align(
                                            alignment: Alignment.centerLeft,
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
                              ),
                            ),
                          ],
                        )
                    
                    
                    ).toList()),
          ),
            
          )
        ),
      );
    
  }
}
