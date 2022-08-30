import 'package:flutter/material.dart';
import 'package:project/core/assets/assets.dart';
import 'package:project/presenter/ui/login/login_page.dart';
import 'package:project/presenter/ui/register_sucessul/register_sucessul.dart';
import 'package:project/widgets/shared/slide_animation.dart';

import '../login/widget/social_media_icon.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  final Color pageColor = const Color.fromARGB(255, 75, 14, 136);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: pageColor,
      body: Padding(
          padding: const EdgeInsets.all(40),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "Create account",
                  style: TextStyle(color: Colors.white, fontSize: 35),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 35, right: 35, top: 20, bottom: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      SocialMediaIcon(image: imgLogoLinkedin),
                      SocialMediaIcon(image: imgLogoEmail),
                      SocialMediaIcon(image: imgLogoGithub),
                    ],
                  ),
                ),
                const Text(
                  "or use your email for registration ",
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),
                const TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 25),
                    prefixIcon: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child:
                          Icon(Icons.person_outline_sharp, color: Colors.grey),
                    ),
                    border: OutlineInputBorder(),
                    hintText: 'Name',
                    filled: true,
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                const TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 25),
                    prefixIcon: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Icon(Icons.email, color: Colors.grey),
                    ),
                    border: OutlineInputBorder(),
                    hintText: 'Email',
                    filled: true,
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 25),
                    prefixIcon: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Icon(Icons.lock, color: Colors.grey),
                    ),
                    border: OutlineInputBorder(),
                    hintText: 'Password',
                    filled: true,
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                const TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 25),
                    prefixIcon: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Icon(Icons.lock, color: Colors.grey),
                    ),
                    border: OutlineInputBorder(),
                    hintText: 'Confirm Password',
                    filled: true,
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 25),
                      height: size.height * 0.05,
                      width: size.width * 0.8,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                                SlideTransitionAnimation(
                                    page: const RegisterSucessul()));
                          },
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                              ))),
                          child: Text(
                            'SIGN UP',
                            style: TextStyle(color: pageColor, fontSize: 17),
                          )),
                    ),
                    const Text(
                      "To keep connected with us please",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                    const Text(
                      "login with your personal info",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    print('fodase?');
                    Navigator.of(context).pushReplacement(
                        SlideTransitionAnimation(page: const LoginPage()));
                  },
                  child: const Text(
                    "SIGN IN  ",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
