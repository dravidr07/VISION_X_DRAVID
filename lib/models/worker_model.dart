class WorkerModel {
  final String name;
  final String category;
  final String experience;
  final String location;
  final String skills;
  final double rating;
  final bool isAvailable;
  final bool isVerified;

  const WorkerModel({
    required this.name,
    required this.category,
    required this.experience,
    required this.location,
    required this.skills,
    required this.rating,
    required this.isAvailable,
    required this.isVerified,
  });
}
