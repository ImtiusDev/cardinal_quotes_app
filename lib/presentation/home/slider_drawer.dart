import 'package:cardinal_quotes_app/core/constants/app_colors.dart';
import 'package:cardinal_quotes_app/core/constants/app_images_path.dart';
import 'package:cardinal_quotes_app/core/constants/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SliderDrawer extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldDrawerKey;
  const SliderDrawer({super.key, required this.scaffoldDrawerKey});

  @override
  Widget build(BuildContext context) {
    
    return Container(
      padding: const EdgeInsets.only(left: 15, top: 20, bottom: 30),
      child: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(20),
        child: Drawer(
          // backgroundColor: Colors.brown[400],
          width: 250,
          child: Stack(
            children: [
              Positioned(
                right: 0,
                child: IconButton(
                  onPressed: () {
                    scaffoldDrawerKey.currentState?.closeDrawer();
                  },
                  icon: Icon(Icons.close,
                    size: 20,
                  ),
                ),
              ),
              PositionedDirectional(
                top: 50,
                end: 20,
                child: SvgPicture.asset(
                  AppImagePath.griefEmojiIcon,
                  height: 80,
                  width: 70,
                  colorFilter: ColorFilter.mode(
                    const Color.fromARGB(80, 90, 2, 2),
                    BlendMode.srcIn,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                    child: Column(
                      children: [
                        Text(
                          '"Peace comes from within. Do not seek it without."',
                          textAlign: TextAlign.center,
                          style: AppTextSyle.body15Medium(),
                        ),
                        Text('Buddha', style: AppTextSyle.body15semiBold()),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  Padding(
                    padding: const EdgeInsets.only(left: 5.0, right: 8.0),
                    child: TextButton(
                      onPressed: () {},
                      child: Row(
                        spacing: 5.0,
                        children: [
                          Icon(Icons.home, color: AppColors.primary, size: 20),
                          Text('Home', style: AppTextSyle.body15Medium()),
                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 5.0, right: 8.0),
                    child: TextButton(
                      onPressed: () {},
                      child: Row(
                        spacing: 5.0,
                        children: [
                          Icon(Icons.home, color: AppColors.primary, size: 20),
                          Text('Home', style: AppTextSyle.body15Medium()),
                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 5.0, right: 8.0),
                    child: TextButton(
                      onPressed: () {},
                      child: Row(
                        spacing: 5.0,
                        children: [
                          Icon(Icons.home, color: AppColors.primary, size: 20),
                          Text('Home', style: AppTextSyle.body15Medium()),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  
  }
}
