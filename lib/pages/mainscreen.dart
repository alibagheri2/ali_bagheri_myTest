import 'package:flutter/material.dart';
import 'package:my_test/controllers/controllers.dart';
import 'package:get/get.dart';
import 'package:my_test/pages/Bazdid_Badane_Page.dart';
class MainScreen extends StatelessWidget{
   const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TabController tab = Get.find<TabBar_controller>().tabController;
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: const Text('پرونده های من'),
        centerTitle: true,
        leading:const Icon(Icons.menu),
        backgroundColor:const Color(0xff2C4B7D),
        shape:  const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(25),
      ),),
      ),
      body: Column(
        children: [
      Padding(padding: const EdgeInsets.only(top: 30,right: 28,left: 28),
      child:
          Container(
            height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: const Color(0xff2C4B7D)
            ),
            child:TabBar(
              indicator: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(45),
                border: Border.all(color: const Color(0xff2C4B7D),width: 4)
              ),
                labelColor: const Color(0xff2C4B7D),
                unselectedLabelColor: Colors.white,
                controller: tab,
                tabs:Get.find<TabBar_controller>().myTabs
            ) ,
          ),),
          Expanded(child:
          TabBarView(
            controller: tab,
            children:  [
              const Tab(text: 'صدور بیمه بدنه',),
              Bazdid_Badane_Page(),
              const Tab(text: 'اعلام خسارت',)
            ],
          ),
          )
        ],

      ),

    );
  }
}


