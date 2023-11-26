import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dinoss/widgets/CategoriesWidget.dart';
import 'package:dinoss/widgets/HomeAppBar.dart';
import 'package:dinoss/widgets/ItemsWidget.dart';
import 'package:dinoss/pages/InputProductPage.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HomeAppBar(),
          Container(
            //temporary height
            //height: 500,
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 76, 125, 224),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(

                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        height: 50,
                        width: 300,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search Here',
                          ),
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.camera_alt,
                        size: 27,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ), 
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 10,
                  ),
                  child: Text(
                    "Categories",
                    style: TextStyle(
                      fontSize: 25, 
                      fontWeight: FontWeight.bold, 
                      color: Color.fromARGB(255, 0, 0, 0),),
                  ),
                ),

                //Categories
                CategoriesWidget(),

                //items
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Text(
                    "Best Selling",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color:  Color.fromARGB(255, 0, 0, 0),
                    ),
                    ),
                ),

                ItemsWidget(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color.fromARGB(0, 135, 234, 42),
        onTap: (index) {
          if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => InputProdukPage()),
            );
          }
        },
        height: 70,
        color:  Color.fromARGB(255, 4, 4, 4),
        items: [
          Icon(
            Icons.home, 
            size: 30, 
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
          Icon(
            CupertinoIcons.cart_fill, 
            size: 30, 
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
          Icon(
            Icons.list, 
            size: 30, 
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
        ],
      ),
    );
  }
}