import 'package:flutter/material.dart';
import 'package:scholars_mobileapp/common/rounded_small_button.dart';
import 'package:scholars_mobileapp/features/widgets/auth_field.dart';
import 'package:scholars_mobileapp/theme/pallete.dart';
import '../../constants/image_constants.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

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
          //background image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(ImageConstants.loginBackgroundImage),
                fit: BoxFit.cover
                ),
            ),
          ),

          //login box
          Center(
            child: SingleChildScrollView(
            child: Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
            children: [
              //textfield1
              AuthField(controller: emailController,hintText: 'Email',), const SizedBox(height: 25,),
              //textfield2
              AuthField(controller: passwordController, hintText: 'Password',), const SizedBox(height: 40,),
              //button
              Align(
                alignment: Alignment.center,
                child: RoundedSmallbutton(onTap: () {}, lable: 'Login', backgroundColor: Pallete.ligtgreenColor,textColor: Pallete.lightbackgroundColor,)
              ),
              const SizedBox(height: 40,),
               //textspan
              RichText(text: const TextSpan(text: "Remember me", style: TextStyle(fontSize: 16),
                children: [
                  TextSpan(
                    text: " Signup", 
                    style: TextStyle(color: Pallete.textColor,fontSize: 16,),   
                  ),
                ],
                ),
              )
            ],
          ),
          ),
        ),
          ),
        ],
      ),
    );
  }
}