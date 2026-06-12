import 'package:common/common.dart';
import 'package:feature_personal/src/pages/state/personal_info_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PersonalProvider extends Notifier<PersonalInfoState> {
  @override
  PersonalInfoState build() => PersonalInfoState();

  Future<void> getData() async {
    state = state.copyWith(isLoading: true);
    // 延迟一秒钟
    await Future.delayed(const Duration(seconds: 1));

    // await SharedUtil.init();
    state = state.copyWith(
      userName: SharedUtil.getUserName().isNotEmpty ? SharedUtil.getUserName() : 'Knox',
      age: '28',
      photo: 'https://picsum.photos/200',
      gender: '男',
      skills: ['Android', 'Flutter', 'uni-app', "Java", "Harmony OS", "Web", "Kotlin", "Compose"],
      selectedSkills: ["Flutter", "Kotlin"],
      isLoading: false,
      error: false,
    );
  }

  Future<void> saveData(String userName, String age, String photo, String gender, Set<String> skills) async {
    state = state.copyWith(
      userName: userName,
      age: age,
      photo: photo,
      gender: gender,
      selectedSkills: skills.toList()
    );
    await SharedUtil.setUserName(userName);
  }
}

final userInfoProvider = NotifierProvider<PersonalProvider, PersonalInfoState>(
  PersonalProvider.new,
);
