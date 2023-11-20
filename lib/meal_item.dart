// ignore_for_file: unnecessary_import

import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:meal_app/meal_detail_screen.dart';
import './meal.dart';

class MealItem extends StatelessWidget {
  final String id;
  final String name;
  final Affordibility affordibility;
  final Complexity complexity;
  final String imageUrl;
  final int duration;

  MealItem({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.affordibility,
    required this.complexity,
    required this.duration,
  });

  String get complexitytext {
    switch (complexity) {
      case Complexity.simple:
        return 'Simple';
      case Complexity.challenging:
        return 'Challenging';
      case Complexity.hard:
        return 'Hard';
      default:
        return 'unkown';
    }
  }

  String get affordibilitytext {
    switch (affordibility) {
      case Affordibility.affordable:
        return 'Affordable';
      case Affordibility.luxurious:
        return 'Luxurious';
      case Affordibility.pricy:
        return 'Pricy';
      default:
        return 'unkown';
    }
  }

  void selectmeeal(BuildContext atx) {
    Navigator.of(atx)
        .pushNamed(
      MealDeatailScreen.routename,
      arguments: id,
    )
        .then((result) {
      //  removeitem(result);
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectmeeal(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 10,
                  child: Container(
                    width: 300,
                    color: Colors.black54,
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    child: Text(
                      name,
                      style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.schedule,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text('$duration min'),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.work,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(complexitytext),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.attach_money,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(affordibilitytext),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
