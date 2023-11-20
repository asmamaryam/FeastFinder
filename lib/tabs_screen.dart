import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import './catogaries_screen.dart';
import './favorites_screen.dart';
import './main_drawer.dart';
import './meal.dart';

class TabsScreen extends StatefulWidget {
  final List<Meal> favoutitmeal;
  TabsScreen(this.favoutitmeal);
  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  late List<Map<String, Object>> _pages;
  int _selectpageindex = 0;

  @override
  void initState() {
    // TODO: implement initState
    _pages = [
      {'page': CatogariesScreen(), 'title': 'Categories'},
      {'page': FavoritesScreen(widget.favoutitmeal), 'title': 'Favorites'},
    ];
    super.initState();
  }

  void _selectpage(int index) {
    setState(() {
      _selectpageindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectpageindex]['title'].toString()),
      ),
      drawer: MainDrawer(),
      body: _pages[_selectpageindex]['page'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
          onTap: _selectpage,
          backgroundColor: Theme.of(context).primaryColor,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.amber,
          currentIndex: _selectpageindex,
          type: BottomNavigationBarType.shifting,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Colors.cyan,
              icon: Icon(Icons.category),
              label: 'Categories',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.cyan,
              icon: Icon(Icons.star),
              label: 'Favorites',
            ),
          ]),
    );
  }
}
