class IdeeList {
  final int id;
  final String title;
  final String description;
  final String genre;
  final String tuning;
  final String bpm;
  final String difficulty;

  IdeeList({
    required this.id,
    this.title = '',
    required this.description,
    this.genre = 'Guitare',
    required this.tuning,
    this.bpm = '80',
    this.difficulty = 'Intermédiaire',
  });
}
