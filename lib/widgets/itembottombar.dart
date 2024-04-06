import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemBottomBar extends StatefulWidget {
  const ItemBottomBar({super.key});

  @override
  State<ItemBottomBar> createState() => _ItemBottomBarState();
}

class _ItemBottomBarState extends State<ItemBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 25),
      decoration: BoxDecoration(color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 220,
              width: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.yellow[700],
                borderRadius: BorderRadius.circular(10),
              ),
              child:
                  Icon(CupertinoIcons.cart_fill, color: Colors.white, size: 35),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'orderPage');
            },
            child: Container(
              height: 60,
              width: 220,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.yellow[700],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'Buy Now',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                    letterSpacing: 1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
