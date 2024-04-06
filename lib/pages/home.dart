import 'package:flutter/material.dart';
import 'package:grocery_ui/widgets/homepageposts.dart';
import 'package:grocery_ui/widgets/homebottombar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[770],
      body: ListView(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (int i = 1; i < 4; i++)
                  Image.asset(
                    "images/deal$i.jpg",
                    height: 250.0,
                    fit: BoxFit.cover,
                  ),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.8),
                  spreadRadius: 2.0,
                  blurRadius: 5)
            ]),
            child: GridView.count(
              crossAxisCount: 4,
              childAspectRatio: 1,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              shrinkWrap: true,
              children: [
                for (int i = 1; i < 9; i++)
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.6),
                              spreadRadius: 2.0,
                              blurRadius: 5)
                        ]),
                    child: Image.asset(
                      "images/$i.png",
                      fit: BoxFit.cover,
                    ),
                  )
              ],
            ),
          ),
          HomePagePosts(),
        ],
      ),
      bottomNavigationBar: HomeBottomBar(),
    );
  }
}
