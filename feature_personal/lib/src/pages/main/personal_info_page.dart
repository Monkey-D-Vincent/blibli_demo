import 'package:feature_personal/src/pages/provider/personal_provider.dart';
import 'package:feature_personal/src/pages/state/personal_info_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PersonalInfoPage extends ConsumerStatefulWidget {
  const PersonalInfoPage({super.key});

  @override
  ConsumerState<PersonalInfoPage> createState() => _PersonalInfoPageState();
}

class _PersonalInfoPageState extends ConsumerState<PersonalInfoPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();

  late ValueNotifier<Gender> _genderNotify;

  final Set<String> _selectedSkills = {};

  @override
  void initState() {
    super.initState();
    _genderNotify = ValueNotifier<Gender>(Gender.male);
    Future.microtask(() {
      ref.read(userInfoProvider.notifier).getData();
    });
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<PersonalInfoState>(userInfoProvider, (previous, next) {
      _selectedSkills.addAll(next.selectedSkills);
      _nameController.text = next.userName;
      _ageController.text = next.age;
    });
    final state = ref.watch(userInfoProvider);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('个人信息'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                "assets/images/image_photo.png",
                package: "feature_personal",
                width: 100,
                height: 100,
              ),
            ),
            SizedBox(height: 50),
            Row(
              children: [
                Text("姓名", style: _titleStyle(0xff888888, 16.0)),
                SizedBox(width: 30),
                Expanded(
                  child: TextFormField(
                    textAlign: TextAlign.end,
                    style: _titleStyle(0xff333333, 16.0),
                    controller: _nameController,
                    decoration: _inputDecoration("请输入昵称"),
                    validator: (value) =>
                        (value == null || value.isEmpty) ? '账号不能为空' : null,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Text("年龄", style: _titleStyle(0xff888888, 16.0)),
                SizedBox(width: 30),
                Expanded(
                  child: TextFormField(
                    textAlign: TextAlign.end,
                    style: _titleStyle(0xff333333, 16.0),
                    controller: _ageController,
                    decoration: _inputDecoration("请输入昵称"),
                    validator: (value) =>
                        (value == null || value.isEmpty) ? '账号不能为空' : null,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text("年龄", style: _titleStyle(0xff888888, 16.0)),
                SizedBox(width: 30),
                Expanded(
                  child: ValueListenableBuilder<Gender>(
                    valueListenable: _genderNotify,
                    builder: (context, selectItem, _) {
                      return RadioGroup<Gender>(
                        groupValue: _genderNotify.value,
                        onChanged: (val) {
                          if (val != null) _genderNotify.value = val;
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () {
                                _genderNotify.value = Gender.male;
                              },
                              child: Row(
                                children: [
                                  Radio(
                                    value: Gender.male,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                  ),
                                  Text("男"),
                                ],
                              ),
                            ),
                            SizedBox(width: 10),
                            GestureDetector(
                              onTap: () {
                                _genderNotify.value = Gender.female;
                              },
                              child: Row(
                                children: [
                                  Radio(
                                    value: Gender.female,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                  ),
                                  Text("女"),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("年龄", style: _titleStyle(0xff888888, 16.0)),
                SizedBox(
                  height: 300,
                  child: ListView(
                    children: state.skills.map((item) {
                      final isCheck = _selectedSkills.contains(item);
                      return GestureDetector(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(item),
                            Checkbox(
                              value: isCheck,
                              onChanged: (val) {
                                if (val != null && val) {
                                  _selectedSkills.add(item);
                                } else {
                                  _selectedSkills.remove(item);
                                }
                                setState(() {

                                });
                              },
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    bottom: 30,
                    left: 0,
                    right: 0,
                    child: ElevatedButton(
                      onPressed: () {
                        ref.read(userInfoProvider.notifier).saveData(
                            _nameController.text,
                            _ageController.text,
                            "",
                            _genderNotify.value == Gender.male ? "男" : "女",
                            _selectedSkills
                        );
                      },
                      child: const Text("保存"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextStyle _titleStyle(int color, double fontSize) {
    return TextStyle(color: Color(color), fontSize: fontSize);
  }

  InputDecoration _inputDecoration(String hint, {Widget? suffixIcon}) {
    return InputDecoration(
      hintText: hint,
      filled: true,
      fillColor: Colors.white,
      suffixIcon: suffixIcon,
      border: InputBorder.none,
      isDense: true,
      contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _genderNotify.dispose();
  }
}

enum Gender { male, female }
