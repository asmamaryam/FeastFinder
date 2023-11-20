import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import './catogaries_screen_meal.dart';

class CatogariesItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;
  final String iconAssestPath;

  CatogariesItem(this.id, this.title, this.color, this.iconAssestPath);

  void selectcatogary(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(CatogariesScreenMeal.routname, arguments: {
      'id': id,
      'title': title,
      'iconAssestPath': iconAssestPath,
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectcatogary(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.displayLarge,
            ),
            Container(
              margin: EdgeInsets.only(top: 25),
              child: SvgPicture.asset(
                iconAssestPath,
                width: 30,
                height: 30,
                color: Colors.black,
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.6),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
