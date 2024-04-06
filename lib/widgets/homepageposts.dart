import 'package:flutter/material.dart';

class HomePagePosts extends StatefulWidget {
  const HomePagePosts({super.key});

  @override
  State<HomePagePosts> createState() => _HomePagePostsState();
}

class _HomePagePostsState extends State<HomePagePosts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5),
      ]),
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              "Flash Sale",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 14.0,
          ),
          GridView.count(
            physics: NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            childAspectRatio: 0.7,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            shrinkWrap: true,
            children: [
              for (int i = 1; i < 9; i++)
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.grey[798],
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 1.0,
                            blurRadius: 3.0)
                      ]),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, 'itemPage');
                        },
                        child: Image.asset(
                          'images/$i.png',
                          fit: BoxFit.contain,
                          height: 150,
                          width: 120,
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Item Name",
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Row(
                              children: [
                                Text(
                                  '\$50',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.orange[600]),
                                ),
                                SizedBox(
                                  width: 2.0,
                                ),
                                Text(
                                  '/ 1KG',
                                  style: TextStyle(fontSize: 18.0),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Icon(
                                  Icons.favorite_border,
                                  color: Colors.orange[600],
                                  size: 28.0,
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
            ],
          )
        ],
      ),
    );
  }
}
