import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/widgets/category_item.dart';

class HomeView extends StatefulWidget {
  HomeView({super.key});
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;
  List<Widget> items = [
    Stack(children: [
      Image.asset(
        "assets/images/banner_1.png",
      ),
      Positioned(
        top: 33,
        left: 16,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("UP TO 25% \n OFF",
              style: TextStyle(
                  color: Color(0xff004182),
                  fontSize: 22,
                  fontWeight: FontWeight.w500)),
          Text("For all Headphones\n & AirPods",
              style: TextStyle(
                  color: Color(0xff004182),
                  fontSize: 16,
                  fontWeight: FontWeight.w400)),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff004182),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )),
            onPressed: () {},
            child: const Text("Shop Now"),
          )
        ]),
      ),
    ]),
    Stack(children: [
      Image.asset(
        "assets/images/banner_1.png",
      ),
      Positioned(
        top: 33,
        left: 16,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("UP TO 25% \n OFF",
              style: TextStyle(
                  color: Color(0xff004182),
                  fontSize: 22,
                  fontWeight: FontWeight.w500)),
          Text("For all Headphones\n & AirPods",
              style: TextStyle(
                  color: Color(0xff004182),
                  fontSize: 16,
                  fontWeight: FontWeight.w400)),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff004182),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )),
            onPressed: () {},
            child: const Text("Shop Now"),
          )
        ]),
      ),
    ]),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Container(
        width: double.infinity,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(
          children: [
            CarouselSlider(
                items: items,
                options: CarouselOptions(
                  aspectRatio: 19 / 9,
                  viewportFraction: 1,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: false,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  scrollPhysics: FixedExtentScrollPhysics(),
                  enlargeCenterPage: false,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  scrollDirection: Axis.horizontal,
                )),
            Positioned.fill(
              bottom: 0,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: DotsIndicator(
                  dotsCount: items.length,
                  position: currentIndex,
                ),
              ),
            )
          ],
        ),
      ),
      const SizedBox(
        height: 16,
      ),
      const Row(children: [
        Text("Categories",
            style: TextStyle(
                color: Color(0xff004182),
                fontSize: 18,
                fontWeight: FontWeight.w500)),
        Spacer(),
        Text("See All",
            style: TextStyle(
                color: Color(0xff004182),
                fontSize: 12,
                fontWeight: FontWeight.w400)),
      ]),
      const SizedBox(
        height: 16,
      ),
      Expanded(
        child: ListView.builder(

            itemCount: 6,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) =>const CategoryItem(),

        ),
      ),
      Expanded(
        child: ListView.builder(

            itemCount: 6,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) =>const CategoryItem(),

        ),
      ),
    ]);
  }
}
