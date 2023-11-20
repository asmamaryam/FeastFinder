// ignore_for_file: deprecated_member_use, non_constant_identifier_names

import 'package:flutter/material.dart';
import './dummy_data.dart';

class MealDeatailScreen extends StatelessWidget {
  static const routename = '/meal-detail';

  final Function togglefronMain;
  final Function ismealfavFormMain;
  MealDeatailScreen(this.togglefronMain, this.ismealfavFormMain);

  Widget BuildSectionName(BuildContext context, String text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text,
        style: Theme.of(context).textTheme.displayLarge,
      ),
    );
  }

  Widget builContainer(Widget child) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.brown,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      height: 150,
      width: 350,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final meaArg = ModalRoute.of(context)!.settings.arguments as String;
    final selectmeeal =
        DUMMY_MEALS.firstWhere((element) => element.id == meaArg);

    return Scaffold(
      appBar: AppBar(
        title: Text('${selectmeeal.name}'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                selectmeeal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            BuildSectionName(context, 'Ingredients'),
            builContainer(
              ListView.builder(
                itemBuilder: (context, index) => Card(
                  color: Theme.of(context).colorScheme.secondary,
                  child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 10,
                      ),
                      child: Text(selectmeeal.ingredient[index])),
                ),
                itemCount: selectmeeal.ingredient.length,
              ),
            ),
            BuildSectionName(context, 'Steps'),
            builContainer(
              ListView.builder(
                itemBuilder: (context, index) => Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        child: Text('# ${(index + 1)}'),
                      ),
                      title: Text(
                        selectmeeal.steps[index],
                      ),
                    ),
                    Divider(),
                  ],
                ),
                itemCount: selectmeeal.steps.length,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          ismealfavFormMain(meaArg) ? Icons.star : Icons.star_border,
        ),
        onPressed: () => togglefronMain(meaArg),
      ),
    );
  }
}
