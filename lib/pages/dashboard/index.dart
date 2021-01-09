import 'package:flutter/material.dart';
import 'package:tecmetra_tablet/extensions/hex.dart';
import 'package:tecmetra_tablet/pages/home/index.dart';
import 'package:tecmetra_tablet/pages/reports/index.dart';
import 'package:tecmetra_tablet/pages/water/index.dart';

class DashboardPage extends StatefulWidget {
  DashboardPage({Key key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _selectedIndex = 0;
  bool _isExtended = false;
  List<Widget> pages = [
    HomePage(),
    WaterPage(),
    WaterPage(),
    WaterPage(),
    ReportsPage(),
    WaterPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      HexColor.fromHex('#7D51CD'),
                      HexColor.fromHex('#1AC9F4'),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: LayoutBuilder(
                  builder: (context, constraint) => SingleChildScrollView(
                    child: ConstrainedBox(
                      constraints:
                          BoxConstraints(minHeight: constraint.maxHeight),
                      child: IntrinsicHeight(
                        child: NavigationRail(
                          backgroundColor: Colors.transparent,
                          extended: _isExtended,
                          selectedIndex: _selectedIndex,
                          onDestinationSelected: (int index) {
                            if (index == 6) {
                              return Navigator.pushNamedAndRemoveUntil(
                                context,
                                '/login',
                                (route) => false,
                              );
                            }
                            setState(() {
                              _selectedIndex = index;
                            });
                          },
                          leading: _isExtended
                              ? Container(
                                  height: 240,
                                  child: Stack(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(
                                          top: 20,
                                          left: 10,
                                        ),
                                        alignment: Alignment.topLeft,
                                        child: IconButton(
                                          icon: Icon(
                                            Icons.menu,
                                            size: 32,
                                            color: HexColor.fromHex('#ffffff'),
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              _isExtended = !_isExtended;
                                            });
                                          },
                                        ),
                                      ),
                                      Positioned(
                                        top: 60,
                                        left: 10,
                                        right: 10,
                                        child: Container(
                                          margin: EdgeInsets.only(
                                            top: 20,
                                          ),
                                          height: 150,
                                          child: Column(
                                            children: [
                                              Container(
                                                width: 90,
                                                child: Image.asset(
                                                  'lib/assets/images/cond_logo.png',
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                  top: 20,
                                                ),
                                                child: Text(
                                                  "Edifício Kadima",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 22,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              : Container(
                                  padding: EdgeInsets.only(
                                    top: 20,
                                    left: 10,
                                  ),
                                  alignment: Alignment.topLeft,
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.menu,
                                      size: 32,
                                      color: HexColor.fromHex('#ffffff'),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        _isExtended = !_isExtended;
                                      });
                                    },
                                  ),
                                ),
                          destinations: [
                            NavigationRailDestination(
                              icon: Icon(
                                Icons.dashboard,
                                color: Colors.grey,
                              ),
                              selectedIcon: Icon(
                                Icons.dashboard,
                                color: Colors.white,
                              ),
                              label: Text(
                                'Dashboard',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                ),
                              ),
                            ),
                            NavigationRailDestination(
                              icon: Icon(
                                Icons.opacity,
                                color: Colors.grey,
                              ),
                              selectedIcon: Icon(
                                Icons.opacity,
                                color: Colors.white,
                              ),
                              label: Text(
                                'Agua',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                ),
                              ),
                            ),
                            NavigationRailDestination(
                              icon: Icon(
                                Icons.highlight_outlined,
                                color: Colors.grey,
                              ),
                              selectedIcon: Icon(
                                Icons.highlight_outlined,
                                color: Colors.white,
                              ),
                              label: Text(
                                'Energia',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                ),
                              ),
                            ),
                            NavigationRailDestination(
                              icon: Icon(
                                Icons.whatshot_outlined,
                                color: Colors.grey,
                              ),
                              selectedIcon: Icon(
                                Icons.whatshot,
                                color: Colors.white,
                              ),
                              label: Text(
                                'Gás',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                ),
                              ),
                            ),
                            NavigationRailDestination(
                              icon: Icon(
                                Icons.bar_chart,
                                color: Colors.grey,
                              ),
                              selectedIcon: Icon(
                                Icons.bar_chart,
                                color: Colors.white,
                              ),
                              label: Text(
                                'Relatorio',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                ),
                              ),
                            ),
                            NavigationRailDestination(
                              icon: Icon(
                                Icons.notifications_outlined,
                                color: Colors.grey,
                                size: 36,
                              ),
                              selectedIcon: Icon(
                                Icons.notifications_outlined,
                                color: Colors.white,
                                size: 36,
                              ),
                              label: Text(
                                'Alarmes',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                ),
                              ),
                            ),
                            NavigationRailDestination(
                              icon: Icon(
                                Icons.exit_to_app,
                                color: Colors.grey,
                              ),
                              selectedIcon: Icon(
                                Icons.exit_to_app,
                                color: Colors.white,
                              ),
                              label: Text(
                                'Sair',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              pages[_selectedIndex]
            ],
          ),
        ),
      ),
    );
  }
}
