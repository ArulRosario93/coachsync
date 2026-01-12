
class Todaydata {

  final String uid;
  final String name;
  final String date;
  final Map workoutData;
  final String workoutTime;

  const Todaydata({
    required this.uid,
    required this.name,
    required this.date,
    required this.workoutData,
    required this.workoutTime,
  });

  Map<String, dynamic> toJson() => {
    'uid': uid,
    'name': name,
    'date': date,
    'workoutData': workoutData,
    'workoutTime': workoutTime,
  };
}