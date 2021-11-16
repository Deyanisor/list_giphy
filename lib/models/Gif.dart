class Gif {
  final int userId;
  final int id;
  final String title;

  Gif({
    required this.userId,
    required this.id,
    required this.title,
  });

  factory Gif.fromJson(Map<String, dynamic> json) {
    return Gif(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }
}
