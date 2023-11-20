// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:meal_app/catogary_item.dart';
import 'package:meal_app/dummy_data.dart';

class CatogariesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(20),
      children: DUMMY_CATAGORIES
          .map(
            (catdata) => CatogariesItem(
              catdata.id,
              catdata.title,
              catdata.color,
              catdata.iconAssestPath,
            ),
          )
          .toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: (1.4),
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
    );
  }
}
