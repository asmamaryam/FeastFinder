// ignore_for_file: unused_local_variable

import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:meal_app/meal.dart';

import './meal_item.dart';

class CatogariesScreenMeal extends StatefulWidget {
  static const routname = '/catogary-mealScreen';
  final List<Meal> _avalibleMeals;
  CatogariesScreenMeal(this._avalibleMeals);

  @override
  State<CatogariesScreenMeal> createState() => _CatogariesScreenMealState();
}

class _CatogariesScreenMealState extends State<CatogariesScreenMeal> {
  String catogaryTitle = '';
  late List<Meal> displayedMeals;
  var _loadedInitData = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (!_loadedInitData) {
      final routeArgs =
          ModalRoute.of(context)!.settings.arguments as Map<String, String>;
      final catogaryid = routeArgs['id'];
      final catogaryTitle = routeArgs['title'];

      displayedMeals = widget._avalibleMeals.where((meal) {
        return meal.categaries.contains(catogaryid);
      }).toList();
      _loadedInitData = true;
    }

    super.didChangeDependencies();
  }

  void _removeMeal(String mealId) {
    setState(() {
      displayedMeals.removeWhere((element) => element.id == mealId);
    });
  }

//  final String catogaryid;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(catogaryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: displayedMeals[index].id,
            name: displayedMeals[index].name,
            imageUrl: displayedMeals[index].imageUrl,
            duration: displayedMeals[index].duration,
            affordibility: displayedMeals[index].affordibility,
            complexity: displayedMeals[index].complexity,
          );
        },
        itemCount: displayedMeals.length,
      ),
    );
  }
}
