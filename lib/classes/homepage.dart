// ignore_for_file: sized_box_for_whitespace

import 'package:adeuto/classes/cart.dart';
import 'package:adeuto/classes/registerpage.dart';
import 'package:adeuto/foodpage/itempage.dart';
import 'package:adeuto/foodpage/itempage3.dart';
import 'package:adeuto/foodpage/itempage4.dart';
import 'package:adeuto/foodpage/itempage5.dart';
import 'package:adeuto/foodpage/itermpage2.dart';

import 'package:adeuto/util/beverages.dart';

import 'package:adeuto/util/desserts.dart';
import 'package:adeuto/util/pasta.dart';
import 'package:adeuto/util/pastry.dart';
import 'package:adeuto/util/ricemeals.dart';
import 'package:flutter/material.dart';

import 'navbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFF5F5F5),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Builder(builder: (context) {
                    return IconButton(
                      iconSize: 38,
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      icon: Image.asset('assets/menu.png'),
                      onPressed: () => Scaffold.of(context).openDrawer(),
                    );
                  }),
                  IconButton(
                    iconSize: 32,
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    icon: Image.asset('assets/user.png'),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Cart(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: const Text(
                      'Find the',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 24),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: const Text(
                      'Food you love',
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 26),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 320,
                  height: 45,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: const Color(0xFFE8E8E8),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'best snacks in the campus',
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 14),
                        contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        alignLabelWithHint: false,
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(
                left: 26,
              ),
              child: Row(
                children: const [
                  Text(
                    'Categories',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
//categorieeeeeeeeees
            Container(
              padding: const EdgeInsets.only(left: 20),
              height: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(70),
              ),
              child: ListView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                controller: null,
                children: [
//beverages category
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Beverages(),
                        ),
                      );
                    },
                    child: Container(
                      width: 100,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Beverages',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Ricemeals(),
                        ),
                      );
                    },
                    child: Container(
                      width: 100,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Rice meals',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Desserts(),
                        ),
                      );
                    },
                    child: Container(
                      width: 100,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Desserts',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4),
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
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Pastry(),
                          ),
                        );
                      },
                      child: Container(
                        width: 100,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Pastry',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Pasta(),
                        ),
                      );
                    },
                    child: Container(
                      width: 100,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Pasta',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(
                left: 26,
              ),
              child: Row(
                children: const [
                  Text(
                    'Recommended for you',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
//recommended for youuuuuu
            Container(
              padding: const EdgeInsets.only(left: 20),
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(70),
              ),
              child: ListView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                controller: null,
//food cards
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ItemPage(),
                        ),
                      );
                    },
                    child: Container(
                      width: 170,
                      height: 20,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(14.0),
                              topRight: Radius.circular(14.0),
                            ),
                            child: Image.asset(
                              'assets/carbonara.jpg',
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10, top: 5),
                            child: Text(
                              'Carbonara',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 15),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(
                              left: 10,
                            ),
                            child: Text(
                              'Kusina ni Karding',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 10),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10, top: 15),
                            child: Text(
                              'P 35.00',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.symmetric(horizontal: 6)),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ItemPageb(),
                        ),
                      );
                    },
                    child: Container(
                      width: 170,
                      height: 20,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(14.0),
                              topRight: Radius.circular(14.0),
                            ),
                            child: Image.asset(
                              'assets/spaghetti.jpg',
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10, top: 5),
                            child: Text(
                              'Chupaghetti',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 15),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(
                              left: 10,
                            ),
                            child: Text(
                              'Shangri-La',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 10),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10, top: 15),
                            child: Text(
                              'P 903.00',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.symmetric(horizontal: 6)),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ItemPagec(),
                        ),
                      );
                    },
                    child: Container(
                      width: 170,
                      height: 20,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(14.0),
                              topRight: Radius.circular(14.0),
                            ),
                            child: Image.asset(
                              'assets/pizza.jpg',
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10, top: 5),
                            child: Text(
                              'Italian Pizza',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 15),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(
                              left: 10,
                            ),
                            child: Text(
                              'Neggershop',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 10),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10, top: 15),
                            child: Text(
                              'P 535.00',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.symmetric(horizontal: 6)),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ItemPaged(),
                        ),
                      );
                    },
                    child: Container(
                      width: 170,
                      height: 20,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(14.0),
                              topRight: Radius.circular(14.0),
                            ),
                            child: Image.asset(
                              'assets/lasagna.jpg',
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10, top: 5),
                            child: Text(
                              'Lasagna',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 15),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(
                              left: 10,
                            ),
                            child: Text(
                              'Myrna Kusinera',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 10),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10, top: 15),
                            child: Text(
                              'P 235.00',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.symmetric(horizontal: 6)),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ItemPagee(),
                        ),
                      );
                    },
                    child: Container(
                      width: 170,
                      height: 20,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(14.0),
                              topRight: Radius.circular(14.0),
                            ),
                            child: Image.asset(
                              'assets/egg.jpg',
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10, top: 5),
                            child: Text(
                              'Itlog ko',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 15),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(
                              left: 10,
                            ),
                            child: Text(
                              'Kwarto Mo',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 10),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10, top: 15),
                            child: Text(
                              'P 0.00',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 26,
              ),
              child: Row(
                children: const [
                  Text(
                    'Nearby Restaurants',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
//nearby restooooo
            Container(
              padding: const EdgeInsets.only(left: 20),
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(70),
              ),
              child: ListView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                controller: null,
                children: [
                  Container(
                    width: 225,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(14.0),
                            topRight: Radius.circular(14.0),
                          ),
                          child: Image.asset(
                            'assets/shangri.jpg',
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 10, top: 5),
                          child: Text(
                            'Shangri-La',
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 15),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                            left: 10,
                          ),
                          child: Text(
                            'Basta maganda dito.',
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 10,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 20),
                              child: Image.asset(
                                'assets/pin.png',
                                height: 12,
                                width: 12,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 4, top: 20),
                              child: Text(
                                'Outside Campus',
                                style: TextStyle(fontSize: 10),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const Padding(padding: EdgeInsets.symmetric(horizontal: 6)),
                  Container(
                    width: 225,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(14.0),
                            topRight: Radius.circular(14.0),
                          ),
                          child: Image.asset(
                            'assets/canteen.jpg',
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 10, top: 5),
                          child: Text(
                            'School Canteen',
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 15),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                            left: 10,
                          ),
                          child: Text(
                            'Makunat raw lumpia here.',
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 10,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 20),
                              child: Image.asset(
                                'assets/pin.png',
                                height: 12,
                                width: 12,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 4, top: 20),
                              child: Text(
                                'Student Plaza',
                                style: TextStyle(fontSize: 10),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const Padding(padding: EdgeInsets.symmetric(horizontal: 6)),
                  Container(
                    width: 225,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(14.0),
                            topRight: Radius.circular(14.0),
                          ),
                          child: Image.asset(
                            'assets/resto.jpg',
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 10, top: 5),
                          child: Text(
                            'Mang Bong',
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 15),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                            left: 10,
                          ),
                          child: Text(
                            'Solid sisig nila dito, as in.',
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 10,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 20),
                              child: Image.asset(
                                'assets/pin.png',
                                height: 12,
                                width: 12,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 4, top: 20),
                              child: Text(
                                'In front of TMC',
                                style: TextStyle(fontSize: 10),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const Padding(padding: EdgeInsets.symmetric(horizontal: 6)),
                  Container(
                    width: 225,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(14.0),
                            topRight: Radius.circular(14.0),
                          ),
                          child: Image.asset(
                            'assets/street.jpg',
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 10, top: 5),
                          child: Text(
                            'Siomai Rice sa tabe',
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 15),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                            left: 10,
                          ),
                          child: Text(
                            '0/10, may hotdog yung sinangag.',
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 10,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 20),
                              child: Image.asset(
                                'assets/pin.png',
                                height: 12,
                                width: 12,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 4, top: 20),
                              child: Text(
                                'Palipat lipat sila e',
                                style: TextStyle(fontSize: 10),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
