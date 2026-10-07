import 'package:tp2gary/models/excersise.dart';

class Routine {
  final String name;

  final String description;

  final List<Excersise> excersises = [];

  Routine({required this.name, required this.description});
}
