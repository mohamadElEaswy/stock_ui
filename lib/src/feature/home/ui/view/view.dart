import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stock_ui/constants/assets.dart';
import 'package:stock_ui/src/core/resources/theme/colors/colors.dart';
import 'package:stock_ui/src/feature/home/ui/view/pages/home.dart';
import 'package:stock_ui/src/feature/home/ui/view/pages/markets_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedPage = 0;
  _changeTab(int index) {
    setState(() {
      selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: selectedPage,
        onTap: (index) => _changeTab(index),
        selectedItemColor: AppColors.darkBlue,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                selectedPage == 0
                    ? Assets.assetsImagesHome
                    : Assets.assetsImagesHomeOutline,
                height: 25,
              ),
              label: "Home"),
          const BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.archivebox), label: "About"),
          const BottomNavigationBarItem(
              icon: Align(
                alignment: Alignment.bottomCenter,
                child: CircleAvatar(
                    backgroundColor: AppColors.lightGreen,
                    radius: 22,
                    child: Icon(
                      Icons.compare_arrows_sharp,
                      color: Colors.white,
                    )),
              ),
              label: "Product"),
          const BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.settings_solid), label: "Contact"),
          const BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined), label: "Settings"),
        ],
      ),
    );
  }
}

final List<Widget> pages = [
  const HomePageBody(),
  const Center(
    child: Text('page2'),
  ),
  const Center(
    child: Text('page3'),
  ),
  const MarketsPage(),
  const Center(
    child: Text('page5'),
  ),
];
