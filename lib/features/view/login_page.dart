import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:scholarsync/features/widgets/rounded_small_button.dart';
import 'package:scholarsync/constants/icon_constants.dart';
import 'package:scholarsync/constants/image_constants.dart';
import 'package:scholarsync/features/widgets/auth_field.dart';
import 'package:scholarsync/theme/palette.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isChecked= false;
  bool _obscureText =true;

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
                color: PaletteLightMode.backgroundColor,
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
                  // Password Text field
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      controller: passwordController,
                      obscureText: _obscureText,
                      decoration: InputDecoration(
                        focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: PaletteLightMode.secondaryGreenColor)
                        ) ,
                        contentPadding:const EdgeInsets.all(22),
                        hintText: 'Password',
                        hintStyle: const TextStyle(fontSize:14,),
                        prefixIcon: Transform.scale(
                          scale: 0.6,
                          child: SvgPicture.asset(IconConstants.lockIcon),
                        ),
                        suffixIcon: Transform.scale(
                          scale: 1.3,
                          child: IconButton(
                            onPressed: (){
                              setState((){
                                _obscureText = !_obscureText;
                              });
                            }, 
                            icon: SvgPicture.asset(_obscureText ? IconConstants.eyeOpenIcon : IconConstants.eyeCloseIcon)
                            ),
                        ), 
                      ),
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
                        activeColor: PaletteLightMode.secondaryGreenColor,
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
                              color: PaletteLightMode.textColor,
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
                      onTap: () {
                        //button onTap Funtion
                      },
                      lable: 'Login',
                      backgroundColor: PaletteLightMode.secondaryGreenColor,
                      textColor: PaletteLightMode.secondaryGreenColor,
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