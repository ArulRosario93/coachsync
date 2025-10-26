
class Workoutplan {

  final String id;
  final String title;
  final int days;
  final String pictureUrl;
  final List<dynamic> goals;
  final List<dynamic> exercises;

  const Workoutplan({
    required this.id,
    required this.title,
    required this.days,
    required this.pictureUrl,
    required this.goals,
    required this.exercises,
  });

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'goals': goals,
    'days': days,
    'pictureUrl': pictureUrl,
    'exercises': exercises,
  };

}