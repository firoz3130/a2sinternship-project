import 'package:flutter/material.dart';
import 'package:a2sinternshipp/presentation/screen_two_container_screen/screen_two_container_screen.dart';
import 'package:a2sinternshipp/presentation/frame_three_screen/frame_three_screen.dart';
import 'package:a2sinternshipp/presentation/frame_four_screen/frame_four_screen.dart';
import 'package:a2sinternshipp/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String screenOnePage = '/screen_one_page';

  static const String screenTwoPage = '/screen_two_page';

  static const String screenTwoContainerScreen = '/screen_two_container_screen';

  static const String frameThreeScreen = '/frame_three_screen';

  static const String frameFourScreen = '/frame_four_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        screenTwoContainerScreen: ScreenTwoContainerScreen.builder,
        frameThreeScreen: FrameThreeScreen.builder,
        frameFourScreen: FrameFourScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: ScreenTwoContainerScreen.builder
      };
}
