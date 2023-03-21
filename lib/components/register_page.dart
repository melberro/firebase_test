import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  late TextEditingController usernameController;
  late TextEditingController passwordController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    usernameController = TextEditingController(text: "cerezhesabi57@gmail.com");
    passwordController = TextEditingController(text: "12345678");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Register",
                style: TextStyle(
                    color: Colors.orange,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              _textfield(usernameController, "Username"),
              SizedBox(
                height: 20,
              ),
              _textfield(passwordController, "Password"),
              SizedBox(
                height: 20,
              ),
              _button(() async {
                FirebaseAuth auth = FirebaseAuth.instance;
                try {
                  UserCredential credential =
                      await auth.createUserWithEmailAndPassword(
                          email: usernameController.text,
                          password: passwordController.text);
                  print(credential);
                } catch (e) {
                  print(e.toString());
                }

                ;
              }, "Register"),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _textfield(TextEditingController controller, String label) {
  return TextField(
    controller: controller,
    decoration: InputDecoration(
      labelText: label,
      border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(color: Colors.orange)),
    ),
  );
}

Widget _button(Function() onPressed, String text) {
  return ElevatedButton(onPressed: onPressed, child: Text(text));
}
