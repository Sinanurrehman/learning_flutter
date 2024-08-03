import 'package:application_1/models/catalog.dart';
import 'package:application_1/widgets/drawer.dart';
import 'package:flutter/material.dart';

import '../widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  int days = 15;
  String name = "Flutter";

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(5, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
        //backgroundColor: Color.fromARGB(255, 247, 78, 6)
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(item: dummyList[index]);
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
