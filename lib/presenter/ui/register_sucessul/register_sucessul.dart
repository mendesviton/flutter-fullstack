import 'package:flutter/material.dart';
import 'package:project/presenter/ui/login/login_page.dart';

import '../../../widgets/shared/slide_animation.dart';

class RegisterSucessul extends StatelessWidget {
  const RegisterSucessul({Key? key}) : super(key: key);
  final Color pageColor = const Color.fromARGB(255, 75, 14, 136);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: pageColor,
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: const [
                  Text(
                    "Your registration ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "was successful ",
                    style: TextStyle(color: Colors.white, fontSize: 35),
                  ),
                ],
              ),
              Icon(
                color: Colors.purple,
                Icons.check,
                size: 200,
              ),
              Column(
                children: const [
                  Text(
                    "Your registration was successful ",
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                  Text(
                    "and we have sent you",
                    style: TextStyle(color: Colors.grey, fontSize: 17),
                  ),
                  Text(
                    "a confirmation receipt to your",
                    style: TextStyle(color: Colors.grey, fontSize: 17),
                  ),
                  Text(
                    "email at: ",
                    style: TextStyle(color: Colors.grey, fontSize: 17),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      "< user email > ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 153, 153, 153),
                          fontSize: 17),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.05,
                width: size.width * 0.8,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                          SlideTransitionAnimation(page: LoginPage()));
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ))),
                    child: Text(
                      'SIGN IN',
                      style: TextStyle(color: pageColor, fontSize: 22),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
