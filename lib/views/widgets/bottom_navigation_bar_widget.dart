import 'package:flutter/material.dart';
import 'package:twitter_clone/views/resources/project_icons.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTapNavigationBar;

  BottomNavigationBarWidget({
    required this.selectedIndex,
    required this.onTapNavigationBar,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: false,
      showSelectedLabels: false,
      currentIndex: selectedIndex,
      onTap: onTapNavigationBar,
      items: [
        BottomNavigationBarItem(
          label: "Home",
          icon: ProjectIcons.home,
          activeIcon: ProjectIcons.homeSolid,
        ),
        BottomNavigationBarItem(
          label: "Search",
          icon: ProjectIcons.search,
          activeIcon: ProjectIcons.searchSolid,
        ),
        BottomNavigationBarItem(
          label: "Notifications",
          icon: ProjectIcons.bell,
          activeIcon: ProjectIcons.bellSolid,
        ),
        BottomNavigationBarItem(
          label: "Profile",
          icon: ProjectIcons.profile,
          activeIcon: ProjectIcons.profileSolid,
        ),
      ],
    );
  }
}
