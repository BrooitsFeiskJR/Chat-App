import 'package:get/get.dart';

import '../data/model.dart';

/*
  Adionar o mesmo item nessa lista []
*/

class HomeController extends GetxController {
  Rx<List<ChatInfo>> chats = Rx<List<ChatInfo>>([]);
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

  addChat(String name, String lastName, String message) {
    chat = ChatInfo(name: name, lastName: lastName, message: message);
    chats.value.add(chat);
    Future.delayed(const Duration(milliseconds: 500), () {
      itemCount.value = chats.value.length;
    });
  }
}
