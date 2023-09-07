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
          color: Colors.black,
          child: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            children: <Widget>[
              const SizedBox(
                height: 35,
              ),
              buildHeader(
                urlImage: urlImage,
                name: name,
                identity: identity,
                onClicked: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                color: Colors.white,
              ),
              const SizedBox(
                height: 6,
              ),
              buildMenuItem(text: 'Homepage', icon: Icons.home_max_outlined),
              const SizedBox(
                height: 6,
              ),
              buildMenuItem(
                  text: 'Favorites', icon: Icons.favorite_border_outlined),
              const SizedBox(
                height: 6,
              ),
              buildMenuItem(text: 'My Cart', icon: Icons.shopping_bag_outlined),
              const SizedBox(
                height: 6,
              ),
              buildMenuItem(text: 'About Devs', icon: Icons.developer_mode),
              const SizedBox(
                height: 340,
              ),
              Container(
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0.0,
                    backgroundColor: const Color(0xFFE8E8E8),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const WelcomePage(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Switch Account',
                        style: TextStyle(
                            color: Colors.black,
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
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                          fontSize: 18),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      identity,
                      style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          fontSize: 14),
                    )
                  ],
                )
              ],
            ),
          ));

  Widget buildMenuItem({
    required String text,
    required IconData icon,
  }) {
    final color = Colors.white;

    return ListTile(
      leading: Icon(
        icon,
        color: color,
        size: 24,
      ),
      title: Text(
        text,
        style: TextStyle(color: color, fontSize: 14),
      ),
      onTap: () {},
    );
  }
}
