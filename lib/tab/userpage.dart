// import 'package:chat_app/constants/color_constants.dart';
// import 'package:chat_app/tab/chat_tab.dart';
// import 'package:chat_app/tab/components/explorer_tab.dart';
// import 'package:chat_app/tab/components/notification_tab.dart';
// import 'package:chat_app/tab/components/user_tab.dart';
// import 'package:flutter/material.dart';
// import 'package:iconsax/iconsax.dart';

// class Userpage extends StatefulWidget {
//   const Userpage({super.key});

//   @override
//   State<Userpage> createState() => _HomePageState();
// }

// class _HomePageState extends State<Userpage> {
//   final tabs = <Widget>[
//     const ExploreTab(),
//     const ChatTab(),
//     const NotificationTab(),
//     const UserTab(),
//   ];

//   late PageController _pageController;
//   int currentTab = 1;

//   goToTab(int page) {
//     setState(() {
//       currentTab = page;
//     });

//     _pageController.jumpToPage(page);
//   }

//   @override
//   void initState() {
//     _pageController = PageController(initialPage: 1);

//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: PageView(
//         controller: _pageController,
//         children: tabs,
//       ),
//       bottomNavigationBar: BottomAppBar(
//         color: ColorConstants.lightBackgroundColor,
//         elevation: 0,
//         notchMargin: 10,
//         child: Container(
//           height: 60,
//           padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               _bottomAppBarItem(icon: Iconsax.home5, page: 0),
//               _bottomAppBarItem(icon: Iconsax.message5, page: 1),
//               _bottomAppBarItem(icon: Iconsax.notification5, page: 2),
//               _bottomAppBarItem(icon: Iconsax.category5, page: 3),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _bottomAppBarItem({icon, page}) {
//     return IconButton(
//       splashRadius: 20,
//       onPressed: () => goToTab(page),
//       icon: Icon(
//         icon,
//         color: currentTab == page
//             ? ColorConstants.primaryColor
//             : Colors.blueGrey.shade200,
//         size: 22,
//       ),
//     );
//   }
// }
