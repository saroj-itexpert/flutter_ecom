import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter_ecom/components/horizontal_listview.dart';

void main() => runApp(new MaterialApp(
  title: "Flutter Ecommerce App",
  home: HomePage(),
  debugShowCheckedModeBanner: false,

));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        animationDuration: Duration(milliseconds: 2000),
        boxFit: BoxFit.cover,
        images: [
          AssetImage("images/m1.jpeg"),
          AssetImage("images/c1.jpg"),
          AssetImage("images/w3.jpeg"),
          AssetImage("images/w4.jpeg"),
          AssetImage("images/m2.jpg"),

        ],
        dotColor: Colors.grey,
        dotSpacing: 25.0,
        indicatorBgPadding: 5.0,
        animationCurve: Curves.fastOutSlowIn,
        autoplay: false,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("ShopApp"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.shopping_cart),
          )
        ],
      ),
      
      //body section 
      body: ListView(
        children: <Widget>[
          //image carousel begins here..
          image_carousel,
          Padding(padding: const EdgeInsets.all(8.0),),
          Text("Categories"),
          //horizontal listview begins here...
          HorizontalList(),
          
        ],

      ),
      
      drawer: Drawer(
        elevation: 10.0,
        child: new ListView(

          children: <Widget>[
            UserAccountsDrawerHeader(
                accountName: Text("Saroj Maharjan"),
                accountEmail: Text("maharjan.saroj93@gmail.com"),
                currentAccountPicture: GestureDetector(
                  child: new CircleAvatar(
                    backgroundImage: AssetImage("images/m1.jpeg"),
                  ),
                ),
              //change the color of user profile picture box
              decoration: BoxDecoration(
                color: Colors.pink,
              ),
            ),

            //body of the drawer section
            InkWell(
              onTap: (){print("Home Button Clicked");},
              child: ListTile(
                leading: Icon(Icons.home, color: Colors.red,),
                title: Text("Home", style: TextStyle(color: Colors.black),),

                ),
            ),
            InkWell(
              onTap: (){print("My Account Button Clicked");},
              child: ListTile(
                leading: Icon(Icons.person, color: Colors.red,),
                title: Text("My Account", style: TextStyle(color: Colors.black),),

              ),
            ),
            InkWell(
              onTap: (){print("My Orders Button Clicked");},
              child: ListTile(
                leading: Icon(Icons.shopping_basket, color: Colors.red,),
                title: Text("My Orders", style: TextStyle(color: Colors.black),),

              ),
            ),
            InkWell(
              onTap: (){print("Categories Button Clicked");},
              child: ListTile(
                leading: Icon(Icons.category, color: Colors.red,),
                title: Text("Categories", style: TextStyle(color: Colors.black),),

              ),
            ),
            InkWell(
              onTap: (){print("Favourites Button Clicked");},
              child: ListTile(
                leading: Icon(Icons.favorite, color: Colors.red,),
                title: Text("Favourites", style: TextStyle(color: Colors.black),),

              ),
            ),
            Divider(),
            InkWell(
              onTap: (){print("Settings Button Clicked");},
              child: ListTile(
                leading: Icon(Icons.settings, color: Colors.grey,),
                title: Text("Settings", style: TextStyle(color: Colors.black),),

              ),
            ),
            InkWell(
              onTap: (){print("About Button Clicked");},
              child: ListTile(
                leading: Icon(Icons.help, color: Colors.blue,),
                title: Text("About", style: TextStyle(color: Colors.black),),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
