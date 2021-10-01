import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_test/src/screens/login_screen.dart';
import 'package:flutter_app_test/src/widgets/app_scaffold.dart';
import 'package:flutter_app_test/src/widgets/buttons.dart';
import 'package:flutter_app_test/src/widgets/textfields.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(
              height: 200,
            ),
            const Text(
              'Welcome Onboard',
              style: TextStyle(
                color: Color(
                  0xFF84B87C,
                ),
                fontSize: 18,
                letterSpacing: 5,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Vulputate vitae \nenim . Vulputate \nvitae enim ',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(
                  0xFF84B87C,
                ),
                letterSpacing: 5.0,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const EditTextFied(label: 'Name'),
            const SizedBox(
              height: 20,
            ),
            const EditTextFied(label: 'Email'),
            const SizedBox(
              height: 20,
            ),
            const EditTextFied(label: 'Username'),
            const SizedBox(
              height: 20,
            ),
            const EditTextFied(label: 'Password'),
            const SizedBox(
              height: 50,
            ),
            ButtonTypeA(
              onPressed: () {},
              child: const Text(
                'Register',
                style: TextStyle(
                  letterSpacing: 5,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text.rich(TextSpan(children: [
              const TextSpan(text: "Already have an account? "),
              TextSpan(
                  text: 'Sign in',
                  style: const TextStyle(
                    color: Color(0xFF3D8F30),
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.pushReplacement(
                        context,
                        CupertinoPageRoute(
                          builder: (BuildContext context) =>
                              const LoginScreen(),
                        ),
                      );
                    })
            ])),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    ));
  }
}
