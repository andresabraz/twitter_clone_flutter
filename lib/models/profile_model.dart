class ProfileModel {
  String name;
  String picture;
  String nickname;
  String bio;

  ProfileModel({
    required this.name,
    required this.picture,
    required this.nickname,
    required this.bio,
  });

  factory ProfileModel.empty() {
    return ProfileModel(name: "", picture: "", nickname: "", bio: "");
  }
}
