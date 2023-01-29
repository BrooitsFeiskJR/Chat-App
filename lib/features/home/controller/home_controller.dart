import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../data/model.dart';

class HomeController extends GetxController {
  Rx<List<ChatInfo>> chats = Rx<List<ChatInfo>>([]);
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController lastNameTextEditingController = TextEditingController();
  TextEditingController messageTextEditingController = TextEditingController();
  TextEditingController urlextEditingController = TextEditingController();
  late ChatInfo chat;
  var itemCount = 0.obs;

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

  addChat(String name, String lastName, String message, String url) {
    Future.delayed(const Duration(milliseconds: 500), () {
      chat =
          ChatInfo(name: name, lastName: lastName, message: message, url: url);
      chats.value.add(chat);
      itemCount.value = chats.value.length;
      nameTextEditingController.clear();
      lastNameTextEditingController.clear();
      messageTextEditingController.clear();
      urlextEditingController.clear();
    });
  }

  removeChat(int index) {
    Future.delayed(const Duration(milliseconds: 500), () {
      chats.value.removeAt(index);
      itemCount.value = chats.value.length;
    });
  }
}
