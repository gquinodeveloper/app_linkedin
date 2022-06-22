class HistoryModel {
  HistoryModel({this.id = 0, this.name = "", this.profile = "", this.avatar});

  late int id;
  late String name;
  late String profile;
  String? avatar;
}

List<HistoryModel> histories = [
  HistoryModel(
    id: 0,
    name: "",
    profile: "",
    avatar: "",
  ),
  HistoryModel(
    id: 1,
    name: "Gustavo",
    profile: "FRONTEND DEVELOPER",
    avatar: "assets/images/arturo.jpg",
  ),
  HistoryModel(
    id: 2,
    name: "Omar",
    profile: "FLUTTER DEVELOPER",
    avatar: "assets/images/mao.jpg",
  ),
  HistoryModel(
    id: 3,
    name: "Anibal",
    profile: "FLUTTER DEVELOPER",
    avatar: "assets/images/gana.jpg",
  ),
  HistoryModel(
    id: 4,
    name: "Beth",
    profile: "FLUTTER DEVELOPER UI/UX",
    avatar: "assets/images/mau.jpg",
  ),
 /*  HistoryModel(
    id: 5,
    name: "Alonso",
    profile: "MARKETING UI/UX",
    avatar: "",
  ), */
];
