import 'package:club_sync/screens/screens.dart';
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
            Text('ClubSync',
                style: CSTextStyle.logoText
                    .copyWith(color: CSColors.primaryColor)),
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
            Row(
              children: [
                Expanded(
                  child: CSButton(
                    label: 'Log in',
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    ),
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
