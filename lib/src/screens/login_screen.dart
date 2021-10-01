import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_test/src/screens/register_screen.dart';
import 'package:flutter_app_test/src/widgets/app_scaffold.dart';
import 'package:flutter_app_test/src/widgets/buttons.dart';
import 'package:flutter_app_test/src/widgets/textfields.dart';
import 'package:ms_undraw/ms_undraw.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
              'Welcome Back',
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
            UnDraw(
              illustration: UnDrawIllustration.login,
              color: const Color(0xFF00BF73),
              height: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            const EditTextFied(label: 'Username'),
            const SizedBox(
              height: 20,
            ),
            const EditTextFied(label: 'Password'),
            const SizedBox(
              height: 20,
            ),
            Text.rich(TextSpan(children: [
              TextSpan(
                  text: 'Forgot password',
                  style: const TextStyle(
                    color: Color(0xFF3D8F30),
                  ),
                  recognizer: TapGestureRecognizer()..onTap = () {})
            ])),
            const SizedBox(
              height: 20,
            ),
            ButtonTypeA(
              onPressed: () {},
              child: const Text(
                'Log in',
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
              const TextSpan(text: "Don't have an account? "),
              TextSpan(
                  text: 'Sign up',
                  style: const TextStyle(
                    color: Color(0xFF3D8F30),
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.pushReplacement(
                        context,
                        CupertinoPageRoute(
                          builder: (BuildContext context) =>
                              const RegisterScreen(),
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
