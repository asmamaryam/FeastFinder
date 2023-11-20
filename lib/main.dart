// ignore_for_file: deprecated_member_use, body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import './catogaries_screen.dart';
import './meal_detail_screen.dart';
import './tabs_screen.dart';
import './filters_screen.dart';
import './dummy_data.dart';
import './meal.dart';
import './catogaries_screen_meal.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  Map<String, bool> _filters = {
    'gluten': false,
    'lactose': false,
    'vegan': false,
    'vegetarain': false,
  };
  List<Meal> _avaliblemeal = DUMMY_MEALS;
  List<Meal> _favouritemeal = [];

  void _setFiter(Map<String, bool> fiterdata) {
    setState(() {
      _filters = fiterdata;
      _avaliblemeal = DUMMY_MEALS.where((meal) {
        if (_filters['gluten'] == true && !meal.IsGlutenfree) {
          return false;
        }

        if (_filters['lactose'] == true && !meal.islactosefree) {
          return false;
        }

        if (_filters['vegan'] == true && !meal.isvegan) {
          return false;
        }

        if (_filters['vegetarain'] == true && !meal.isvegrtarian) {
          return false;
        }
        return true;
      }).toList();
    });
  }
////////////////

  void _toggleFavorite(String mealid) {
    final existingIndex =
        _favouritemeal.indexWhere((element) => element.id == mealid);
    if (existingIndex >= 0) {
      setState(() {
        _favouritemeal.removeAt(existingIndex);
      });
    } else {
      setState(() {
        _favouritemeal
            .add(DUMMY_MEALS.firstWhere((element) => element.id == mealid));
      });
    }
  }
////////////

  bool _ismelFav(String id) {
    return _favouritemeal.any((element) => element.id == id);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: TextTheme(
          displayLarge: TextStyle(
            color: Color.fromRGBO(20, 50, 50, 1),
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
          titleLarge: TextStyle(
            color: Color.fromRGBO(20, 50, 50, 1),
            fontSize: 16.0,
          ),
          bodyMedium: TextStyle(
            fontSize: 14.0,
            fontFamily: 'RobotoCondensed',
          ),
        ),
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.cyan)
            .copyWith(secondary: Colors.amberAccent),
        //         displayLarge: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
        // titleLarge: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
        // bodyMedium: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
      ),
      // home: TabsScreen(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => TabsScreen(_favouritemeal),
        CatogariesScreenMeal.routname: (ctx) =>
            CatogariesScreenMeal(_avaliblemeal),
        MealDeatailScreen.routename: (atx) =>
            MealDeatailScreen(_toggleFavorite, _ismelFav),
        FiltersScreen.routnam: (vtx) => FiltersScreen(_filters, _setFiter),
      },
      onGenerateRoute: ((settings) {
        print(settings.arguments);
      }),
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (ctx) => CatogariesScreen(),
        );
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
