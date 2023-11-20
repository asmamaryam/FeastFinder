enum Complexity { simple, challenging, hard }

enum Affordibility { affordable, pricy, luxurious }

class Meal {
  final id;
  final List<String> categaries;
  final String name;
  final Affordibility affordibility;
  final Complexity complexity;
  final String imageUrl;
  final int duration;
  final List<String> ingredient;
  final List<String> steps;
  final bool IsGlutenfree;
  final bool isvegan;
  final bool islactosefree;
  final bool isvegrtarian;

  const Meal({
    required this.id,
    required this.categaries,
    required this.name,
    required this.affordibility,
    required this.complexity,
    required this.imageUrl,
    required this.duration,
    required this.ingredient,
    required this.steps,
    required this.IsGlutenfree,
    required this.isvegan,
    required this.islactosefree,
    required this.isvegrtarian,
  });
}
