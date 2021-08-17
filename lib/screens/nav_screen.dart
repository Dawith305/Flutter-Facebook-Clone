import 'package:flutter/material.dart';
import 'package:flutter_facebook_responsive_ui/screens/screens.dart';
import 'package:flutter_facebook_responsive_ui/widgets/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({Key key}) : super(key: key);

  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> screens = [
    HomeScreen(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold()
  ];

  final List<IconData> icons = [
    Icons.home,
    Icons.ondemand_video,
    MdiIcons.accountCircleOutline,
    MdiIcons.accountGroupOutline,
    MdiIcons.bellOutline,
    Icons.menu
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: screens.length,
        child: Scaffold(
          body: IndexedStack(
            index: selectedIndex,
            children: screens,
          ),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: CustomTabBar(
                icons: icons,
                selectedIndex: selectedIndex,
                onTap: (index) => setState(() => selectedIndex = index)),
          ),
        ));
  }
}
