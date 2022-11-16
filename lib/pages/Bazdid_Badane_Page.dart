import 'dart:math';

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:awesome_bottom_bar/widgets/hexagon/hexagon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:my_test/controllers/bottom_icons_controller.dart';
import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:awesome_bottom_bar/widgets/inspired/inspired.dart';

class Bazdid_Badane_Page extends StatelessWidget {
  const Bazdid_Badane_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.grey.shade100,
      body: Stack(
        children: [
          const back_image(),
          Column(
            children: [
              const My_Text_feild(),
              //info_window
              Container(
                margin: const EdgeInsets.only(top: 20, right: 20, left: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(color: Colors.grey.shade400, blurRadius: 6)
                    ],
                    border: Border.all(color: Colors.grey.shade300)),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        const SizedBox(
                          height: 35,
                        ),
                        const Shenase_Parvande(),
                        const Name_Moshtary(),
                        const Telephone_Hamrah(),
                        const Mahal_Bazdid(),
                        //gray_info_box
                        Container(
                          margin: const EdgeInsets.only(
                              top: 20, right: 15, left: 15, bottom: 20),
                          decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: const [
                              Vaziat_Parvande(),
                              Zaman_Bazdid(),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 40),
                          child: Container(
                            width: 135,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(7),
                                border: Border.all(
                                    color: const Color(0xff2C4B7D),
                                    width: 1.8)),
                            child: const Center(
                                child: Text(
                              'ورود به صفحه پرونده',
                              style: TextStyle(color: Color(0xff2C4B7D)),
                            )),
                          ),
                        )
                      ],
                    ),
                    const Positioned(
                        top: -10,
                        left: -10.5,
                        child: Icon(Icons.bookmark_sharp,
                            color: Color(0xff2C4B7D), size: 50,shadows: [Shadow(color: Colors.grey,blurRadius: 20)],)),
                    const Positioned(
                        top: 3,
                        left: 1.2,
                        child: Text('خودم',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold))),
                    const my_hexagon(),
                  ],
                ),
              )
            ],
          ),
        ],
      ),

      bottomNavigationBar: Obx(() {
        return SingleChildScrollView(
          child: BottomBarInspiredOutside(
            items: const [
              TabItem(
                icon: Icons.library_books,
                title: 'پرونده های من',
              ),
              TabItem(
                icon: Icons.home_filled,
                title: 'خانه',
              ),
              TabItem(icon: Icons.library_add, title: 'ارسال نواقص'),
            ],
            backgroundColor: Colors.white,
            color: Colors.grey,
            colorSelected: const Color(0xff2C4B7D),
            indexSelected: Get.find<Bottom_Icons_Controller>().index.value,
            onTap: (int index) {
              Get.find<Bottom_Icons_Controller>().index.value = index;
            },
            titleStyle: const TextStyle(
                fontSize: 10, fontWeight: FontWeight.w900, fontFamily: 'Vazir'),
            animated: true,
            radius: 15,
            itemStyle: ItemStyle.hexagon,
            chipStyle:
                const ChipStyle(drawHexagon: true, background: Colors.white),
          ),
        );
      }),
    );
  }
}

class back_image extends StatelessWidget {
  const back_image({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: Get.height,
      child: const Image(
        image: AssetImage("assets/images/background.jpg"),
        fit: BoxFit.cover,
      ),
    );
  }
}

class my_hexagon extends StatelessWidget {
  const my_hexagon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 13,
        left: 20,
        child: Column(
          children: [
            ClipPath(
              clipper: myHexagone(),
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    color: Color(0xff4BAD7A),
                    borderRadius: BorderRadius.circular(10)),
                child: const Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            const Text(
              'انجام شد',
              style: TextStyle(color: Color(0xff4BAD7A)),
            )
          ],
        ));
  }
}

class myHexagone extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height * 0.25);
    path.lineTo(0, size.height * 0.75);
    path.lineTo(size.width * sqrt(3) / 4, size.height);
    path.lineTo(size.width * sqrt(3) / 2, size.height * 0.75);
    path.lineTo(size.width * sqrt(3) / 2, size.height * 0.25);
    path.lineTo(size.width * sqrt(3) / 4, 0);
    path.lineTo(
      0,
      size.height * 0.25,
    );
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class Zaman_Bazdid extends StatelessWidget {
  const Zaman_Bazdid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10, left: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 5),
                child: Icon(
                  Icons.watch_later,
                  size: 17,
                  color: Colors.grey,
                ),
              ),
              Text('زمان بازدید')
            ],
          ),
          const Text('14:11 _ 1401-06-01')
        ],
      ),
    );
  }
}

class Vaziat_Parvande extends StatelessWidget {
  const Vaziat_Parvande({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: const [
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Icon(
                  Icons.library_books,
                  size: 17,
                  color: Colors.grey,
                ),
              ),
              Text('وضعیت پرونده')
            ],
          ),
          const Text('تایید شده توسط نماینده')
        ],
      ),
    );
  }
}

class Mahal_Bazdid extends StatelessWidget {
  const Mahal_Bazdid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10, left: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 5),
                child: Icon(
                  Icons.circle,
                  size: 10,
                  color: Colors.grey,
                ),
              ),
              Text('محل بازدید')
            ],
          ),
          const Text(' شهرک غرب،فاز4،زرافشان،\nخیابان شجریان،پلاک 13،واحد 8')
        ],
      ),
    );
  }
}

class Telephone_Hamrah extends StatelessWidget {
  const Telephone_Hamrah({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10, left: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 5),
                child: Icon(
                  Icons.circle,
                  size: 10,
                  color: Colors.grey,
                ),
              ),
              Text('تلفن همراه')
            ],
          ),
          const Text('09127825671')
        ],
      ),
    );
  }
}

class Name_Moshtary extends StatelessWidget {
  const Name_Moshtary({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10, left: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 5),
                child: Icon(
                  Icons.circle,
                  size: 10,
                  color: Colors.grey,
                ),
              ),
              Text('نام مشتری')
            ],
          ),
          const Text('محمدعلی مراد بیگ زاده')
        ],
      ),
    );
  }
}

class Shenase_Parvande extends StatelessWidget {
  const Shenase_Parvande({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10, left: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 5),
                child: Icon(
                  Icons.circle,
                  size: 10,
                  color: Colors.grey,
                ),
              ),
              Text('شناسه پرونده')
            ],
          ),
          const Text('0iajz40474')
        ],
      ),
    );
  }
}

class My_Text_feild extends StatelessWidget {
  const My_Text_feild({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20, right: 20, left: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: const Padding(
            padding: EdgeInsets.only(right: 15,left: 15),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'شناسه پرونده را وارد نمایید',
                hintStyle: TextStyle(fontSize: 13,fontWeight: FontWeight.w300)
              ),
              cursorColor: Colors.black,
              cursorHeight: 30,
            ),
          ),
        ),
        const Positioned(left: 25, top: 35, child: Icon(Icons.search))
      ],
    );
  }
}
