import 'package:flutter/material.dart';
import 'package:scholars_mobileapp/common/rounded_small_button.dart';
import 'package:scholars_mobileapp/constants/icon_constants.dart';
import 'package:scholars_mobileapp/constants/image_constants.dart';
import 'package:scholars_mobileapp/features/widgets/auth_field.dart';
import 'package:scholars_mobileapp/theme/palette.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final notificationController = TextEditingController();
  bool isChecked= false;

  @override
  void dispose(){
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    
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
              width: 350,
              height: 400,
              decoration: const BoxDecoration(
                color: Palette.lightBackgroundColor,
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: AuthField(
                      controller: emailController,
                      hintText: 'Email',
                      fontSize: 14,
                      frontIcon: IconConstants.mailIcon,
                    ),
                  ),
                  const SizedBox(height: 15),
                  // Text field
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: AuthField(
                      controller: passwordController,
                      hideText: true,
                      hintText: 'Password',
                      fontSize: 14,
                      frontIcon: IconConstants.lockIcon,
                      backIcon: IconConstants.eyeOpenIcon, 
                    ),
                  ),
                  const SizedBox(height: 15),
                  // Text span
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(value: isChecked,
                        activeColor: Palette.lightGreenColor,
                        tristate: false, 
                        onChanged:(bool? value){
                          setState(() {
                            isChecked = value ?? false;
                          });
                        } ,
                        shape: const CircleBorder(),
                        ),
                        RichText(
                          text: const TextSpan(
                            text: "Remember me",
                            style: TextStyle(
                              fontSize: 12,
                              color: Palette.textColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  //button
                  Align(
                    alignment: Alignment.center,
                    child: RoundedSmallbutton(
                      onTap: () {},
                      lable: 'Login',
                      backgroundColor: Palette.lightGreenColor,
                      textColor: Palette.lightBackgroundColor,
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