import 'package:cardinal_quotes_app/core/constants/app_colors.dart';
import 'package:cardinal_quotes_app/core/constants/app_images_path.dart';
import 'package:cardinal_quotes_app/core/constants/app_typography.dart';
import 'package:cardinal_quotes_app/presentation/home/home_screen.dart';
import 'package:cardinal_quotes_app/presentation/more.dart';
import 'package:cardinal_quotes_app/presentation/soul/soul_screen.dart';
import 'package:cardinal_quotes_app/presentation/sounds/sound_screen.dart';
import 'package:cardinal_quotes_app/presentation/top/top_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedPageIndex = 0;
  final List<Widget> _pages = [
    HomeScreen(),
    SoundScreen(),
    SoulScreen(),
    TopScreen(),
    MoreScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,

      // extendBody পেছনের ব্যকগ্রাউন্ড টা bottom navigation bar এর নিচে পর্যন্ত extend করে দেই।
      extendBody: true,
      body: IndexedStack(index: selectedPageIndex, children: _pages),

      bottomNavigationBar: Container(
        height: 70,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(
                255,
                0,
                0,
                0,
              ).withAlpha(70), // subtle black shadow
              blurRadius: 30,
              spreadRadius: 2,
              offset: Offset(0, -6), // upward shadow
            ),
          ],
        ),

        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
          child: BottomNavigationBar(
            backgroundColor: AppColors.primaryWhite,
            currentIndex: selectedPageIndex,

            onTap: (pageIndex) {
              setState(() {
                selectedPageIndex = pageIndex;
              });
            },

            type: BottomNavigationBarType.fixed,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedItemColor: AppColors.primary,
            unselectedItemColor: AppColors.primary,
            selectedLabelStyle: AppTextSyle.body15semiBold(),
            unselectedLabelStyle: AppTextSyle.body15Medium(),

            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  selectedPageIndex == 0
                      ? AppImagePath.homeBottomIconClicked
                      : AppImagePath.homeBottomIcon,
                ),
                label: 'Home',
              ),

              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  selectedPageIndex == 1
                      ? AppImagePath.soundBottomIconClicked
                      : AppImagePath.soundBottomIcon,
                ),
                label: 'Sounds',
              ),

              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  selectedPageIndex == 2
                      ? AppImagePath.soulBottomIconClicked
                      : AppImagePath.soulBottomIcon,
                ),
                label: 'Soul',
              ),

              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  selectedPageIndex == 3
                      ? AppImagePath.topBottomIconClicked
                      : AppImagePath.topBottomIcon,
                ),
                label: 'Top',
              ),

              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  selectedPageIndex == 4
                      ? AppImagePath.moreBottomIcon
                      : AppImagePath.moreBottomIcon,
                ),
                label: 'More',
              ),
            ],
          ),
        ),
      ),
    
    
    );
  }
}
