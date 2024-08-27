import 'package:chat_app/constants/color_constants.dart';
import 'package:chat_app/tab/components/chat_list.dart';
import 'package:chat_app/tab/components/story_list.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List = [const StoryList()];
  late PageController _pageController;
  int currentTab = 1;
  goToTab(int page) {
    setState(() {
      currentTab = page;
    });
    _pageController;
  }

  @override
  void iniState() {
    _pageController = PageController(initialPage: 1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var primaryColor;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.lightBackgroundColor,
        title: const Text('Chat'),
        actions: const [Icon(Icons.search)],
      ),
      body: const Column(
        children: [
          StoryList(),
          Expanded(child: ChatList()),
        ],
      ),
      backgroundColor: ColorConstants.lightBackgroundColor,
      bottomNavigationBar: BottomAppBar(
        color: ColorConstants.lightBackgroundColor,
        elevation: 0,
        child: Container(
          height: 60,
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _bottomAppBarItem(icon: Iconsax.home5, page: 0),
              _bottomAppBarItem(icon: Iconsax.message, page: 1),
              _bottomAppBarItem(icon: Iconsax.notification, page: 2),
              _bottomAppBarItem(icon: Iconsax.category, page: 3),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _bottomAppBarItem({icon, Page, required int page}) {
  var currentTab;
  return IconButton(
      onPressed: () {},
      icon: Icon(
        icon,
        color: currentTab == page
            ? ColorConstants.primaryColor
            : Colors.blueGrey.shade200,
        size: 22,
      ));
}
