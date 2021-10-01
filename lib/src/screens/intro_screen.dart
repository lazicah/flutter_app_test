import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_test/src/screens/register_screen.dart';
import 'package:flutter_app_test/src/widgets/app_scaffold.dart';
import 'package:flutter_app_test/src/widgets/buttons.dart';
import 'package:ms_undraw/ms_undraw.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(
                height: 200,
              ),
              UnDraw(
                illustration: UnDrawIllustration.location_tracking,
                color: const Color(0xFF00BF73),
                height: 200,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Discover New Places',
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
                'Vulputate vitae \nenim . Vulputate \nvitae',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(
                    0xFF84B87C,
                  ),
                  letterSpacing: 5.0,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              ButtonTypeA(
                onPressed: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(builder: (context) {
                      return const RegisterScreen();
                    }),
                  );
                },
                child: const Text(
                  'GET STARTED',
                  style: TextStyle(
                    letterSpacing: 5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
