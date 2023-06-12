import 'package:a2sinternshipp/presentation/frame_four_screen/frame_four_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'bloc/screen_two_bloc.dart';
import 'models/screen_two_model.dart';
import 'package:flutter/material.dart';
import 'package:a2sinternshipp/core/app_export.dart';
import 'package:a2sinternshipp/widgets/custom_button.dart';
import 'package:a2sinternshipp/widgets/custom_search_view.dart';
import 'package:a2sinternshipp/widgets/custom_text_form_field.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class ScreenTwoPage extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<ScreenTwoBloc>(
      create: (context) => ScreenTwoBloc(ScreenTwoState(
        screenTwoModelObj: ScreenTwoModel(),
      ))
        ..add(ScreenTwoInitialEvent()),
      child: ScreenTwoPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray100,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    height: size.height,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            width: double.maxFinite,
                            margin: getMargin(
                              bottom: 456,
                            ),
                            padding: getPadding(
                              left: 24,
                              top: 64,
                              right: 24,
                              bottom: 64,
                            ),
                            decoration: AppDecoration.gradientOrange600Orange300
                                .copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL24,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgEllipse142x42,
                                  height: getSize(
                                    42,
                                  ),
                                  width: getSize(
                                    42,
                                  ),
                                  radius: BorderRadius.circular(
                                    getHorizontalSize(
                                      21,
                                    ),
                                  ),
                                  margin: getMargin(
                                    bottom: 174,
                                  ),
                                ),
                                BlocSelector<ScreenTwoBloc, ScreenTwoState,
                                    TextEditingController?>(
                                  selector: (state) => state.searchController,
                                  builder: (context, searchController) {
                                    return CustomSearchView(
                                      width: getHorizontalSize(
                                        262,
                                      ),
                                      focusNode: FocusNode(),
                                      autofocus: true,
                                      controller: searchController,
                                      hintText: "msg_search_your_product".tr,
                                      margin: getMargin(
                                        bottom: 174,
                                      ),
                                      padding: SearchViewPadding.PaddingT13_1,
                                      prefix: Container(
                                        margin: getMargin(
                                          left: 10,
                                          top: 11,
                                          right: 10,
                                          bottom: 11,
                                        ),
                                        child: CustomImageView(
                                          svgPath: ImageConstant.imgSearch,
                                        ),
                                      ),
                                      prefixConstraints: BoxConstraints(
                                        maxHeight: getVerticalSize(
                                          42,
                                        ),
                                      ),
                                      suffix: Container(
                                        padding: getPadding(
                                          all: 6,
                                        ),
                                        margin: getMargin(
                                          left: 30,
                                          top: 2,
                                          right: 3,
                                          bottom: 2,
                                        ),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.gray60059,
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              19,
                                            ),
                                          ),
                                        ),
                                        child: CustomImageView(
                                          svgPath: ImageConstant
                                              .imgQrcodescansvgrepocom1,
                                        ),
                                      ),
                                      suffixConstraints: BoxConstraints(
                                        maxHeight: getVerticalSize(
                                          42,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            padding: getPadding(
                              left: 24,
                              top: 27,
                              right: 24,
                              bottom: 27,
                            ),
                            decoration: AppDecoration.fillWhiteA700.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderBL24,
                            ),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl_product".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterMedium13,
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 5,
                                    ),
                                    child: Text(
                                      "lbl_tata_pink_salt2".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtArchivoRomanBold24,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 18,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: CustomImageView(
                                            imagePath:
                                                ImageConstant.imgRectangle7,
                                            height: getVerticalSize(
                                              100,
                                            ),
                                            width: getHorizontalSize(
                                              94,
                                            ),
                                            radius: BorderRadius.circular(
                                              getHorizontalSize(
                                                8,
                                              ),
                                            ),
                                            margin: getMargin(
                                              right: 7,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: CustomImageView(
                                            imagePath:
                                                ImageConstant.imgRectangle8,
                                            height: getVerticalSize(
                                              100,
                                            ),
                                            width: getHorizontalSize(
                                              94,
                                            ),
                                            radius: BorderRadius.circular(
                                              getHorizontalSize(
                                                8,
                                              ),
                                            ),
                                            margin: getMargin(
                                              left: 7,
                                              right: 7,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: CustomImageView(
                                            imagePath:
                                                ImageConstant.imgRectangle9,
                                            height: getVerticalSize(
                                              100,
                                            ),
                                            width: getHorizontalSize(
                                              94,
                                            ),
                                            radius: BorderRadius.circular(
                                              getHorizontalSize(
                                                8,
                                              ),
                                            ),
                                            margin: getMargin(
                                              left: 7,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      height: getVerticalSize(
                                        6,
                                      ),
                                      margin: getMargin(
                                        top: 16,
                                      ),
                                      child: SmoothIndicator(
                                        offset: 0,
                                        count: 3,
                                        size: Size.zero,
                                        effect: ScrollingDotsEffect(
                                          spacing: 5,
                                          activeDotColor:
                                              ColorConstant.orange600,
                                          dotColor: ColorConstant.blueGray100,
                                          dotHeight: getVerticalSize(
                                            6,
                                          ),
                                          dotWidth: getHorizontalSize(
                                            6,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 22,
                                    ),
                                    child: Text(
                                      "lbl_deal_price".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterMedium13,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 6,
                                    ),
                                    child: Row(
                                      children: [
                                        Text(
                                          "lbl_20".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtArchivoRomanRegular24,
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 11,
                                          ),
                                          child: Text(
                                            "lbl_rs_96".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtArchivoRomanBold24,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: getVerticalSize(
                                      15,
                                    ),
                                    width: getHorizontalSize(
                                      94,
                                    ),
                                    margin: getMargin(
                                      top: 4,
                                    ),
                                    child: Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            "msg_m_r_p_rs_120".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtArchivoRomanRegular13,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomRight,
                                          child: Container(
                                            height: getVerticalSize(
                                              1,
                                            ),
                                            width: getHorizontalSize(
                                              24,
                                            ),
                                            margin: getMargin(
                                              bottom: 6,
                                            ),
                                            decoration: BoxDecoration(
                                              color: ColorConstant.black900,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 5,
                                    ),
                                    child: Text(
                                      "msg_you_are_saving".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtArchivoRomanRegular13Lightgreen700,
                                    ),
                                  ),
                                  Container(
                                    width: double.maxFinite,
                                    child: Container(
                                      margin: getMargin(
                                        top: 19,
                                      ),
                                      padding: getPadding(
                                        left: 13,
                                        top: 10,
                                        right: 13,
                                        bottom: 10,
                                      ),
                                      decoration: AppDecoration.outlineGray60059
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder6,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              top: 2,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: getPadding(
                                                    top: 2,
                                                    bottom: 1,
                                                  ),
                                                  child: Text(
                                                    "lbl_product_details".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterMedium13,
                                                  ),
                                                ),
                                                CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgIconsaxlinear,
                                                  height: getSize(
                                                    20,
                                                  ),
                                                  width: getSize(
                                                    20,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            width: getHorizontalSize(
                                              277,
                                            ),
                                            margin: getMargin(
                                              left: 6,
                                              top: 15,
                                              right: 1,
                                            ),
                                            child: RichText(
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: "msg_authentic_pure2"
                                                        .tr,
                                                    style: TextStyle(
                                                      color:
                                                          ColorConstant.gray900,
                                                      fontSize: getFontSize(
                                                        13,
                                                      ),
                                                      fontFamily: 'Inter',
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text:
                                                        "msg_tata_salt_rock_salt"
                                                            .tr,
                                                    style: TextStyle(
                                                      color:
                                                          ColorConstant.gray900,
                                                      fontSize: getFontSize(
                                                        13,
                                                      ),
                                                      fontFamily: 'Inter',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text:
                                                        "msg_with_natural_minerals"
                                                            .tr,
                                                    style: TextStyle(
                                                      color:
                                                          ColorConstant.gray900,
                                                      fontSize: getFontSize(
                                                        13,
                                                      ),
                                                      fontFamily: 'Inter',
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text:
                                                        "msg_tata_rock_salt_has"
                                                            .tr,
                                                    style: TextStyle(
                                                      color:
                                                          ColorConstant.gray900,
                                                      fontSize: getFontSize(
                                                        13,
                                                      ),
                                                      fontFamily: 'Inter',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: "msg_flavourful_twist"
                                                        .tr,
                                                    style: TextStyle(
                                                      color:
                                                          ColorConstant.gray900,
                                                      fontSize: getFontSize(
                                                        13,
                                                      ),
                                                      fontFamily: 'Inter',
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text:
                                                        "msg_enjoy_a_fresh_burst"
                                                            .tr,
                                                    style: TextStyle(
                                                      color:
                                                          ColorConstant.gray900,
                                                      fontSize: getFontSize(
                                                        13,
                                                      ),
                                                      fontFamily: 'Inter',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text:
                                                        "lbl_amazing_dishes".tr,
                                                    style: TextStyle(
                                                      color:
                                                          ColorConstant.gray900,
                                                      fontSize: getFontSize(
                                                        13,
                                                      ),
                                                      fontFamily: 'Inter',
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text:
                                                        "msg_add_tata_rock_salt"
                                                            .tr,
                                                    style: TextStyle(
                                                      color:
                                                          ColorConstant.gray900,
                                                      fontSize: getFontSize(
                                                        13,
                                                      ),
                                                      fontFamily: 'Inter',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text:
                                                        "msg_convenient_packaging"
                                                            .tr,
                                                    style: TextStyle(
                                                      color:
                                                          ColorConstant.gray900,
                                                      fontSize: getFontSize(
                                                        13,
                                                      ),
                                                      fontFamily: 'Inter',
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  BlocSelector<ScreenTwoBloc, ScreenTwoState,
                                      TextEditingController?>(
                                    selector: (state) =>
                                        state.groupfifteenController,
                                    builder: (context, groupfifteenController) {
                                      return CustomTextFormField(
                                        focusNode: FocusNode(),
                                        autofocus: true,
                                        controller: groupfifteenController,
                                        hintText: "lbl_product_reviews".tr,
                                        margin: getMargin(
                                          top: 20,
                                        ),
                                        suffix: Container(
                                          margin: getMargin(
                                            left: 30,
                                            top: 14,
                                            right: 13,
                                            bottom: 14,
                                          ),
                                          child: CustomImageView(
                                            svgPath: ImageConstant
                                                .imgIconsaxLinearArrowcircledown,
                                          ),
                                        ),
                                        suffixConstraints: BoxConstraints(
                                          maxHeight: getVerticalSize(
                                            48,
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                  BlocSelector<ScreenTwoBloc, ScreenTwoState,
                                      TextEditingController?>(
                                    selector: (state) =>
                                        state.groupfourteenController,
                                    builder:
                                        (context, groupfourteenController) {
                                      return CustomTextFormField(
                                        focusNode: FocusNode(),
                                        autofocus: true,
                                        controller: groupfourteenController,
                                        hintText: "msg_view_supply_details".tr,
                                        margin: getMargin(
                                          top: 20,
                                        ),
                                        textInputAction: TextInputAction.done,
                                        suffix: Container(
                                          margin: getMargin(
                                            left: 30,
                                            top: 14,
                                            right: 13,
                                            bottom: 14,
                                          ),
                                          child: CustomImageView(
                                            svgPath: ImageConstant
                                                .imgIconsaxLinearArrowcircledown,
                                          ),
                                        ),
                                        suffixConstraints: BoxConstraints(
                                          maxHeight: getVerticalSize(
                                            48,
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 20,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: getPadding(
                                            top: 5,
                                            bottom: 5,
                                          ),
                                          child: SingleChildScrollView(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "lbl_select_quantity".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterMedium13Black900,
                                                ),
                                                Container(
                                                  width: getHorizontalSize(
                                                    130,
                                                  ),
                                                  child: Text(
                                                    "msg_maximum_10_quantity"
                                                        .tr,
                                                    maxLines: null,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterMedium8,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          padding: getPadding(
                                            all: 9,
                                          ),
                                          decoration: AppDecoration
                                              .outlineGray60059
                                              .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder6,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CustomButton(
                                                child: CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgIconsaxboldminussquare,
                                                  height: getSize(
                                                    30,
                                                  ),
                                                  width: getSize(
                                                    30,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  left: 23,
                                                ),
                                                child: Text(
                                                  "lbl_1".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  style: AppStyle
                                                      .txtArchivoRomanBold20,
                                                ),
                                              ),
                                              CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgIconsaxboldaddsquare,
                                                height: getSize(
                                                  30,
                                                ),
                                                width: getSize(
                                                  30,
                                                ),
                                                margin: getMargin(
                                                  left: 23,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 20,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: CustomButton(
                                            height: getVerticalSize(
                                              48,
                                            ),
                                            text: "lbl_add_to_cart".tr,
                                            margin: getMargin(
                                              right: 10,
                                            ),
                                            child: null,
                                          ),
                                        ),
                                        Expanded(
                                          child: CustomButton(
                                            child: null,
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          FrameFourScreen()));
                                            },
                                            height: getVerticalSize(
                                              48,
                                            ),
                                            text: "lbl_buy_now".tr,
                                            margin: getMargin(
                                              left: 10,
                                            ),
                                            variant:
                                                ButtonVariant.FillOrange600,
                                            fontStyle: ButtonFontStyle
                                                .InterSemiBold13WhiteA700,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 20,
                                    ),
                                    child: Text(
                                      "msg_recommended_products".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterMedium13,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 10,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.imgEllipse3,
                                          height: getSize(
                                            63,
                                          ),
                                          width: getSize(
                                            63,
                                          ),
                                          radius: BorderRadius.circular(
                                            getHorizontalSize(
                                              31,
                                            ),
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgEllipse6,
                                          height: getSize(
                                            63,
                                          ),
                                          width: getSize(
                                            63,
                                          ),
                                          radius: BorderRadius.circular(
                                            getHorizontalSize(
                                              31,
                                            ),
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgEllipse7,
                                          height: getSize(
                                            63,
                                          ),
                                          width: getSize(
                                            63,
                                          ),
                                          radius: BorderRadius.circular(
                                            getHorizontalSize(
                                              31,
                                            ),
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgEllipse8,
                                          height: getSize(
                                            63,
                                          ),
                                          width: getSize(
                                            63,
                                          ),
                                          radius: BorderRadius.circular(
                                            getHorizontalSize(
                                              31,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 4,
                                      bottom: 146,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            width: getHorizontalSize(
                                              63,
                                            ),
                                            margin: getMargin(
                                              right: 10,
                                            ),
                                            child: Text(
                                              "msg_safola_soya_chunks".tr,
                                              maxLines: null,
                                              textAlign: TextAlign.center,
                                              style: AppStyle.txtInterMedium10,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            width: getHorizontalSize(
                                              63,
                                            ),
                                            margin: getMargin(
                                              left: 10,
                                              right: 10,
                                            ),
                                            child: Text(
                                              "lbl_tata_pink_salt".tr,
                                              maxLines: null,
                                              textAlign: TextAlign.center,
                                              style: AppStyle.txtInterMedium10,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            width: getHorizontalSize(
                                              63,
                                            ),
                                            margin: getMargin(
                                              left: 10,
                                              right: 10,
                                            ),
                                            child: Text(
                                              "lbl_tata_toor_dal".tr,
                                              maxLines: null,
                                              textAlign: TextAlign.center,
                                              style: AppStyle.txtInterMedium10,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            width: getHorizontalSize(
                                              63,
                                            ),
                                            margin: getMargin(
                                              left: 10,
                                            ),
                                            child: Text(
                                              "msg_dawat_rozana_rice".tr,
                                              maxLines: null,
                                              textAlign: TextAlign.center,
                                              style: AppStyle.txtInterMedium10,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
