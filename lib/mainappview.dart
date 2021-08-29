import 'package:cardanosmartproj/bar/bottombartabs.dart';
import 'package:cardanosmartproj/model/colors.dart';
import 'package:cardanosmartproj/model/gradcanada.dart';
import 'package:cardanosmartproj/view/account.dart';
import 'package:cardanosmartproj/view/discover.dart';
import 'package:cardanosmartproj/view/home.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}

class HomeView extends StatefulWidget {
  HomeView({Key key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>
    with SingleTickerProviderStateMixin {
  bool isCollapsed = true;
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //backgroundColor: Colors.yellow.shade500.withOpacity(0.8),
        appBar: appbar1(),
        body: SafeArea(
          child: Center(
            child: tabsPage(),
          ),
        ),
        backgroundColor: background,
        bottomNavigationBar: Container(
          //color: Colors.transparent.withOpacity(0.1),
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(20.0),
              ),
              child: Container(
                color: canadacolor,
                child: TabBar(
                  labelColor: text3,
                  unselectedLabelColor: text2,
                  tabs: tabs(),
                  controller: _tabController,
                  indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(
                      color: nicepurback,
                      width: 0,
                    ),
                    //insets: EdgeInsets.fromLTRB(50, 0, 50, 40),
                  ),
                ),
              ),
            ),
          ),
        ),

        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //     // button action to switch to
        //   },
        //   backgroundColor: pinky,
        //   child: Icon(
        //     Icons.shopping_bag_sharp,
        //     color: bag,
        //   ),
        // ),
      ),
    );
  }

  AppBar appbar1() {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.all(10),
        child: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            setState(() {
              isCollapsed = !isCollapsed;
            });
          },
        ),
      ),
      flexibleSpace: ClipRRect(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: canada(),
          ),
        ),
      ),
      elevation: 10,
      shadowColor: Colors.grey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Smart Vaxx',
                    style: TextStyle(
                        fontSize: 22,
                        color: verylight,
                        fontWeight: FontWeight.w900),
                  ),
                ),
                SizedBox(height: 10)
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 45),
            ),
            SizedBox(height: 20)
          ],
        ),
      ),
    );
  }

  TabBarView tabsPage() {
    return TabBarView(
      children: [
        Home(),
        InfoNow(),
        Account(),
      ],
      physics: NeverScrollableScrollPhysics(),
      controller: _tabController,
    );
  }
}
