import 'package:cardinal_quotes_app/core/constants/app_colors.dart';
import 'package:cardinal_quotes_app/core/constants/app_images_path.dart';
import 'package:cardinal_quotes_app/core/constants/app_typography.dart';
import 'package:cardinal_quotes_app/core/custom%20widgets/home_filter_card.dart';
import 'package:cardinal_quotes_app/presentation/home/home_ui_model/drawer_menu_model.dart';
import 'package:cardinal_quotes_app/presentation/home/home_ui_model/home_menu_card_model.dart';
import 'package:cardinal_quotes_app/presentation/home/home_ui_model/home_filter_card_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  // model initialize
  final List<HomeFilterCardModel> _filterCardModel =
      HomeFilterCardModel.getHomeFilterCards();
  final List<HomeMenuCardModel> _homeMenuCardsModel =
      HomeMenuCardModel.getHomeMenuCardModel();
  final List<DrawerMenuModel> _drawerMenuModel = DrawerMenuModel.getDrawerMenuModel();

  @override
  Widget build(BuildContext context) {
    Size mediaSize = MediaQuery.of(context).size;
    Orientation screenOrientation = MediaQuery.of(context).orientation;
    
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,
      key: _scaffoldKey,

      drawer: Container(
        padding: const EdgeInsets.only(left: 15, top: 30, bottom: 75),
        child: ClipRRect(
          clipBehavior: Clip.antiAlias,
          borderRadius: BorderRadiusGeometry.circular(20),
          child: Drawer(
            backgroundColor: AppColors.primaryWhite,
            width: 250,
            child: Stack(
              children: [
                Positioned(
                  top: 3,
                  right: 4,
                  child: IconButton(
                    onPressed: () {
                      _scaffoldKey.currentState?.closeDrawer();
                    },
                    icon: Icon(Icons.close, size: 20),
                  ),
                ),

              if(Orientation.landscape == screenOrientation)
                  SizedBox()
                else PositionedDirectional(
                    top: 45,
                    end: 10,
                    child: Image.asset(AppImagePath.birdsMenuBg1),
                  ),
              if(Orientation.landscape == screenOrientation)
                SizedBox()
                else PositionedDirectional(
                  top: 50,
                  start: 10,
                  child: Image.asset(AppImagePath.birdsMenuBg2),
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                        left: 18,
                        right: 18,
                        top: 30
                      ),
                      child: Column(
                        children: [
                          Text(
                            '"Peace comes from within. Do not seek it without."',
                            textAlign: TextAlign.center,
                            style: AppTextSyle.body15Regular(),
                          ),
                          Text('Buddha', style: AppTextSyle.body15semiBold()),
                        ],
                      ),
                    ),

                    if(Orientation.landscape == screenOrientation)
                      const SizedBox(height: 0)
                    else const SizedBox(height: 50),


                    // drawer listview builder
                    SizedBox(
                      height: mediaSize.height *0.55,
                      child: ListView.builder(
                        itemCount: _drawerMenuModel.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 5.0, right: 10.0),
                            child: TextButton(
                              onPressed: (){
                                if(_drawerMenuModel[index].menuIconlabel == 'Nature Sounds'){
                                  Navigator.of(context).pushNamed('/sound');
                                }
                                else if(_drawerMenuModel[index].menuIconlabel == 'Top Quotes'){
                                  Navigator.of(context).pushNamed('/top');
                                }
                                else if(_drawerMenuModel[index].menuIconlabel == 'Medicine Notes'){
                                  Navigator.of(context).pushNamed('/medicine');
                                }
                              },
                              child: Row(
                                spacing: 10.0,
                                children: [
                                  if(_drawerMenuModel[index].menuIconPath.endsWith('svg'))
                                    SvgPicture.asset(
                                    _drawerMenuModel[index].menuIconPath,
                                    height: 15,
                                    width: 15,
                                  )
                                  else
                                    Image.asset(
                                    _drawerMenuModel[index].menuIconPath,
                                    height: 15,
                                    width: 15,
                                  ),
                                  Text(_drawerMenuModel[index].menuIconlabel, style: AppTextSyle.body15Medium()),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),

                    TextButton(
                      onPressed: (){},
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Log Out',
                            style: AppTextSyle.body15semiBold(),
                          ),
                          const SizedBox(width: 8.0,),
                          Icon(
                            Icons.logout,
                            color: AppColors.primary,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),

      body: SafeArea(
        
        child: Column(
          children: [
            // Text('height: ${mediaSize.height}  ;  width: ${mediaSize.width}',
            //   style: AppTextSyle.body15Regular(selectColor: Colors.white),
            // ),
        
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18, bottom: 6,top: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      _scaffoldKey.currentState?.openDrawer();
                    },
                    icon: Icon(Icons.menu, color: AppColors.primaryWhite),
                  ),
        
                  const SizedBox(width: 10),
        
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(top: 25),
                      height: 60,
                      child: ListView.builder(
                        itemCount: _filterCardModel.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5.0),
                            child: HomeFilterCard(
                              iconPath: _filterCardModel[index].iconPath,
                              iconlabel: _filterCardModel[index].iconlabel,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
        
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 8,),
                      width: mediaSize.width,
                      child: GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        padding: const EdgeInsets.all(16.0),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 10.0,
                              mainAxisSpacing: 10.0,
                              childAspectRatio: 1.3,
                            ),
                        itemCount: _homeMenuCardsModel.length,
                        itemBuilder: (context, index) {
                          return Container(
                            padding: EdgeInsets.symmetric(vertical: 4,horizontal: 4),
                            width: 100,
                            height: 80,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                if (_homeMenuCardsModel[index].iconPath.endsWith(
                                  '.svg',
                                ))
                                  SvgPicture.asset(
                                    _homeMenuCardsModel[index].iconPath,
                                    semanticsLabel: 'loadError',
                                    height:
                                        20, // Add height/width for better control
                                    width: 20,
                                  )
                                else if (_homeMenuCardsModel[index].iconPath
                                    .endsWith('png'))
                                  Image.asset(
                                    _homeMenuCardsModel[index].iconPath,
                                    height: 20,
                                    width: 20,
                                    color: AppColors.primary,
                                  ),
        
                                const SizedBox(height: 5.0),
                                Text(
                                  _homeMenuCardsModel[index].iconlabel,
                                  textAlign: TextAlign.center,
                                  style: AppTextSyle.body15Regular(),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
        
                    // Featured Wallpapers
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Featured Wallpaper',
                                style: AppTextSyle.body15Medium(
                                  selectColor: AppColors.primaryWhite,
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Text(
                                      'See All',
                                      style: AppTextSyle.body15Medium(
                                        selectColor: AppColors.primaryWhite,
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios_outlined,
                                      color: AppColors.primaryWhite,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              spacing: 10.0,
                              children: [
                                Image.asset(
                                  AppImagePath.featureWallpaperImage1,
                                ),
                                Image.asset(
                                  AppImagePath.featureWallpaperImage2,
                                ),
                                Image.asset(
                                  AppImagePath.featureWallpaperImage3,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
        
                    // Featured Quotes
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Featured Quotes',
                                style: AppTextSyle.body15Medium(
                                  selectColor: AppColors.primaryWhite,
                                ),
                              ),
        
                              TextButton(
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Text(
                                      'See All',
                                      style: AppTextSyle.body15Medium(
                                        selectColor: AppColors.primaryWhite,
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios_outlined,
                                      color: AppColors.primaryWhite,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
        
                          const SizedBox(height: 10),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              spacing: 10.0,
                              children: [
                                Image.asset(
                                  AppImagePath.featureQuotesImage1,
                                ),
                                Image.asset(
                                  AppImagePath.featureQuotesImage2,
                                ),
                                Image.asset(
                                  AppImagePath.featureQuotesImage3,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
        
                    //
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'featured memorial cards',
                                style: AppTextSyle.body15Medium(
                                  selectColor: AppColors.primaryWhite,
                                ),
                              ),
        
                              TextButton(
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Text(
                                      'See All',
                                      style: AppTextSyle.body15Medium(
                                        selectColor: AppColors.primaryWhite,
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios_outlined,
                                      color: AppColors.primaryWhite,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
        
                          const SizedBox(height: 10),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              spacing: 10.0,
                              children: [
                                Image.asset(
                                  AppImagePath.featureCardImage1,
                                ),
                                Image.asset(
                                  AppImagePath.featureCardImage2,
                                ),
                                Image.asset(
                                  AppImagePath.featureCardImage3,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    
        
        
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Announcement',
                                style: AppTextSyle.body15Medium(
                                  selectColor: AppColors.primaryWhite,
                                ),
                              ),
        
                              TextButton(
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Text(
                                      'See All',
                                      style: AppTextSyle.body15Medium(
                                        selectColor: AppColors.primaryWhite,
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios_outlined,
                                      color: AppColors.primaryWhite,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
        
                          const SizedBox(height: 10),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              spacing: 10.0,
                              children: [
                                Image.asset(
                                  AppImagePath.announcementImage,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
        
                    //extra space for proper scroll and view 
                    const SizedBox(height: 80,),
                  ],
                ),
              ),
            ),
        
        
            
          ],
        ),
      ),
    );
  }
}
