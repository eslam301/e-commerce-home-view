import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../core/widgets/custom_search_bar.dart';
import 'home_view.dart';

class HomeLayout extends StatelessWidget {
  static const String routeName = "home";
  List<Widget> screens = [
    HomeView(),
  ];
   HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    int? currentIndex ;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "assets/images/logo.png",
            ),
            const SizedBox(height: 10,),
            Row(
              children: [
                const Expanded(child: CustomSearchBar()),
                IconButton(
                    onPressed: (){},
                    icon: const Icon(Icons.shopping_cart_outlined,color: Color(0xff004182),
                    )
                ),
              ],
            ),
          ],
        ),
      ),
      body: Padding(

        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: screens[currentIndex ?? 0],
      ),
      bottomNavigationBar: Container(
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(
          color:Color(0xff004182),
          borderRadius: BorderRadius.only(
             topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: BottomNavigationBar(
          backgroundColor:const Color(0xff004182),
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex?? 0,
          elevation: 0,
          showSelectedLabels: false,
          showUnselectedLabels: false,

          selectedItemColor:Color(0xff004182),
          unselectedItemColor:Color(0xff004182),
          onTap: (index){
            print(index);
            currentIndex = index;
          },
          items: [
            BottomNavigationBarItem(
              label: 'home',
              icon: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffffffff),
                  ),
                  child: const ImageIcon(
                    AssetImage("assets/icons/home.png"),
                  )
              ),
            ),
            const BottomNavigationBarItem(
              label: 'home',
              icon: ImageIcon(
                AssetImage("assets/icons/category.png"),
                color: Colors.white,
              ),
            ),
            const BottomNavigationBarItem(
              label: 'home',
              icon: ImageIcon(
                AssetImage("assets/icons/heart.png"),
                color: Colors.white,
              ),
            ),
            const BottomNavigationBarItem(
              label: 'home',
              icon: ImageIcon(
                AssetImage("assets/icons/profile.png"),
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
