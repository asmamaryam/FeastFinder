import 'package:flutter/material.dart';
import './catogory.dart';
import './meal.dart';

const DUMMY_CATAGORIES = [
  Catogory(
    id: 'c1',
    title: 'Italian',
    color: Colors.purple,
    iconAssestPath: 'assets/icon/pizza.svg',
  ),
  Catogory(
    id: 'c2',
    title: 'Quick & Easy',
    color: Colors.red,
    iconAssestPath: 'assets/icon/fries.svg',
  ),
  Catogory(
    id: 'c3',
    title: 'Hamburgers',
    color: Colors.orange,
    iconAssestPath: 'assets/icon/hamburger.svg',
  ),
  Catogory(
    id: 'c4',
    title: 'German',
    color: Colors.amber,
    iconAssestPath: 'assets/icon/nachos.svg',
  ),
  Catogory(
    id: 'c5',
    title: 'Light & Lovely',
    color: Colors.blue,
    iconAssestPath: 'assets/icon/bala.svg',
  ),
  Catogory(
    id: 'c6',
    title: 'Exotic',
    color: Colors.green,
    iconAssestPath: 'assets/icon/steak.svg',
  ),
  Catogory(
    id: 'c7',
    title: 'Breakfast',
    color: Colors.lightBlue,
    iconAssestPath: 'assets/icon/cookies.svg',
  ),
  Catogory(
    id: 'c8',
    title: 'Asian',
    color: Colors.lightGreen,
    iconAssestPath: 'assets/icon/breakfast.svg',
  ),
  Catogory(
    id: 'c9',
    title: 'French',
    color: Colors.pink,
    iconAssestPath: 'assets/icon/french.svg',
  ),
  Catogory(
    id: 'c10',
    title: 'Summer',
    color: Colors.teal,
    iconAssestPath: 'assets/icon/summer.svg',
  ),
];

const DUMMY_MEALS = [
  Meal(
    id: 'm1',
    categaries: [
      'c1',
      'c2',
    ],
    name: 'Spaghetti with Tomato Sauce',
    affordibility: Affordibility.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
    duration: 20,
    ingredient: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    IsGlutenfree: false,
    isvegan: true,
    islactosefree: true,
    isvegrtarian: true,
  ),
  Meal(
    id: 'm2',
    categaries: [
      'c2',
    ],
    name: 'Toast Hawaii',
    affordibility: Affordibility.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
    duration: 10,
    ingredient: [
      '1 Slice White Bread',
      '1 Slice Ham',
      '1 Slice Pineapple',
      '1-2 Slices of Cheese',
      'Butter'
    ],
    steps: [
      'Butter one side of the white bread',
      'Layer ham, the pineapple and cheese on the white bread',
      'Bake the toast for round about 10 minutes in the oven at 200°C'
    ],
    IsGlutenfree: false,
    isvegan: false,
    islactosefree: false,
    isvegrtarian: false,
  ),
  Meal(
    id: 'm3',
    categaries: [
      'c2',
      'c3',
    ],
    name: 'Classic Hamburger',
    affordibility: Affordibility.pricy,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',
    duration: 45,
    ingredient: [
      '300g Cattle Hack',
      '1 Tomato',
      '1 Cucumber',
      '1 Onion',
      'Ketchup',
      '2 Burger Buns'
    ],
    steps: [
      'Form 2 patties',
      'Fry the patties for c. 4 minutes on each side',
      'Quickly fry the buns for c. 1 minute on each side',
      'Bruch buns with ketchup',
      'Serve burger with tomato, cucumber and onion'
    ],
    IsGlutenfree: false,
    isvegan: false,
    islactosefree: false,
    isvegrtarian: true,
  ),
  Meal(
    id: 'm4',
    categaries: [
      'c4',
    ],
    name: 'Wiener Schnitzel',
    affordibility: Affordibility.luxurious,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/03/31/19/29/schnitzel-3279045_1280.jpg',
    duration: 60,
    ingredient: [
      '8 Veal Cutlets',
      '4 Eggs',
      '200g Bread Crumbs',
      '100g Flour',
      '300ml Butter',
      '100g Vegetable Oil',
      'Salt',
      'Lemon Slices'
    ],
    steps: [
      'Tenderize the veal to about 2–4mm, and salt on both sides.',
      'On a flat plate, stir the eggs briefly with a fork.',
      'Lightly coat the cutlets in flour then dip into the egg, and finally, coat in breadcrumbs.',
      'Heat the butter and oil in a large pan (allow the fat to get very hot) and fry the schnitzels until golden brown on both sides.',
      'Make sure to toss the pan regularly so that the schnitzels are surrounded by oil and the crumbing becomes ‘fluffy’.',
      'Remove, and drain on kitchen paper. Fry the parsley in the remaining oil and drain.',
      'Place the schnitzels on awarmed plate and serve garnishedwith parsley and slices of lemon.'
    ],
    IsGlutenfree: false,
    isvegan: false,
    islactosefree: false,
    isvegrtarian: false,
  ),
  Meal(
    id: 'm5',
    categaries: [
      'c2'
          'c5',
      'c10',
    ],
    name: 'Salad with Smoked Salmon',
    affordibility: Affordibility.luxurious,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2016/10/25/13/29/smoked-salmon-salad-1768890_1280.jpg',
    duration: 15,
    ingredient: [
      'Arugula',
      'Lamb\'s Lettuce',
      'Parsley',
      'Fennel',
      '200g Smoked Salmon',
      'Mustard',
      'Balsamic Vinegar',
      'Olive Oil',
      'Salt and Pepper'
    ],
    steps: [
      'Wash and cut salad and herbs',
      'Dice the salmon',
      'Process mustard, vinegar and olive oil into a dessing',
      'Prepare the salad',
      'Add salmon cubes and dressing'
    ],
    IsGlutenfree: true,
    isvegan: false,
    islactosefree: true,
    isvegrtarian: true,
  ),
  Meal(
    id: 'm6',
    categaries: [
      'c6',
      'c10',
    ],
    name: 'Delicious Orange Mousse',
    affordibility: Affordibility.affordable,
    complexity: Complexity.hard,
    imageUrl:
        'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
    duration: 240,
    ingredient: [
      '4 Sheets of Gelatine',
      '150ml Orange Juice',
      '80g Sugar',
      '300g Yoghurt',
      '200g Cream',
      'Orange Peel',
    ],
    steps: [
      'Dissolve gelatine in pot',
      'Add orange juice and sugar',
      'Take pot off the stove',
      'Add 2 tablespoons of yoghurt',
      'Stir gelatin under remaining yoghurt',
      'Cool everything down in the refrigerator',
      'Whip the cream and lift it under die orange mass',
      'Cool down again for at least 4 hours',
      'Serve with orange peel',
    ],
    IsGlutenfree: true,
    isvegan: false,
    islactosefree: true,
    isvegrtarian: false,
  ),
  Meal(
    id: 'm7',
    categaries: [
      'c7',
    ],
    name: 'Pancakes',
    affordibility: Affordibility.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg',
    duration: 20,
    ingredient: [
      '1 1/2 Cups all-purpose Flour',
      '3 1/2 Teaspoons Baking Powder',
      '1 Teaspoon Salt',
      '1 Tablespoon White Sugar',
      '1 1/4 cups Milk',
      '1 Egg',
      '3 Tablespoons Butter, melted',
    ],
    steps: [
      'In a large bowl, sift together the flour, baking powder, salt and sugar.',
      'Make a well in the center and pour in the milk, egg and melted butter; mix until smooth.',
      'Heat a lightly oiled griddle or frying pan over medium high heat.',
      'Pour or scoop the batter onto the griddle, using approximately 1/4 cup for each pancake. Brown on both sides and serve hot.'
    ],
    IsGlutenfree: true,
    isvegan: false,
    islactosefree: true,
    isvegrtarian: false,
  ),
  Meal(
    id: 'm8',
    categaries: [
      'c8',
    ],
    name: 'Creamy Indian Chicken Curry',
    affordibility: Affordibility.pricy,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg',
    duration: 35,
    ingredient: [
      '4 Chicken Breasts',
      '1 Onion',
      '2 Cloves of Garlic',
      '1 Piece of Ginger',
      '4 Tablespoons Almonds',
      '1 Teaspoon Cayenne Pepper',
      '500ml Coconut Milk',
    ],
    steps: [
      'Slice and fry the chicken breast',
      'Process onion, garlic and ginger into paste and sauté everything',
      'Add spices and stir fry',
      'Add chicken breast + 250ml of water and cook everything for 10 minutes',
      'Add coconut milk',
      'Serve with rice'
    ],
    IsGlutenfree: true,
    isvegan: false,
    islactosefree: false,
    isvegrtarian: true,
  ),
  Meal(
    id: 'm9',
    categaries: [
      'c9',
    ],
    name: 'Chocolate Souffle',
    affordibility: Affordibility.affordable,
    complexity: Complexity.hard,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/08/07/21/07/souffle-412785_1280.jpg',
    duration: 45,
    ingredient: [
      '1 Teaspoon melted Butter',
      '2 Tablespoons white Sugar',
      '2 Ounces 70% dark Chocolate, broken into pieces',
      '1 Tablespoon Butter',
      '1 Tablespoon all-purpose Flour',
      '4 1/3 tablespoons cold Milk',
      '1 Pinch Salt',
      '1 Pinch Cayenne Pepper',
      '1 Large Egg Yolk',
      '2 Large Egg Whites',
      '1 Pinch Cream of Tartar',
      '1 Tablespoon white Sugar',
    ],
    steps: [
      'Preheat oven to 190°C. Line a rimmed baking sheet with parchment paper.',
      'Brush bottom and sides of 2 ramekins lightly with 1 teaspoon melted butter; cover bottom and sides right up to the rim.',
      'Add 1 tablespoon white sugar to ramekins. Rotate ramekins until sugar coats all surfaces.',
      'Place chocolate pieces in a metal mixing bowl.',
      'Place bowl over a pan of about 3 cups hot water over low heat.',
      'Melt 1 tablespoon butter in a skillet over medium heat. Sprinkle in flour. Whisk until flour is incorporated into butter and mixture thickens.',
      'Whisk in cold milk until mixture becomes smooth and thickens. Transfer mixture to bowl with melted chocolate.',
      'Add salt and cayenne pepper. Mix together thoroughly. Add egg yolk and mix to combine.',
      'Leave bowl above the hot (not simmering) water to keep chocolate warm while you whip the egg whites.',
      'Place 2 egg whites in a mixing bowl; add cream of tartar. Whisk until mixture begins to thicken and a drizzle from the whisk stays on the surface about 1 second before disappearing into the mix.',
      'Add 1/3 of sugar and whisk in. Whisk in a bit more sugar about 15 seconds.',
      'whisk in the rest of the sugar. Continue whisking until mixture is about as thick as shaving cream and holds soft peaks, 3 to 5 minutes.',
      'Transfer a little less than half of egg whites to chocolate.',
      'Mix until egg whites are thoroughly incorporated into the chocolate.',
      'Add the rest of the egg whites; gently fold into the chocolate with a spatula, lifting from the bottom and folding over.',
      'Stop mixing after the egg white disappears. Divide mixture between 2 prepared ramekins. Place ramekins on prepared baking sheet.',
      'Bake in preheated oven until scuffles are puffed and have risen above the top of the rims, 12 to 15 minutes.',
    ],
    IsGlutenfree: true,
    isvegan: false,
    islactosefree: true,
    isvegrtarian: false,
  ),
  Meal(
    id: 'm10',
    categaries: [
      'c2',
      'c5',
      'c10',
    ],
    name: 'Asparagus Salad with Cherry Tomatoes',
    affordibility: Affordibility.luxurious,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/04/09/18/26/asparagus-3304997_1280.jpg',
    duration: 30,
    ingredient: [
      'White and Green Asparagus',
      '30g Pine Nuts',
      '300g Cherry Tomatoes',
      'Salad',
      'Salt, Pepper and Olive Oil'
    ],
    steps: [
      'Wash, peel and cut the asparagus',
      'Cook in salted water',
      'Salt and pepper the asparagus',
      'Roast the pine nuts',
      'Halve the tomatoes',
      'Mix with asparagus, salad and dressing',
      'Serve with Baguette'
    ],
    IsGlutenfree: true,
    isvegan: true,
    islactosefree: true,
    isvegrtarian: true,
  ),
];
