import 'package:flutter/material.dart';
import 'package:stylish/utils/images.dart';
import 'package:stylish/utils/styles.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  void _setIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  Widget _buildBody() {
    switch (_currentIndex) {
      case 0:
        return const OnDevScreen();
      case 1:
        return const OnDevScreen();
      case 2:
        return const ShopScreen();
      case 3:
        return const OnDevScreen();
      case 4:
        return const OnDevScreen();
      default:
        return const OnDevScreen();
    }
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: whiteColor,
      selectedItemColor: primaryColor,
      unselectedItemColor: blackColor,
      currentIndex: _currentIndex,
      onTap: _setIndex,
      items: _bottomNavigationBarItems(),
    );
  }

  List<BottomNavigationBarItem> _bottomNavigationBarItems() {
    return [
      const BottomNavigationBarItem(
        icon: ImageIcon(
          AssetImage(Images.iconHome),
        ),
        label: 'Home',
      ),
      const BottomNavigationBarItem(
        icon: ImageIcon(
          AssetImage(Images.iconHeart),
        ),
        label: 'WishList',
      ),
      const BottomNavigationBarItem(
        icon: ImageIcon(
          AssetImage(Images.iconSearch),
          size: 1, // Hide icon
        ),
        label: '',
      ),
      const BottomNavigationBarItem(
        icon: ImageIcon(
          AssetImage(Images.iconSearch),
        ),
        label: 'Search',
      ),
      const BottomNavigationBarItem(
        icon: ImageIcon(
          AssetImage(Images.iconSettings),
        ),
        label: 'Setting',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _buildFloatingActionButton(),
      bottomNavigationBar: buildBottomNavigationBar(),
      body: _buildBody(),
    );
  }

  Widget _buildFloatingActionButton() {
    Color fabColor = _currentIndex == 2 ? primaryColor : blackColor;

    return FloatingActionButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(1000), // Ubah sesuai kebutuhan
      ),
      onPressed: () {
        setState(() {
          _currentIndex = 2;
        });
      },
      backgroundColor: whiteColor,
      child: ImageIcon(
        const AssetImage(Images.iconShopping),
        size: 30,
        color: fabColor,
      ),
    );
  }
}

class OnDevScreen extends StatelessWidget {
  const OnDevScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "ON DEV",
        style: blackTextStyle,
      ),
    );
  }
}

class ShopScreen extends StatelessWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "ON SHOP",
        style: blackTextStyle,
      ),
    );
  }
}
