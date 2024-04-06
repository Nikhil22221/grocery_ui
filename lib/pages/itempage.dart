import 'package:flutter/material.dart';
import 'package:grocery_ui/widgets/itembottombar.dart';

class ItemPage extends StatefulWidget {
  const ItemPage({super.key});

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            color: Colors.yellow[200],
            width: double.infinity,
            height: 390,
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          size: 28,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 1.0,
                                  blurRadius: 5.0)
                            ]),
                        child: Icon(
                          Icons.favorite,
                          size: 30.0,
                          color: Colors.yellow[700],
                        ),
                      )
                    ],
                  ),
                ),
                Image.asset(
                  'images/2.png',
                  height: 280,
                  width: 280,
                  fit: BoxFit.contain,
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.7),
                spreadRadius: 1,
                blurRadius: 5,
              )
            ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Item Name",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      '\$50',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.yellow[800]),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '400 Gram',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.7),
                  spreadRadius: 1,
                  blurRadius: 5)
            ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Product Details',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'The iS tHe Description OF THE Product. Enjoy The Fruits ANd We Hope You WIll SHop IWth US AGain.Enjoy The Fruits ANd We Hope You WIll SHop IWth US AGain.',
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 25),
                child: Text(
                  "Only For You",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 5,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (int i = 1; i < 9; i++)
                      Container(
                        height: 90,
                        width: 90,
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.only(top: 8, bottom: 8, left: 22),
                        decoration: BoxDecoration(
                          color: Colors.yellow[200],
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 1,
                                spreadRadius: 8),
                          ],
                        ),
                        child: Image.asset(
                          'images/$i.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
      bottomNavigationBar: ItemBottomBar(),
    );
  }
}
