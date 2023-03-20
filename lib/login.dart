import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late TextEditingController usernameController;
  late TextEditingController passwordController;
  @override
  void initState() {
    super.initState();
    usernameController = TextEditingController(text: "ertugazi91@gmail.com");
    passwordController = TextEditingController(text: "12345678");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Giriş Yap",
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
            _button(() async {
              FirebaseAuth auth = FirebaseAuth.instance;
              try {
                UserCredential credential =
                    await auth.signInWithEmailAndPassword(
                        email: usernameController.text,
                        password: passwordController.text);
                print(credential);
              } catch (e) {
                print(e.toString());
              }
            }, "Login"),
            _button(() {
              Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        const RegisterPage(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      const begin = Offset(0.0, 1.0);
                      const end = Offset.zero;
                      final tween = Tween(begin: begin, end: end);
                      final offsetAnimation = animation.drive(tween);

                      return SlideTransition(
                        position: offsetAnimation,
                        child: child,
                      );
                    },
                  ));
            }, "Register"),
          ],
        ),
      ),
    ));
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
}
