import 'package:club_sync/style/style.dart';
import 'package:club_sync/widgets/widgets.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: CSColors.softWhite,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'ClubSync',
              style: TextStyle(
                fontFamily: 'BebasNeue',
                fontSize: 60,
                fontWeight: FontWeight.w400,
                color: CSColors.primaryColor,
              ),
            ),
            const SizedBox(height: 40),
            CSTextField(
              controller: usernameController,
              labelText: 'Username',
            ),
            const SizedBox(height: 20),
            CSTextField(
              controller: passwordController,
              labelText: 'Password',
              csTextFieldType: CSTextFieldType.password,
            ),
            const SizedBox(height: 40),
            const Row(
              children: [
                Expanded(
                  child: CSButton(
                    label: 'Log in',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
