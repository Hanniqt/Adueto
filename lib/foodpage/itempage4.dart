import 'package:adeuto/classes/homepage.dart';
import 'package:flutter/material.dart';

class ItemPaged extends StatelessWidget {
  const ItemPaged({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        maintainBottomViewPadding: true,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(15),
                height: 380,
                width: double.infinity,
                alignment: Alignment.topLeft,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                      image: AssetImage('assets/lasagna.jpg'),
                      fit: BoxFit.cover),
                ),
                child: InkWell(
                  onTap: (() {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  }),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 17),
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      size: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                height: 410,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 26, right: 26),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Beef Lasagna',
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 24),
                          ),
                          Icon(
                            Icons.bookmark_outline,
                            size: 28,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 26, right: 26),
                      child: Row(
                        children: const [
                          Icon(Icons.store_rounded),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            'Myrna Kusinera',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    Divider(
                      height: 1,
                      color: Colors.grey.withOpacity(0.5),
                    ),
                    const SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.only(left: 26, right: 26),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Product description',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                'Lorem ipsum dolor sit amet, consectetur \nadipiscing elit, sed do eiusmod \ntempor incididunt ut labore et dolore.',
                                maxLines: 4,
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    Divider(
                      height: 1,
                      color: Colors.grey.withOpacity(0.5),
                    ),
                    const SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.only(left: 26, right: 26),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Serving time',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                '35-40 minutes',
                                maxLines: 4,
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 26, right: 26),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Product Price',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                '235.00',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 24,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 170,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                elevation: 0.0,
                                backgroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(14)),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset(
                                    'assets/bag.png',
                                    width: 20,
                                    height: 20,
                                    color: Colors.white,
                                  ),
                                  const Text(
                                    'Add to cart',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
