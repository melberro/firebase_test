import 'package:firebase_test/services/services.dart';
import 'package:flutter/cupertino.dart';

import '../models/user_model.dart';

class UsersProvider with ChangeNotifier {
  List<UserModel> userList = [];

  Services service = Services();
  

  final TextEditingController userName = TextEditingController();
  final TextEditingController userEmail = TextEditingController();
  final TextEditingController userAge = TextEditingController();
  final TextEditingController userImage = TextEditingController();
  final TextEditingController userCity = TextEditingController();

  void getUserProvider() async {
    userImage.text = "https://picsum.photos/200/300";
    userList = await service.getUsers();
    notifyListeners();
  }
    void deleteUserProvider(String id) async {
    await service.deleteUser(id);
    getUserProvider();
    notifyListeners();
  }
}
