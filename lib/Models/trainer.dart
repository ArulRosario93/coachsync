
class Trainer {

  final String uid;
  final String name;
  final String email;
  final String profilePic;
  final List<dynamic> clients;
  final String specialization;

  const Trainer({
    required this.uid,
    required this.name,
    required this.email,
    required this.profilePic,
    required this.clients,
    required this.specialization,
  });

  Map<String, dynamic> toJson() => {
    'uid': uid,
    'name': name,
    'role': 'trainer',
    'email': email,
    'profilePic': profilePic,
    'clients': clients,
    'specialization': specialization,
  };

}