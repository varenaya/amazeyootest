import 'package:amazeyootest/Screens/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen>
    with SingleTickerProviderStateMixin {
  late final PersistentTabController _controller;
  @override
  void initState() {
    _controller = PersistentTabController(initialIndex: 0);
    super.initState();
  }

  // late final TabController _tabController;

  // @override
  // void initState() {
  //   super.initState();
  //   _tabController = TabController(length: 5, vsync: this);
  // }

  // @override
  // void dispose() {
  //   super.dispose();
  //   _tabController.dispose();
  // }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(
          Icons.home_outlined,
          size: 26,
        ),
        activeColorPrimary: CupertinoColors.white,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(
          CupertinoIcons.play_circle,
          size: 26.0,
        ),
        activeColorPrimary: CupertinoColors.white,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(
          CupertinoIcons.search,
          size: 26.0,
        ),
        activeColorPrimary: CupertinoColors.white,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(
          CupertinoIcons.heart,
          size: 26.0,
        ),
        activeColorPrimary: CupertinoColors.white,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(
          CupertinoIcons.person,
          size: 26.0,
        ),
        activeColorPrimary: CupertinoColors.white,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      padding: const NavBarPadding.symmetric(vertical: 5, horizontal: 10),
      margin: const EdgeInsets.all(8),
      bottomScreenMargin: 0,
      screens: const [
        HomePage(),
        Scaffold(
          body: Center(
            child: Text('Play'),
          ),
        ),
        Scaffold(
          body: Center(
            child: Text('Search'),
          ),
        ),
        Scaffold(
          body: Center(
            child: Text('Like'),
          ),
        ),
        Scaffold(
          body: Center(
            child: Text('Profile'),
          ),
        ),
      ],
      items: _navBarsItems(),
      backgroundColor: Colors.grey.shade800.withOpacity(0.6),
      handleAndroidBackButtonPress: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      decoration: const NavBarDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
        colorBehindNavBar: Colors.transparent,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style2, // Choose the nav bar style with this property.
    );
    // Scaffold(
    //   extendBody: true,
    //   body: TabBarView(
    //     children: const <Widget>[
    //       HomePage(),
    //       Scaffold(
    //         body: Center(
    //           child: Text('Play'),
    //         ),
    //       ),
    //       Scaffold(
    //         body: Center(
    //           child: Text('Search'),
    //         ),
    //       ),
    //       Scaffold(
    //         body: Center(
    //           child: Text('Like'),
    //         ),
    //       ),
    //       Scaffold(
    //         body: Center(
    //           child: Text('Profile'),
    //         ),
    //       ),
    //     ],
    //     physics: const NeverScrollableScrollPhysics(),
    //     controller: _tabController,
    //   ),
    //   bottomNavigationBar: Container(
    //     padding: const EdgeInsets.all(8.0),
    //     child: ClipRRect(
    //       borderRadius: const BorderRadius.only(
    //         topLeft: Radius.circular(10),
    //         topRight: Radius.circular(10),
    //         bottomLeft: Radius.circular(30),
    //         bottomRight: Radius.circular(30),
    //       ),
    //       child: Container(
    //         padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
    //         color: Colors.grey.shade800.withOpacity(0.9),
    //         child: TabBar(
    //           unselectedLabelColor: Colors.grey,
    //           labelColor: Colors.white,
    //           indicator: UnderlineTabIndicator(
    //             borderSide: BorderSide(
    //                 color: Colors.grey.shade800.withOpacity(0.9), width: 0.0),
    //             insets: const EdgeInsets.fromLTRB(50.0, 0.0, 50.0, 40.0),
    //           ),
    //           tabs: const <Widget>[
    //             Tab(
    //                 icon: Icon(
    //               Icons.home_outlined,
    //               size: 26,
    //             )),
    //             Tab(
    //               icon: Icon(
    //                 CupertinoIcons.play_circle,
    //                 size: 26.0,
    //               ),
    //             ),
    //             Tab(
    //               icon: Icon(
    //                 CupertinoIcons.search,
    //                 size: 26.0,
    //               ),
    //             ),
    //             Tab(
    //               icon: Icon(
    //                 CupertinoIcons.heart,
    //                 size: 26.0,
    //               ),
    //             ),
    //             Tab(
    //               icon: Icon(
    //                 CupertinoIcons.person,
    //                 size: 26.0,
    //               ),
    //             ),
    //           ],
    //           controller: _tabController,
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }
}
