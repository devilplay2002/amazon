import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: AmazonApp(),
  ));
}

class AmazonApp extends StatefulWidget {
  @override
  _AmazonAppState createState() => _AmazonAppState();
}

class _AmazonAppState extends State<AmazonApp> {
  //Here I'm going to create a custom widget for the items box
  Widget Items(String name, String category, String imgUrl, String price) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        // this widget will make your container clickable
        onTap: () {},
        child: Container(
          width: 180.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Column(
            children: [
              Image(
                image: NetworkImage(imgUrl),
                width: 170.0,
                height: 160.0,
                alignment: Alignment.center,
              ),
              Text(
                name,
                style: TextStyle(fontSize: 22.0),
              ),
              Text(
                category,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey,
                ),
              ),
              Text(
                "$price£",
                style: TextStyle(
                    fontSize: 22.0,
                    color: Color(
                      0xFFFF9900,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }

  //Now I'm going to import a list of images that I collected from Unsplash and amazon website
  //you can choose the image that you want and add them into the list
  List<String> ImgUrl = [
    "https://feeds.abplive.com/onecms/images/uploaded-images/2022/05/25/1108e62af167bf4cce1977ae46fb52b0_original.jpg",
    "https://images.samsung.com/in/smartphones/galaxy-s23-ultra/buy/DM3-mob-1.jpg",
    "https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/refurb-mbp14-space-m1-2021_GEO_CH?wid=1144&hei=1144&fmt=jpeg&qlt=90&.v=1638575280000",
    "https://ae01.alicdn.com/kf/Had6168a78aca4553b96eab6a5564cd0bB/Original-Blue-yeti-professional-condenser-microphone-Karaoke-recording-live-broadcasting-USB-microphone-with-stand.jpg",
    "https://images-na.ssl-images-amazon.com/images/I/61fTX5TjAEL._UX569_.jpg",
    "https://images-eu.ssl-images-amazon.com/images/G/31/img17/PC/sprocket/Tile-2-1._SS200_.jpg",
    "https://images-eu.ssl-images-amazon.com/images/I/51JKnkxCl7L._AC_SX184_.jpg",
    "https://images-na.ssl-images-amazon.com/images/I/710tUwxHq7L._UL1500_.jpg",
    "https://images-na.ssl-images-amazon.com/images/I/61LQQSc9fZL._UL1440_.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF10161D),
      appBar: AppBar(
        backgroundColor: Color(0xFF222e3D),
        title: Text(
          "Amazon",
          style: TextStyle(
            color: Color(0xFFFF9900),
          ),
        ),
        centerTitle: true,
          actions: [
      Row(
      children: [
        TextButton(
      onPressed: () {},
      child: Icon(
        Icons.shopping_cart,
        color: Colors.white,
            ),
          )
        ],
      ),
    ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 38, vertical: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(20.0),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.0),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    hintText: "Search...",
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "New Items",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28.0,
                  ),
                ),
              ),
              //Now we will add the items list
              Container(
                width: double
                    .infinity, // this line will make the container take the full width of the device
                height:
                270.0, // when you want to create a list view you should precise the height and width of it's container
                child: ListView(
                  scrollDirection: Axis
                      .horizontal, // this will make the list scroll horizontally
                  children: [
                    //now let's add an item to test
                    Items("JBL headphones", "Audio", ImgUrl[0], "63.3"),
                    Items("Sumsung", "Smartphones", ImgUrl[1], "633.3"),
                    Items("MacBook pro", "Tech", ImgUrl[2], "1200.56"),
                    Items("Blue yeti", "Audio", ImgUrl[3], "123.3"),
                    //Note that this is the UI of the App but you can easly implement a backend service via a REST API
                  ],
                ),
              ),
              //for the second part of the app it's the same principale so let's just copy the first elements
              //Let's add some space
              SizedBox(
                height: 20.0,
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Recommended for you",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28.0,
                  ),
                ),
              ),
              Container(
                width: double
                    .infinity, // this line will make the container take the full width of the device
                height:
                270.0, // when you want to create a list view you should precise the height and width of it's container
                child: ListView(
                  scrollDirection: Axis
                      .horizontal, // this will make the list scroll horizontally
                  children: [
                    //now let's add an item to test
                    Items("Jacket", "Fashion", ImgUrl[4], "63.3"),
                    Items("IMac Pro", "Tech", ImgUrl[5], "6353.63"),
                    Items("Books", "Books", ImgUrl[6], "12.56"),
                    Items("Sunglasses", "Fashion", ImgUrl[7], "6.3"),
                    Items("Watch", "Fashion", ImgUrl[8], "600.9"),
                    //Note that this is the UI of the App but you can easly implement a backend service via a REST API
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      //Now i'm going to add a bottom navbar
          bottomNavigationBar: BottomNavigationBar(
    backgroundColor: Color(0xFF10161d),
    selectedItemColor: Color(0xFFFF9900),
    unselectedItemColor: Colors.white,
    //you should at least have 2 items with the icon and title or you will have an error
    items: [
    BottomNavigationBarItem(
    icon: Icon(Icons.home),
    label: "Home",
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.favorite),
    label: "Favorite",
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.person),
    label: "Account",
    ),
    ],
    ),
    );
        //that's it for the UI, thank you for watching, if you want to see a full Tutorial
        //on how to build a fully functional shopping app, just put it in the comment
        //Don't forget to subscribe ;) <3

  }
}

mixin body {
}




