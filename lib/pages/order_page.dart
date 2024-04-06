import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.all(10),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back, size: 28),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 15, top: 20),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Fill Order Details',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15, top: 20),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 370,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'First Name',
                    hintStyle: TextStyle(fontSize: 20.0),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15, top: 20),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 370,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Last Name',
                    hintStyle: TextStyle(fontSize: 20.0),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15, top: 20),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 370,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Mobile Number',
                    hintStyle: TextStyle(fontSize: 20.0),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15, top: 20),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 370,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Email',
                    hintStyle: TextStyle(fontSize: 20.0),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15, top: 20),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 370,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Address',
                    hintStyle: TextStyle(fontSize: 20.0),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 15, top: 20),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(10),
            ),
            width: 370,
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'City',
                hintStyle: TextStyle(fontSize: 20.0),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15, top: 20),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(10),
            ),
            width: 370,
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Postal Code/Zip',
                hintStyle: TextStyle(fontSize: 20.0),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          InkWell(
            onTap: () {},
            child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.yellow[800],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  'Order Now',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                )),
          )
        ],
      ),
    );
  }
}
