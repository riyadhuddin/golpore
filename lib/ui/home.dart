import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:golpore/widgets/custom_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.blue),
          title: CustomText(
              text: "Golpore",
              size: 12,
              color: Colors.amberAccent,
              weight: FontWeight.w200),
          bottom: TabBar(
            tabs: [
              Tab(
                  icon: Icon(
                Icons.photo,
                color: Colors.black,
              )),
              Tab(
                  icon: Icon(
                Icons.call,
                color: Colors.black,
              )),
              Tab(
                  icon: Icon(
                Icons.face,
                color: Colors.black,
              )),
            ],
          ),
        ),
        drawer: Drawer(
          child: Text("Hi log here"),
        ),
        body: Container(
          child: Text("Put your content here"),
        ),
      ),
    );
  }
}
