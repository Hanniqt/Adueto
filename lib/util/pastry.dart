import 'package:adeuto/classes/homepage.dart';
import 'package:flutter/material.dart';

class Pastry extends StatefulWidget {
  const Pastry({super.key});

  @override
  State<Pastry> createState() => _PastryState();
}

class _PastryState extends State<Pastry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        toolbarHeight: (80),
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
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => const HomePage(),
              ),
            );
          },
        ),
      ),
      body: ScrollConfiguration(
        behavior: const ScrollBehavior().copyWith(overscroll: false),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: const Text(
                    'results for',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 24),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  child: const Text(
                    'Pastry',
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 26),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(20),
                  child: GridView.count(
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    childAspectRatio: 0.8,
                    shrinkWrap: true,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    children: [
                      Container(
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
                                'assets/crossini.jpg',
                                height: 105,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10, top: 10),
                              child: Text(
                                'Croissant',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 15),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                left: 10,
                              ),
                              child: Text(
                                'Julie Bakeshop',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 10),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10, top: 15),
                              child: Text(
                                'P 69.69',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
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
                                'assets/empanada.jpg',
                                height: 105,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10, top: 10),
                              child: Text(
                                'Empanada',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 15),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                left: 10,
                              ),
                              child: Text(
                                'School Canteen',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 10),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10, top: 15),
                              child: Text(
                                'P 34.00',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
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
                                'assets/donuts.jpg',
                                height: 105,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10, top: 10),
                              child: Text(
                                'Donut long',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 15),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                left: 10,
                              ),
                              child: Text(
                                'Dunk it Jonathan',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 10),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10, top: 15),
                              child: Text(
                                'P 320.00',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
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
                                'assets/loaf.jpg',
                                height: 105,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10, top: 10),
                              child: Text(
                                'Raisin Bread',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 15),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                left: 10,
                              ),
                              child: Text(
                                'SCC Town Center',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 10),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10, top: 15),
                              child: Text(
                                'P 70.00',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
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
                                'assets/mangopie.jpg',
                                height: 105,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10, top: 10),
                              child: Text(
                                'Peach Mango',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 15),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                left: 10,
                              ),
                              child: Text(
                                'Jollikod',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 10),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10, top: 15),
                              child: Text(
                                'P 45.00',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
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
                                'assets/crinkle.jpg',
                                height: 105,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10, top: 10),
                              child: Text(
                                'Crinkles',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 15),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                left: 10,
                              ),
                              child: Text(
                                'Doon sa labas',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 10),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10, top: 15),
                              child: Text(
                                'P 120.00',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
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
                                'assets/cookie.jpg',
                                height: 105,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10, top: 10),
                              child: Text(
                                'Cookies',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 15),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                left: 10,
                              ),
                              child: Text(
                                'Student Plaza',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 10),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10, top: 15),
                              child: Text(
                                'P 25.00',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
