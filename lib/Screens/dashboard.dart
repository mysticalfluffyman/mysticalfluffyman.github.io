import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stinky_fish/icons/CustomIcons.dart';
import 'package:stinky_fish/widgets/drawerCard.dart';
import 'package:stinky_fish/widgets/homeStatCard.dart';
import 'package:stinky_fish/widgets/progressIndicator.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  GlobalKey<ScaffoldState> _homeScaffold = GlobalKey<ScaffoldState>();
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
                DrawerCard(
                  icon: CustomIcons.dashboard,
                  title: "Dashboard",
                ),
                DrawerCard(
                  icon: CustomIcons.earning,
                  title: "Earning",
                ),
                DrawerCard(
                  icon: CustomIcons.customer,
                  title: "Customer",
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
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: height * 0.1,
                      width: width * 0.45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0XFFAF96E5),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 1,
                                child: CustomPaint(
                                  foregroundPainter: ProjectProgressIndicator(
                                      circlewidth: width * 0.15,
                                      completedColor: Color(0XFF75D77A),
                                      completedpercentage: 80),
                                  child: Center(
                                    child: Text(
                                      '80%',
                                      style: GoogleFonts.darkerGrotesque(
                                          color: Colors.white,
                                          fontSize: 17,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'StoreStatus',
                                      style: GoogleFonts.darkerGrotesque(
                                          color: Colors.white,
                                          fontSize: 17,
                                          fontWeight: FontWeight.w300),
                                    ),
                                    Text(
                                      'Really Good',
                                      style: GoogleFonts.darkerGrotesque(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    HomeStatCard(
                      height: height,
                      width: width,
                      icon: CustomIcons.sales,
                      maintext: 'Total Sales',
                      subtext: '\$666',
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    HomeStatCard(
                      height: height,
                      width: width,
                      icon: CustomIcons.earning,
                      maintext: 'Total Profit',
                      subtext: '\$420',
                    ),
                    HomeStatCard(
                      height: height,
                      width: width,
                      icon: CustomIcons.cost,
                      maintext: 'Total Cost',
                      subtext: '\$49',
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
