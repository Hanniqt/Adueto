import 'package:adeuto/classes/aboutdevs.dart';
import 'package:adeuto/classes/loginpage.dart';
import 'package:adeuto/classes/welcomepage.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final name = "Imelda Marcos";
    final identity = "Student";
    final urlImage = "https://cdn-icons-png.flaticon.com/128/6997/6997662.png";
    return SafeArea(
      child: Drawer(
        width: 300,
        child: Material(
          color: Colors.white,
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            children: <Widget>[
              const SizedBox(
                height: 28,
              ),
              buildHeader(
                urlImage: urlImage,
                name: name,
                identity: identity,
                onClicked: () {},
              ),
              const SizedBox(
                height: 13,
              ),
              const Divider(
                endIndent: 8,
                indent: 8,
                color: Colors.black,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFF5F5F5),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: buildMenuItem(
                      text: 'Homepage', icon: Icons.home_max_outlined)),
              const SizedBox(
                height: 2,
              ),
              buildMenuItem(
                  text: 'Favorites', icon: Icons.favorite_border_outlined),
              const SizedBox(
                height: 2,
              ),
              buildMenuItem(text: 'My Cart', icon: Icons.shopping_bag_outlined),
              const SizedBox(
                height: 2,
              ),
              buildMenuItem(text: 'About Devs', icon: Icons.developer_mode),
              const SizedBox(
                height: 360,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 6),
                height: 50,
                width: 11,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0.0,
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14)),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Switch Account',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildHeader({
    required String name,
    required String identity,
    required String urlImage,
    required VoidCallback onClicked,
  }) =>
      InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: onClicked,
          child: Container(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 6,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(urlImage),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                            fontSize: 18),
                      ),
                      Text(
                        identity,
                        style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            fontSize: 14),
                      )
                    ],
                  )
                ],
              ),
            ),
          ));

  Widget buildMenuItem({
    required String text,
    required IconData icon,
  }) {
    final color = Colors.black;

    return Padding(
      padding: const EdgeInsets.only(left: 6),
      child: ListTile(
        leading: Icon(
          icon,
          color: color,
          size: 26,
        ),
        title: Text(
          text,
          style: TextStyle(color: color, fontSize: 16),
        ),
        onTap: () {},
      ),
    );
  }
}
