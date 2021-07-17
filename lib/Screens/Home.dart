import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stinky_fish/Screens/CustomerProfile.dart';
import 'package:stinky_fish/Screens/dashboard.dart';
import 'package:stinky_fish/icons/CustomIcons.dart';
import 'package:stinky_fish/widgets/drawerCard.dart';
import 'package:stinky_fish/widgets/homeStatCard.dart';
import 'package:stinky_fish/widgets/progressIndicator.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GlobalKey<ScaffoldState> _homeScaffold = GlobalKey<ScaffoldState>();
  int bodyindex = 0;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        key: _homeScaffold,
        drawer: Drawer(
          child: Container(
            height: height,
            color: Colors.grey[100],
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                          'https://greenlemon.me/wp-content/uploads/2019/07/Ozzy-Osbourne-686x1024.jpg',
                        ),
                        radius: 30,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ozzy Osbourne',
                            style: GoogleFonts.darkerGrotesque(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'Admin',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.darkerGrotesque(
                                color: Colors.grey,
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Divider(
                  thickness: 2,
                  color: Colors.white,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      bodyindex = 0;
                    });
                    Navigator.pop(context);
                  },
                  child: DrawerCard(
                    icon: CustomIcons.dashboard,
                    title: "Dashboard",
                  ),
                ),
                DrawerCard(
                  icon: CustomIcons.earning,
                  title: "Earning",
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      bodyindex = 1;
                    });
                    Navigator.pop(context);
                  },
                  child: DrawerCard(
                    icon: CustomIcons.customer,
                    title: "Customer",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      // bodyindex = 1;
                    });
                    Navigator.pop(context);
                  },
                  child: DrawerCard(
                    icon: Icons.production_quantity_limits,
                    title: "Products",
                  ),
                ),
                DrawerCard(
                  icon: CustomIcons.settings,
                  title: "Settings",
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.white,
          shadowColor: Colors.transparent,
          leading: GestureDetector(
            onTap: () => _homeScaffold.currentState!.openDrawer(),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0XFFF9F5FC),
                ),
                child: Center(
                  child: Icon(
                    CustomIcons.menu,
                    size: 30,
                    color: Colors.purple,
                  ),
                ),
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                CustomIcons.search,
                size: 25,
                color: Colors.purple,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                CustomIcons.notification,
                size: 25,
                color: Colors.purple,
              ),
            ),
          ],
        ),
        body: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: [Dashboard(), CustomerProfile()].elementAt(bodyindex)),
      ),
    );
  }
}
