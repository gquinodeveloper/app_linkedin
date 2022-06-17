class PostModel {
  PostModel({
    this.id = 0,
    this.name = "",
    this.profile = "",
    this.avatar,
    this.description = "",
    this.photo,
    this.time = "",
  });

  late int id;
  late String name;
  late String profile;
  String? avatar;
  late String description;
  String? photo;
  late String time;
}

List<PostModel> posts = [
  PostModel(
    id: 1,
    name: "Gustavo",
    profile: "FRONTEND DEVELOPER",
    avatar: "",
    description: "Dribbble is the world’s leading community for creatives to share, grow, and get hired.",
    time: "Hace 6 min"
  ),

  PostModel(
    id: 2,
   name: "Omar",
    profile: "FLUTTER DEVELOPER",
    avatar: "",
    description: "Dribbble is the world’s leading community for creatives to share, grow, and get hired.",
    time: "Hace 6 min"
  ),

  PostModel(
    id: 3,
    name: "Diego",
    profile: "FLUTTER DEVELOPER UI/UX",
    avatar: "",
    description: "Dribbble is the world’s leading community for creatives to share, grow, and get hired.",
    time: "Hace 6 min"
  ),
];
