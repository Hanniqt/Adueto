import 'package:flutter/material.dart';

import 'loginpage.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 120),
          ),
          Image.asset('assets/welcome.png'),
          const Padding(
            padding: EdgeInsets.all(6),
          ),
          const Text(
            textAlign: TextAlign.center,
            maxLines: 2,
            "All your cravings \n in one place.",
            style:
                TextStyle(fontSize: 24, fontWeight: FontWeight.w800, height: 1),
          ),
          const SizedBox(
            height: 6,
          ),
          const Text(
            "Quick eats for busy people, \n Hundreds of flavors under one roof.",
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
            textAlign: TextAlign.center,
            maxLines: 2,
          ),
          const SizedBox(
            height: 105,
          ),
          SizedBox(
            width: 315,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                elevation: 0.0,
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0)),
              ),
              child: const Text(
                'Continue',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 315,
            height: 50,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                elevation: 0.0,
                backgroundColor: const Color(0xFFE8E8E8),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0)),
              ),
              child: const Text(
                'Sign up',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
