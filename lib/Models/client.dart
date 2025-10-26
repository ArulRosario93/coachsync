

class Client {

  final String name;
  final String uid;
  final Map<String, dynamic> currentTrainer;
  final String email;
  final String profilePic;
  final List<dynamic> trainer;
  final String workoutplanID;

  const Client({
    required this.name,
    required this.uid,
    required this.currentTrainer,
    required this.email,
    required this.profilePic,
    required this.trainer,
    required this.workoutplanID,
  });

  Map<String, dynamic> toJson() => {
    'name': name,
    'uid': uid,
    'role': 'client',
    'currentTrainer': currentTrainer,
    'email': email,
    'profilePic': profilePic,
    'trainer': trainer,
    'workoutplanID': workoutplanID,
  };
}