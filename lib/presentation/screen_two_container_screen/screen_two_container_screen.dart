import 'bloc/screen_two_container_bloc.dart';
import 'models/screen_two_container_model.dart';
import 'package:flutter/material.dart';
import 'package:a2sinternshipp/core/app_export.dart';
import 'package:a2sinternshipp/presentation/screen_one_page/screen_one_page.dart';
import 'package:a2sinternshipp/presentation/screen_two_page/screen_two_page.dart';
import 'package:a2sinternshipp/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class ScreenTwoContainerScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<ScreenTwoContainerBloc>(
        create: (context) => ScreenTwoContainerBloc(ScreenTwoContainerState(
            screenTwoContainerModelObj: ScreenTwoContainerModel()))
          ..add(ScreenTwoContainerInitialEvent()),
        child: ScreenTwoContainerScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScreenTwoContainerBloc, ScreenTwoContainerState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.gray100,
              body: Navigator(
                  key: navigatorKey,
                  initialRoute: AppRoutes.screenTwoPage,
                  onGenerateRoute: (routeSetting) => PageRouteBuilder(
                      pageBuilder: (ctx, ani, ani1) =>
                          getCurrentPage(context, routeSetting.name!),
                      transitionDuration: Duration(seconds: 0))),
              bottomNavigationBar:
                  CustomBottomBar(onChanged: (BottomBarEnum type) {
                Navigator.pushNamed(
                    navigatorKey.currentContext!, getCurrentRoute(type));
              })));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Back:
        return AppRoutes.screenTwoPage;
      case BottomBarEnum.Home:
        return "/";
      case BottomBarEnum.Cart:
        return AppRoutes.screenOnePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.screenTwoPage:
        return ScreenTwoPage.builder(context);
      case AppRoutes.screenOnePage:
        return ScreenOnePage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
