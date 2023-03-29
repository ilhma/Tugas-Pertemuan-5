import 'package:flutter/material.dart';

import '../../models/user.dart';
import 'home_screen_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.user});
  final User user;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  late Size size;

  get child => null;
  tapButtonItem(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).padding.top,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: HeaderWidget(
              user: widget.user,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: SearchFieldWidget(),
          ),
          const SizedBox(
            height: 16,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: SectionTitle(
                    label: "Berita Terhangat",
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: HottestNewsCard(
                    size: size,
                    newsTitle: "Jiro and Naoko",
                    pictureUrl:
                        "https://2.bp.blogspot.com/-YH70_syT5bs/VAxbnfFiLLI/AAAAAAAACAs/t7x7HQsmoM4/s1600/143.1%2Bthe_wind_rises_2013.png",
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: SectionTitle(
                    label: "Berita Terbaru",
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: LatestNewsIndexCardSection(size: size))
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: tapButtonItem,
        items: [
          bottomMenuItem(
            "Home",
            Icons.home_rounded,
          ),
          bottomMenuItem(
            "News",
            Icons.newspaper_rounded,
          ),
          bottomMenuItem(
            "Menu",
            Icons.menu_rounded,
          ),
        ],
      ),
    );
  }

  BottomNavigationBarItem bottomMenuItem(
    String label,
    IconData iconData,
  ) {
    return BottomNavigationBarItem(
      label: label,
      icon: Icon(
        iconData,
      ),
    );
  }
}


