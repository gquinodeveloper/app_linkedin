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
    avatar: "",
  ),
  HistoryModel(
    id: 2,
    name: "Omar",
    profile: "FLUTTER DEVELOPER",
    avatar: "",
  ),
  HistoryModel(
    id: 3,
    name: "Anibal",
    profile: "FLUTTER DEVELOPER",
    avatar: "",
  ),
  HistoryModel(
    id: 4,
    name: "Diego",
    profile: "FLUTTER DEVELOPER UI/UX",
    avatar: "",
  ),
  HistoryModel(
    id: 5,
    name: "Alonso",
    profile: "MARKETING UI/UX",
    avatar: "",
  ),
];
