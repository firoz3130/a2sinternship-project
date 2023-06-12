import 'package:a2sinternshipp/presentation/frame_four_screen/frame_four_screen.dart';
import 'package:a2sinternshipp/presentation/frame_three_screen/frame_three_screen.dart';
import 'package:flutter/material.dart';
import 'package:a2sinternshipp/core/app_export.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  // ignore: library_private_types_in_public_api
  _CustomBottomBarState createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgArrowleft,
      title: "lbl_back".tr,
      type: BottomBarEnum.Back,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgFile,
      title: "lbl_home".tr,
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgCart,
      title: "lbl_cart".tr,
      type: BottomBarEnum.Cart,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border(
          top: BorderSide(
            color: ColorConstant.gray60026,
            width: getHorizontalSize(
              2,
            ),
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: ColorConstant.gray6003f,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              -4,
            ),
          ),
        ],
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomImageView(
                  svgPath: bottomMenuList[index].icon,
                  height: getSize(
                    28,
                  ),
                  width: getSize(
                    28,
                  ),
                  color: ColorConstant.gray900,
                ),
                Padding(
                  padding: getPadding(
                    top: 4,
                  ),
                  child: Text(
                    bottomMenuList[index].title ?? "",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterMedium10.copyWith(
                      color: ColorConstant.gray900,
                    ),
                  ),
                ),
              ],
            ),
            activeIcon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomImageView(
                  svgPath: bottomMenuList[index].icon,
                  height: getSize(
                    28,
                  ),
                  width: getSize(
                    28,
                  ),
                  color: ColorConstant.gray900,
                ),
                Padding(
                  padding: getPadding(
                    top: 4,
                  ),
                  child: Text(
                    bottomMenuList[index].title ?? "",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterMedium10.copyWith(
                      color: ColorConstant.gray900,
                    ),
                  ),
                ),
              ],
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Back,
  Home,
  Cart,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    this.title,
    required this.type,
  });

  String icon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Container(child: FrameFourScreen()),
    );
  }
}
