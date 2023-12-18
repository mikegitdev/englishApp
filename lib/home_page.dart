import 'package:app3/presentation/main_page/main_page.dart';
import 'package:app3/presentation/main_page/notifier/tab_provider.dart';
import 'package:app3/presentation/main_page/tabs_enum.dart';
import 'package:app3/presentation/profile_page/profile_page.dart';
import 'package:app3/presentation/sleep_page/sleep_page.dart';
import 'package:app3/presentation/sounds_page/sounds_page.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';

import 'package:app3/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

class HomePage extends ConsumerStatefulWidget {
  final BuildContext menuScreenContext;
  const HomePage({Key? key, required this.menuScreenContext}) : super(key: key);

  @override
  ConsumerState<HomePage> createState() => _HomeState();
}

class _HomeState extends ConsumerState<HomePage> {
  PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  bool _hideNavBar = false;
  //int _previousBarIndex = 0;

  //String myAsset = "assets/image/menu.png";

  @override
  void initState() {
    super.initState();

    _controller = PersistentTabController(initialIndex: 0);
    _hideNavBar = false;
  }

  List<Widget> _buildScreens() {
    return [
      MainPage(),
      SleepPage(),
      SoundsPage(),
      ProfilePage(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(
          Icons.feed,
          color: Colors.white,
          size: 22,
        ),
        inactiveIcon: const Icon(
          Icons.feed,
          color: Colors.grey,
          size: 22,
        ),
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: SizedBox(
          height: 20,
          width: 20,
          child: SvgPicture.asset(
            "assets/images/img_sounds.svg",
            color: Colors.white,
            fit: BoxFit.contain,
          ),
        ),
        inactiveIcon: SizedBox(
          height: 20,
          width: 20,
          child: SvgPicture.asset(
            "assets/images/img_sounds.svg",
            color: Colors.grey,
            fit: BoxFit.contain,
          ),
        ),
      ),
      PersistentBottomNavBarItem(
        icon: SizedBox(
          height: 24,
          width: 20,
          child: SvgPicture.asset(
            "assets/images/img_group_53.svg",
            color: Colors.white,
            fit: BoxFit.contain,
          ),
        ),
        iconSize: 24,
        inactiveIcon: SizedBox(
          height: 24,
          width: 20,
          child: SvgPicture.asset(
            "assets/images/img_group_53.svg",
            color: Colors.grey,
            fit: BoxFit.contain,
          ),
        ),
      ),
      PersistentBottomNavBarItem(
        icon: SizedBox(
          height: 20,
          width: 20,
          child: SvgPicture.asset(
            "assets/images/img_lock.svg",
            color: Colors.white,
            fit: BoxFit.contain,
          ),
        ),
        inactiveIcon: SizedBox(
          height: 20,
          width: 20,
          child: SvgPicture.asset(
            "assets/images/img_lock.svg",
            color: Colors.grey,
            fit: BoxFit.contain,
          ),
        ),
        activeColorPrimary: Colors.yellow,
        inactiveColorPrimary: Colors.grey,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final barIndex = ref.watch(tabProvider);
    return Scaffold(
      // appBar: AppBar(title: const Text('Navigation Bar Demo')),
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: theme.colorScheme.onPrimary,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        // stateManagement: true,
        onItemSelected: (index) {
          if (index == 0 && barIndex != index) {
            // Navigator.of(context).pushReplacementNamed(AppRoutes.homeScreen);
          }
          ref.read(tabProvider.notifier).change(index);
        },

        navBarHeight: MediaQuery.of(context).viewInsets.bottom > 0
            ? 0.0
            : kBottomNavigationBarHeight,
        hideNavigationBarWhenKeyboardShows: true,
        margin: const EdgeInsets.all(0.0),
        popActionScreens: PopActionScreensType.all,
        bottomScreenMargin: 0.0,

        selectedTabScreenContext: (context) {
          context = context;
        },

        hideNavigationBar: _hideNavBar,
        decoration: NavBarDecoration(
            colorBehindNavBar: Colors.indigo,
            borderRadius: BorderRadius.circular(0.0)),
        popAllScreensOnTapOfSelectedTab: true,
        itemAnimationProperties: const ItemAnimationProperties(
          duration: Duration(milliseconds: 400),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation(
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle: NavBarStyle.style12,

        // Choose the nav bar style with this property
      ),
    );
  }
}
