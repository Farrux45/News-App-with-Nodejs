import 'package:flutter/material.dart';
import 'package:news_app/constants/color_const.dart';
import 'package:news_app/widget/search_page.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConst.orange,
        elevation: 0,
        title: Row(
          children: [
            InkWell(
              child: Icon(Icons.menu),
              onTap: () {
                Drawer();
              },
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("NEWS"),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: InkWell(
                child: Icon(Icons.search),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (contex) {
                    return SearchPage();
                  }));
                }),
          ),
        ],
      ),
    );
  }
}
