import 'package:flutter/material.dart';
import 'package:scholars_mobileapp/common/rounded_small_button.dart';
import 'package:scholars_mobileapp/constants/image_constants.dart';
import 'package:scholars_mobileapp/features/widgets/auth_field.dart';
import 'package:scholars_mobileapp/theme/pallete.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  @override
  void dispose(){
    super.dispose();
    emailcontroller.dispose();
    passwordcontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Stack(
    children: [
      // Background image
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImageConstants.loginBackgroundImage),
            fit: BoxFit.cover,
          ),
        ),
      ),
      // White box
      Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: 400,
              height: 400,
              decoration: const BoxDecoration(
                color: Pallete.lightbackgroundColor,
              ),
              child: Column(
                children: [
                  // Logo
                  Image.asset(
                    ImageConstants.logo,
                    width: 120,
                    height: 120,
                    alignment: Alignment.center,
                  ),
                  const SizedBox(height: 0),
                  // Text field
                  AuthField(
                    controller: emailcontroller,
                    hintText: 'Email',
                    fontsize: 14,
                  ),
                  const SizedBox(height: 25),
                  // Text field
                  AuthField(
                    controller: passwordcontroller,
                    hintText: 'Password',
                    fontsize: 14,
                  ),
                  const SizedBox(height: 25),
                  // Text span
                  RichText(
                    text: const TextSpan(
                      text: "Remember me",
                      style: TextStyle(
                        fontSize: 12,
                        color: Pallete.textColor,
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  // Button
                  Align(
                    alignment: Alignment.center,
                    child: RoundedSmallbutton(
                      onTap: () {},
                      lable: 'Login',
                      backgroundColor: Pallete.ligtgreenColor,
                      textColor: Pallete.textColor,
                      fontsize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ],
  ),
);
}
}