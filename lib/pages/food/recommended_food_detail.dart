import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/utils/colors.dart';
import 'package:shop_app/utils/dimensions.dart';
import 'package:shop_app/widgets/app_icon.dart';
import 'package:shop_app/widgets/big_text.dart';

import '../../routes/route_helper.dart';
import '../../widgets/expandable_text_widget.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: (){
                    Get.toNamed(RouteHelper.getInitial());
                  },
                  child: AppIcon(
                    icon: Icons.clear,
                  ),
                ),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                // margin: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),

                child: Center(
                    child:
                        BigText(size: Dimensions.font26, text: "Chinise Side")),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimensions.radius20),
                      topRight: Radius.circular(Dimensions.radius20),
                    )),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
              "assets/image/ea9367e8a16f1d3e41d4a3ae9af2baff.png",
              width: double.maxFinite,
              fit: BoxFit.cover,
            )),
          ),
          SliverToBoxAdapter(
              child: Column(
            children: [
              Container(
                child: ExpandableTextWidget(
                  text:
                      "GetConnect is highly customizable You can define base Url, as answer modifiers, as Requests modifiers, define an authenticator, and even the number of attempts in which it will try to authenticate itself, in addition to giving the possibility to define a standard decoder that will transform all your requests into your Models without any additional configuration GetConnect is highly customizable You can define base Url, as answer modifiers, as Requests modifiers, define an authenticator, and even the number of attempts in which it will try to authenticate itself, in addition to giving the possibility to define a standard decoder that will transform all your requests into your Models without any additional configuration GetConnect is highly customizable You can define base Url, as answer modifiers, as Requests modifiers, define an authenticator, and even the number of attempts in which it will try to authenticate itself, in addition to giving the possibility to define a standard decoder that will transform all your requests into your Models without any additional configuration",
                ),
                margin: EdgeInsets.only(
                    left: Dimensions.width20, right: Dimensions.width20),
              )
            ],
          ))
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
                left: Dimensions.width20 * 2.5,
                right: Dimensions.width20 * 2.5,
                top: Dimensions.height10,
                bottom: Dimensions.height10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.remove),
                BigText(
                  text: "\$12.88 " + " X " + " 0 ",
                  color: AppColors.mainBlackColor,
                  size: Dimensions.font26,
                ),
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.add)
              ],
            ),
          ),
          Container(
            height: Dimensions.bottomHeightBar,
            padding: EdgeInsets.only(
              top: Dimensions.height30,
              bottom: Dimensions.height30,
              left: Dimensions.width20,
              right: Dimensions.width20,
            ),
            decoration: BoxDecoration(
              color: AppColors.buttonBackgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Dimensions.radius20 * 2),
                topRight: Radius.circular(Dimensions.radius20 * 2),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    top: Dimensions.height10,
                    bottom: Dimensions.height10,
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: Colors.white),
                  child: Icon(
                    Icons.favorite,
                    color: AppColors.mainColor,
                  )
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: Dimensions.height10,
                    bottom: Dimensions.height10,
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                  ),
                  child: BigText(
                    text: "\$10 | Add to cart",
                    color: Colors.white,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: AppColors.mainColor),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
