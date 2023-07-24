import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../providers/login_provider.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController

  TextEditingController emailTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();
 LoginProvider _loginProvider = LoginProvider();

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  void cetak() {
    print(emailTextController.text);
    print(passwordTextController.text);
  }

  void doLogin() async{
    var form = {
      'username': emailTextController.text.trim(),
      'password': passwordTextController.text.trim(),
    };

    var data = await _loginProvider.postLogin(form);
    print(data.data?.iduserAkses);
  }
}
