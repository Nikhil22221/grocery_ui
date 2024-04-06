import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeBottomBar extends StatefulWidget {
  const HomeBottomBar({super.key});

  @override
  State<HomeBottomBar> createState() => _HomeBottomBarState();
}

class _HomeBottomBarState extends State<HomeBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      decoration: BoxDecoration(color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Icon(
                Icons.home,
                color: Colors.yellow[700],
                size: 32,
              ),
              Text(
                'Home',
                style: TextStyle(
                    color: Colors.yellow[700],
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.search,
                color: Colors.yellow[700],
                size: 32,
              ),
              Text(
                'Explore',
                style: TextStyle(
                    color: Colors.yellow[700],
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          InkWell(
            onTap: () {
              //Navigator.pushNamed(context, 'cartPage');
            },
            child: Column(
              children: [
                Icon(
                  CupertinoIcons.cart,
                  color: Colors.yellow[700],
                  size: 32,
                ),
                Text(
                  'My Cart',
                  style: TextStyle(
                      color: Colors.yellow[700],
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Column(
            children: [
              Icon(
                Icons.person,
                color: Colors.yellow[700],
                size: 32,
              ),
              Text(
                'My Account',
                style: TextStyle(
                    color: Colors.yellow[700],
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              )
            ],
          )
        ],
      ),
    );
  }
}
