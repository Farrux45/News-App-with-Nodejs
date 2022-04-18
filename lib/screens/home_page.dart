import 'package:flutter/material.dart';
import 'package:news_app/constants/color_const.dart';
import 'package:news_app/constants/config_size.dart';
import 'package:news_app/screens/news_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  

  @override
  
  State<MyHomePage> createState() => _MyHomePageState();
  
}


class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 6), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => NewsPage()),
          (route) => false);
    });
    super.initState();
  }
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: getHeight(250.0),
              left: getWidth(40.0),
            ),
            child: Container(
              height: getHeight(200.0),
              width: getWidth(300.0),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/news.png'),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: getWidth(40.0),
              top: getHeight(20.0),
            ),
            child: Text(
              "NEWS",
              style: TextStyle(
                color: Colors.black,
                fontSize: getWidth(50.0),
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
