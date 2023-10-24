class User {
  final String name;
  final String city;
  final String country;
  final String profile;
  final String description;
  final List<String> photos;
  final int followers;
  final int following;
  final int post;
  bool isFollowing;

  User({
    required this.name,
    required this.city,
    required this.country,
    required this.profile,
    required this.description,
    required this.photos,
    required this.followers,
    required this.following,
    required this.post,
    this.isFollowing = false,
  });
}
