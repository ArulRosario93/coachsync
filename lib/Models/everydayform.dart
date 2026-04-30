
class EverydayForm {

  final String id;
  final DateTime date;
  final String name;
  final String description;
  final String pictureUrl;
  final List<dynamic> exercises;
  final String note;
  final List<dynamic> goals;
  final String planName;

  const EverydayForm({
    required this.id,
    required this.date,
    required this.name,
    required this.description,
    required this.pictureUrl,
    required this.exercises,
    required this.note,
    required this.goals,
    required this.planName,
  });

  Map<String, dynamic> toJson() => {
    'id': id,
    'date': date,
    'name': name,
    'description': description,
    'pictureUrl': pictureUrl,
    'exercises': exercises,
    'note': note,
    'goals': goals,
    'planName': planName,
  };
}