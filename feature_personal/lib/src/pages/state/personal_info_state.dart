class PersonalInfoState {
  final String userName;
  final String age;
  final String gender;
  final String photo;
  final List<String> skills;
  final List<String> selectedSkills;

  final bool isLoading;
  final bool error;

  PersonalInfoState({
    this.userName = "",
    this.age = "",
    this.gender = "",
    this.photo = "",
    this.skills = const [],
    this.selectedSkills = const [],
    this.isLoading = false,
    this.error = false,
  });

  PersonalInfoState copyWith({
    String? userName,
    String? age,
    String? gender,
    String? photo,
    List<String>? skills,
    List<String>? selectedSkills,
    bool? isLoading,
    bool? error,
  }) => PersonalInfoState(
    userName: userName ?? this.userName,
    age: age ?? this.age,
    gender: gender ?? this.gender,
    photo: photo ?? this.photo,
    skills: skills ?? this.skills,
    selectedSkills: selectedSkills ?? this.selectedSkills,
    isLoading: isLoading ?? this.isLoading,
    error: error ?? this.error,
  );
}
