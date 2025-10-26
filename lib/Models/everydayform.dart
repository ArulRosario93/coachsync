
class EverydayForm {

  final String id;
  final String name;
  final String description;
  final String pictureUrl;
  final List<dynamic> exercises;
  final String note;
  final List<dynamic> goals;

  const EverydayForm({
    required this.id,
    required this.name,
    required this.description,
    required this.pictureUrl,
    required this.exercises,
    required this.note,
    required this.goals,
  });

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'description': description,
    'pictureUrl': pictureUrl,
    'exercises': exercises,
    'note': note,
    'goals': goals,
  };
}