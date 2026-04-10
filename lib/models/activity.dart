class Activity {
  final String name;
  final String duration;
  bool isCompleted;

  Activity({
    required this.name,
    required this.duration,
    this.isCompleted = false,
  });
}
