import 'package:cardanosmartproj/bar/bottombartabs.dart';
import 'package:cardanosmartproj/model/colors.dart';
import 'package:cardanosmartproj/view/account.dart';
import 'package:cardanosmartproj/view/appbar.dart';
import 'package:cardanosmartproj/view/discover.dart';
import 'package:cardanosmartproj/view/home.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: deeppurpleback,
        primaryColorLight: pinkpurback,
        accentColor: nicepurback,
      ),
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
        appBar: appBar1(),
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
                color: niceback3,
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
