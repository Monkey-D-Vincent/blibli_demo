import 'dart:async';

import 'package:common/common.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _accountController;
  late TextEditingController _passwordController;
  late ValueNotifier<bool> _isPasswordVisible;
  late ValueNotifier<int> _secondsRemaining;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _accountController = TextEditingController();
    _passwordController = TextEditingController();
    _isPasswordVisible = ValueNotifier<bool>(false);
    _secondsRemaining = ValueNotifier<int>(0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 100, left: 30, right: 30),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Image.asset('assets/image/app_icon.png', package: null),
                  const SizedBox(height: 50),
                  TextFormField(
                    controller: _accountController,
                    decoration: _inputDecoration("请输入账号", Icons.person_outline),
                    validator: (value) =>
                        (value == null || value.isEmpty) ? '账号不能为空' : null,
                  ),
                  const SizedBox(height: 15),
                  ValueListenableBuilder<int>(
                    valueListenable: _secondsRemaining,
                    builder: (context, seconds, child) {
                      bool isCountingDown = seconds > 0;

                      return TextFormField(
                        decoration: _inputDecoration(
                          "验证码",
                          Icons.verified_user_outlined,
                          suffixIcon: TextButton(
                            onPressed: isCountingDown
                                ? null
                                : () {
                                    _startTimer();
                                    print("发送验证码...");
                                  },
                            child: Text(
                              isCountingDown ? "${seconds}s后重试" : "获取验证码",
                              style: TextStyle(
                                color: isCountingDown
                                    ? Colors.grey
                                    : Colors.blue,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 15),
                  ValueListenableBuilder<bool>(
                    valueListenable: _isPasswordVisible,
                    builder: (context, isVisible, child) {
                      return TextFormField(
                        controller: _passwordController,
                        obscureText: isVisible,
                        decoration: _inputDecoration(
                          "请输入密码",
                          Icons.lock_outline,
                          suffixIcon: IconButton(
                            icon: Icon(
                              isVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            onPressed: () =>
                                _isPasswordVisible.value = !isVisible,
                          ),
                        ),
                        validator: (value) =>
                            (value != null && value.length < 6)
                            ? '密码至少6位'
                            : null,
                      );
                    },
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // 触发验证
                      if (_formKey.currentState!.validate()) {
                        print("提交成功: ${_accountController.text}");
                        print("提交成功: ${_passwordController.text}");
                        RouterService.go(context, RoutePath.home);
                      }
                    },
                    child: const Text("登录"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // 统一提取样式配置
  InputDecoration _inputDecoration(
    String hint,
    IconData icon, {
    Widget? suffixIcon,
  }) {
    return InputDecoration(
      hintText: hint,
      hintStyle: TextStyle(color: const Color(0xff999999)),
      prefixIcon: Icon(icon, color: Colors.grey),
      filled: true,
      fillColor: Colors.white,
      suffixIcon: suffixIcon,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      border: _borderStyle(),
      enabledBorder: _borderStyle(),
      focusedBorder: _borderStyle(width: 1.5),
      errorBorder: _borderStyle(color: Colors.red),
    );
  }

  OutlineInputBorder _borderStyle({
    Color color = const Color(0xffeeeeee),
    double width = 1,
  }) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: color, width: width),
    );
  }

  void _startTimer() {
    _secondsRemaining.value = 60;
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_secondsRemaining.value > 0) {
        _secondsRemaining.value--;
      } else {
        _timer?.cancel();
      }
    });
  }

  @override
  void dispose() {
    _accountController.dispose();
    _passwordController.dispose();
    _isPasswordVisible.dispose();
    _secondsRemaining.dispose();
    _timer?.cancel();
    super.dispose();
  }
}
