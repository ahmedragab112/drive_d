
import 'package:drive_d/screens/get_started.dart';
import 'package:drive_d/screens/login.dart';
import 'package:drive_d/widget/another_login_way.dart';
import 'package:drive_d/widget/custom_button.dart';
import 'package:drive_d/widget/custom_richtext.dart';
import 'package:drive_d/widget/custom_textfiled.dart';
import 'package:drive_d/widget/drop_downboutton.dart';
import 'package:flutter/material.dart';

class SingUp extends StatelessWidget {
  const SingUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 50,
              vertical: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  width: 80,
                  height: 80,
                  fit: BoxFit.fitHeight,
                ),
                const SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'assets/images/logoText.png',
                  width: 120,
                  height: 18,
                  fit: BoxFit.fitHeight,
                ),
                const SizedBox(
                  height: 50,
                ),
                const CustomTextFiled(hintText: 'Name'),
                const SizedBox(
                  height: 10,
                ),
                const CustomTextFiled(
                    hintText: 'Email',
                    keyboardType: TextInputType.emailAddress),
                const SizedBox(
                  height: 10,
                ),
                const CustomTextFiled(
                    hintText: 'Phone', keyboardType: TextInputType.phone),
                const SizedBox(
                  height: 10,
                ),
                const CustomDropDownButton(),
                const SizedBox(
                  height: 10,
                ),
                const CustomTextFiled(hintText: 'Password', obscureText: true),
                const SizedBox(
                  height: 12,
                ),
                 CustomButton(
                  text: 'Sign Up', onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const GetStarted()));
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Or',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xffA8A8A8),
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 27,
                ),
                const AnOtherLoginWay(
                  color: Color(0xff1877F2),
                  text: 'Sign in With Facebook',
                  imagePath: 'assets/images/facebook.png',
                ),
                const SizedBox(
                  height: 15,
                ),
                const AnOtherLoginWay(
                  textColor: Colors.black,
                  color: Colors.white,
                  text: 'Sign in With Google',
                  imagePath: 'assets/images/google.png',
                ),
                const SizedBox(
                  height: 15,
                ),
                const AnOtherLoginWay(
                  color: Colors.black,
                  text: 'Sign in With Apple',
                  imagePath: 'assets/images/apple.png',
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomRichText(
                    text1: 'Already Have An account ? ',
                    text2: ' Login',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Login(),
                          ));
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
