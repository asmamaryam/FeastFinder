
import 'package:flutter/material.dart';
import './meal.dart';
import './meal_item.dart';

class FavoritesScreen extends StatelessWidget {
final List<Meal> favoutiteformtab;
FavoritesScreen(this.favoutiteformtab);

  @override
  Widget build(BuildContext context) {

    if(favoutiteformtab.isEmpty){
      return Center(
      child: Text('You have no favorites yet - start adding some',),
    );
    }else{
      return ListView.builder(
          itemBuilder: (ctx, index) {
            return MealItem(
              id: favoutiteformtab[index].id,
              name: favoutiteformtab[index].name,
              imageUrl: favoutiteformtab[index].imageUrl,
              duration: favoutiteformtab[index].duration,
              affordibility: favoutiteformtab[index].affordibility,
              complexity: favoutiteformtab[index].complexity,
            
            );
          },
          itemCount: favoutiteformtab.length,
        );
    }
    
  }
}