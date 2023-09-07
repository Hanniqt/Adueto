import 'package:adeuto/classes/homepage.dart';
import 'package:flutter/material.dart';

class Beverages extends StatefulWidget {
  const Beverages({super.key});

  @override
  State<Beverages> createState() => _BeveragesState();
}

class _BeveragesState extends State<Beverages> {
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
                    'Beverages',
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
                                'assets/coke.jpg',
                                height: 105,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10, top: 10),
                              child: Text(
                                'Black Coke',
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
                                'P 55.00',
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
                                'assets/sprite.jpg',
                                height: 105,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10, top: 10),
                              child: Text(
                                'Sprite',
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
                                'P 76.00',
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
                                'assets/matcha.jpg',
                                height: 105,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10, top: 10),
                              child: Text(
                                'Matcha Latte',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 15),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                left: 10,
                              ),
                              child: Text(
                                'Starsbuck',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 10),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10, top: 15),
                              child: Text(
                                'P 240.00',
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
                                'assets/tea.jpg',
                                height: 105,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10, top: 10),
                              child: Text(
                                'Lipton Tea',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 15),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                left: 10,
                              ),
                              child: Text(
                                'Kapehan sa damuhan',
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
                                'assets/buko.jpg',
                                height: 105,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10, top: 10),
                              child: Text(
                                'Buko Juice',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 15),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                left: 10,
                              ),
                              child: Text(
                                'Sa bahay ng gf mo',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 10),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10, top: 15),
                              child: Text(
                                'P 69.00',
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
                                'assets/gin.jpg',
                                height: 105,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10, top: 10),
                              child: Text(
                                'Gin ya puro',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 15),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                left: 10,
                              ),
                              child: Text(
                                'Sigurado ka inn',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 10),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10, top: 15),
                              child: Text(
                                'P 300.00',
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
                                'assets/fruit.jpg',
                                height: 105,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10, top: 10),
                              child: Text(
                                'Fruit Shake',
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
                                'P 40.00',
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
