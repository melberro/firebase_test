import 'package:firebase_test/components/user_card.dart';
import 'package:firebase_test/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var userProvider = Provider.of<UsersProvider>(context);
    userProvider.getUserProvider();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Home"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Container(
              color: Colors.red,
              width: 100,
              height: 100,
            ),
            Expanded(
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: userProvider.userList
                    .map((e) => UserCard(
                          userList: e,
                        ))
                    .toList()
                    .reversed
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget _textfield(TextEditingController controller, String label, IconData icon,
        TextInputType type) =>
    Expanded(
      child: TextField(
        keyboardType: type,
        style: const TextStyle(fontSize: 14, height: 2.0, color: Colors.black),
        controller: controller,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(0.0),
          prefixIcon: Align(
            widthFactor: 1.0,
            heightFactor: 1.0,
            child: Icon(icon),
          ),
          border: const OutlineInputBorder(),
          hintText: label,
        ),
      ),
    );
