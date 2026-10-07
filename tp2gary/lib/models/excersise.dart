class Excersise {
  final int id;
  final String name;
  final int duration;
  final int bpm;
  final String note;
  final int userId;

  Excersise({
    required this.id,
    required this.name,
    required this.duration,
    required this.bpm,
    this.note = "",
    required this.userId,
  });
}
