import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grocery_ui/pages/home.dart';
import 'package:grocery_ui/widgets/homepageposts.dart';
import 'package:grocery_ui/pages/itempage.dart';
import 'package:grocery_ui/pages/order_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        'itemPage': (context) => ItemPage(),
        'orderPage': (context) => OrderPage(),
      },
    );
  }
}
