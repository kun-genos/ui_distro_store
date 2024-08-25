import 'package:flutter/material.dart';
import 'package:ui_distro_app/data.dart';
import 'package:ui_distro_app/item_widget.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 3,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        title: Center(
          child: Text(
            "Drizzle Store",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          Row(
            children: [
              Icon(
                Icons.search,
                color: Colors.black,
              ),
              Stack(children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.shopping_bag,
                    color: Colors.black,
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 3,
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.blue),
                    child: Center(
                      child: Text(
                        "5",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w800),
                      ),
                    ),
                  ),
                )
              ])
            ],
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.5,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            return ItemWidget(data: allData[index]);
          },
          itemCount: allData.length,
        ),
      ),
    );
  }
}
