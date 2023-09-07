import 'package:adeuto/classes/loginpage.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

bool hidepass1 = true;
bool hidepass2 = true;

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: (100),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          padding: const EdgeInsets.only(top: 0, left: 0),
          iconSize: 25,
          color: Colors.black,
          icon: const Icon(Icons.arrow_back_ios_new),
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (BuildContext context) => const LoginPage(),
              ),
            );
          },
        ),
      ),
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Center(
            child: Container(
              height: 505,
              width: 350,
              margin: const EdgeInsets.symmetric(horizontal: 16),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(18),
                ),
                color: Colors.white,
              ),
              child: Center(
                child: Column(
                  children: [
                    const SizedBox(height: 40),
                    const Text(
                      'Create your Adeuto \naccount.',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        fontSize: 22,
                        height: 1,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 30),
                    // unang first textfield
                    const Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: SizedBox(
                        height: 50,
                        child: TextField(
                          controller: null,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.black,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12.0),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12.0),
                              ),
                            ),
                            labelText: 'Username',
                            labelStyle: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                            hintText: 'enter your username',
                            hintStyle:
                                TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                    // textfield din e2
                    const SizedBox(height: 15),
                    const Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: SizedBox(
                        height: 50,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          controller: null,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.assignment_ind_rounded,
                              color: Colors.black,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12.0),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12.0),
                              ),
                            ),
                            hintText: 'enter your student id number',
                            labelText: 'Student ID',
                            labelStyle: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                            hintStyle:
                                TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                    //eto yon ed unang pass textfield
                    const SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: SizedBox(
                        height: 50,
                        child: TextField(
                          controller: null,
                          obscureText: hidepass1,
                          decoration: InputDecoration(
                            labelText: 'Enroll a password',
                            labelStyle: const TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12.0),
                              ),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12.0),
                              ),
                            ),
                            hintText: 'enter a strong password',
                            hintStyle: const TextStyle(
                                fontSize: 12, color: Colors.grey),
                            prefixIcon: const Icon(
                              Icons.key,
                              color: Colors.black,
                            ),
                            iconColor: Colors.black,
                            suffixIcon: IconButton(
                              color: Colors.black,
                              icon: hidepass1
                                  ? const Icon(Icons.visibility_off)
                                  : const Icon(Icons.visibility),
                              onPressed: () {
                                setState(() {
                                  hidepass1 = !hidepass1;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: SizedBox(
                        height: 50,
                        child: TextField(
                          controller: null,
                          obscureText: hidepass2,
                          decoration: InputDecoration(
                            labelText: 'Re-enter password',
                            labelStyle: const TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12.0),
                              ),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12.0),
                              ),
                            ),
                            hintText: 'confirm your password',
                            hintStyle: const TextStyle(
                                fontSize: 12, color: Colors.grey),
                            prefixIcon: const Icon(
                              Icons.key,
                              color: Colors.black,
                            ),
                            iconColor: Colors.black,
                            suffixIcon: IconButton(
                              color: Colors.black,
                              icon: hidepass2
                                  ? const Icon(Icons.visibility_off)
                                  : const Icon(Icons.visibility),
                              onPressed: () {
                                setState(() {
                                  hidepass2 = !hidepass2;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 35),
                    Container(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      width: 355,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0.0,
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.0)),
                        ),
                        onPressed: () async {},
                        child: const Text(
                          'Register account',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.5,
                              fontSize: 12),
                        ),
                      ),
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
