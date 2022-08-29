import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 75, 14, 136),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                "Sign in ",
                style: TextStyle(color: Colors.white, fontSize: 35),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.linked_camera,
                    size: 50,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Icon(Icons.facebook, size: 50, color: Colors.white),
                  ),
                  Icon(Icons.gite_sharp, size: 50, color: Colors.white),
                ],
              ),
              const Text(
                "or use your email account ",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 30),
                      prefixIcon: Icon(Icons.mail, color: Colors.grey),
                      border: OutlineInputBorder(),
                      hintText: 'Email',
                      filled: true,
                      fillColor: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  SizedBox(
                    height: size.height * .03,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 30),
                      prefixIcon: Icon(Icons.password, color: Colors.grey),
                      border: OutlineInputBorder(),
                      hintText: 'Email',
                      filled: true,
                      fillColor: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  print('esqueci o password porra');
                },
                child: const Text(
                  "forgot your password? ",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              Container(
                height: size.height * 0.08,
                width: size.width * 0.8,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: const Center(
                    child: Text(
                  'SIGN IN',
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0), fontSize: 22),
                )),
              ),
              Column(
                children: const [
                  Text(
                    "Enter your personal details ",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    "and start journey with us",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
              const Text(
                "SIGN UP",
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
