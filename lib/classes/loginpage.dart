import 'package:adeuto/classes/homepage.dart';
import 'package:adeuto/classes/registerpage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

bool _hidePassword = true;

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: Stack(
        children: [
          Center(
            child: Container(
              height: 400,
              width: 350,
              margin: const EdgeInsets.symmetric(horizontal: 16),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(16),
                ),
                color: Colors.white,
              ),
              child: Center(
                child: Column(
                  children: [
                    const SizedBox(height: 40),
                    const Text(
                      'Updated menu list \njust for you.',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                          fontSize: 22,
                          height: 1),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 30),
                    const Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: TextField(
                        controller: null,
                        decoration: InputDecoration(
                          labelText: 'Username',
                          labelStyle: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                          hintText: 'enter your username',
                          hintStyle:
                              TextStyle(fontSize: 12, color: Colors.grey),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.all(
                              Radius.circular(16.0),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(16.0),
                            ),
                          ),
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: TextField(
                        controller: null,
                        obscureText: _hidePassword,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: const TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                          hintText: 'enter your password',
                          hintStyle:
                              const TextStyle(fontSize: 12, color: Colors.grey),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.all(
                              Radius.circular(16.0),
                            ),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(16.0),
                            ),
                          ),
                          prefixIcon: const Icon(
                            Icons.key,
                            color: Colors.black,
                          ),
                          suffixIcon: IconButton(
                            color: Colors.black,
                            icon: _hidePassword
                                ? const Icon(Icons.visibility_off)
                                : const Icon(Icons.visibility),
                            onPressed: () {
                              setState(() {
                                _hidePassword = !_hidePassword;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 35),
                    Container(
                      padding: const EdgeInsets.only(left: 20.0, right: 20),
                      width: 355,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0.0,
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.0)),
                        ),
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomePage(),
                            ),
                          );
                        },
                        child: const Text(
                          'Log in',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.5,
                              fontSize: 12),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          "Don't have an account? ",
                          style: TextStyle(color: Colors.black, fontSize: 12),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const RegisterPage(),
                              ),
                            );
                          },
                          child: const Text(
                            'Sign up',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
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
