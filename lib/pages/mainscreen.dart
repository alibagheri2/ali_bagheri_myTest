import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_test/controllers/controllers.dart';
import 'package:get/get.dart';
import 'package:my_test/pages/Bazdid_Badane_Page.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //top color
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Color(0xff2C4B7D)));
    final TabController tab = Get.find<TabBar_controller>().tabController;
    //scaffold
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: my_appbar(),
      body: Column(
        children: [my_tabbar(tab: tab), tabbar_veiw(tab: tab)],
      ),
    );
  }

  AppBar my_appbar() {
    return AppBar(
      title: const Text(
        'پرونده های من',
      ),
      centerTitle: true,
      leading: const Icon(Icons.menu),
      backgroundColor: const Color(0xff2C4B7D),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(25),
        ),
      ),
    );
  }
}
class tabbar_veiw extends StatelessWidget {
  const tabbar_veiw({
    Key? key,
    required this.tab,
  }) : super(key: key);

  final TabController tab;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TabBarView(
        controller: tab,
        children: [
          const Tab(
            text: 'صدور بیمه بدنه',
          ),
          Bazdid_Badane_Page(),
          const Tab(
            text: 'اعلام خسارت',
          )
        ],
      ),
    );
  }
}

class my_tabbar extends StatelessWidget {
  const my_tabbar({
    Key? key,
    required this.tab,
  }) : super(key: key);

  final TabController tab;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, right: 21, left: 21),
      child: Container(
        height: 45,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: const Color(0xff2C4B7D)),
        child: TabBar(
            indicator: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(45),
                border: Border.all(color: const Color(0xff2C4B7D), width: 4)),
            labelColor: const Color(0xff2C4B7D),
            unselectedLabelColor: Colors.white,
            controller: tab,
            tabs: Get.find<TabBar_controller>().myTabs),
      ),
    );
  }
}
