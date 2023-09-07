import 'package:adeuto/classes/homepage.dart';
import 'package:flutter/material.dart';

class Ricemeals extends StatefulWidget {
  const Ricemeals({super.key});

  @override
  State<Ricemeals> createState() => _RicemealsState();
}

class _RicemealsState extends State<Ricemeals> {
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
                    'Rice Meals',
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
                                'assets/donkatsu.jpg',
                                height: 105,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10, top: 10),
                              child: Text(
                                'Donkatsu',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 15),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                left: 10,
                              ),
                              child: Text(
                                'South Korea',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 10),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10, top: 15),
                              child: Text(
                                'P 150.000',
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
                                'assets/kahitano.jpg',
                                height: 105,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10, top: 10),
                              child: Text(
                                'Kahit ano',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 15),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                left: 10,
                              ),
                              child: Text(
                                'Kahit saan',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 10),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10, top: 15),
                              child: Text(
                                'P 100.00',
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
                                'assets/friedrice.jpg',
                                height: 105,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10, top: 10),
                              child: Text(
                                'Egg Fried Rice',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 15),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                left: 10,
                              ),
                              child: Text(
                                'Sa tabi ko',
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
                                'assets/sisig.jpg',
                                height: 105,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10, top: 10),
                              child: Text(
                                'Pork Sisig',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 15),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                left: 10,
                              ),
                              child: Text(
                                'Mang Bong',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 10),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10, top: 15),
                              child: Text(
                                'P 80.00',
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
                                'assets/pork.jpg',
                                height: 105,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10, top: 10),
                              child: Text(
                                'Pork na baboy',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 15),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                left: 10,
                              ),
                              child: Text(
                                'Kainan na canteen',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 10),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10, top: 15),
                              child: Text(
                                'P 99.00',
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
                                'assets/steak.jpg',
                                height: 105,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10, top: 10),
                              child: Text(
                                'Steak',
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
                                'P 3000.00',
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
                                'assets/bangus.jpg',
                                height: 105,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10, top: 10),
                              child: Text(
                                'Fried Bangus',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 15),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                left: 10,
                              ),
                              child: Text(
                                'AB Fernandez',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 10),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10, top: 15),
                              child: Text(
                                'P 110.00',
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
