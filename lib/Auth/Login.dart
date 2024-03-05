import 'package:flutter/material.dart';
import 'package:player_app/Auth/Castom_text_fieald.dart';
import 'package:player_app/Auth/Regester.dart';
import 'package:player_app/Chat/Chat_View.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
  bool isNotVisable = true;
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 70,
                    backgroundImage: NetworkImage(
                        'https://cdn.pixabay.com/photo/2017/06/10/07/21/chat-2389223_640.png'),
                  ),
                  const Text(
                    'Login to your account',
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 25,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ConastTextFieald(
                    lable: 'Email',
                    prefixIcon: Icons.email,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please Enter Your Email';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ConastTextFieald(
                    obscureText: isNotVisable,
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isNotVisable = !isNotVisable;
                          });
                        },
                        icon: Icon(
                          (isNotVisable)
                              ? Icons.visibility_off
                              : Icons.visibility_sharp,
                          color: Colors.blueAccent,
                        )),
                    lable: 'Password',
                    prefixIcon: Icons.lock,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please Enter Your Password';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: ElevatedButton(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            Navigator.of(context)
                                .pushReplacement(MaterialPageRoute(
                              builder: (context) => const Chat_View(),
                            ));
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueAccent,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(13))),
                        child: const Text(
                          'Login',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        )),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'If you don\'t have account',
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 17,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const Register()));
                        },
                        child: const Text(
                          'Create one !',
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 19,
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
