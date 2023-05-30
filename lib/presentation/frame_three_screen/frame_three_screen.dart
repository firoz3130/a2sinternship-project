import 'bloc/frame_three_bloc.dart';
import 'models/frame_three_model.dart';
import 'package:flutter/material.dart';
import 'package:a2sinternshipp/core/app_export.dart';
import 'package:a2sinternshipp/widgets/custom_button.dart';
import 'package:a2sinternshipp/widgets/custom_text_form_field.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FrameThreeScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<FrameThreeBloc>(
      create: (context) => FrameThreeBloc(FrameThreeState(
        frameThreeModelObj: FrameThreeModel(),
      ))
        ..add(FrameThreeInitialEvent()),
      child: FrameThreeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    padding: getPadding(
                      top: 27,
                    ),
                    child: Padding(
                      padding: getPadding(
                        left: 24,
                        right: 24,
                        bottom: 40,
                      ),
                      child: Column(
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
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgRectangle7,
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
                                    imagePath: ImageConstant.imgRectangle8,
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
                                    imagePath: ImageConstant.imgRectangle9,
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
                                  activeDotColor: ColorConstant.orange600,
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
                                  style: AppStyle.txtArchivoRomanRegular24,
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 11,
                                  ),
                                  child: Text(
                                    "lbl_rs_96".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtArchivoRomanBold24,
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
                                    style: AppStyle.txtArchivoRomanRegular13,
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
                              decoration:
                                  AppDecoration.outlineGray60059.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder6,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      top: 2,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: getPadding(
                                            top: 2,
                                            bottom: 1,
                                          ),
                                          child: Text(
                                            "lbl_product_details".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterMedium13,
                                          ),
                                        ),
                                        CustomImageView(
                                          svgPath:
                                              ImageConstant.imgIconsaxlinear,
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
                                            text: "msg_authentic_pure2".tr,
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                13,
                                              ),
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          TextSpan(
                                            text: "msg_tata_salt_rock_salt".tr,
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                13,
                                              ),
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          TextSpan(
                                            text:
                                                "msg_with_natural_minerals".tr,
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                13,
                                              ),
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          TextSpan(
                                            text: "msg_tata_rock_salt_has".tr,
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                13,
                                              ),
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          TextSpan(
                                            text: "msg_flavourful_twist".tr,
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                13,
                                              ),
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          TextSpan(
                                            text: "msg_enjoy_a_fresh_burst".tr,
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                13,
                                              ),
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          TextSpan(
                                            text: "lbl_amazing_dishes".tr,
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                13,
                                              ),
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          TextSpan(
                                            text: "msg_add_tata_rock_salt".tr,
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                13,
                                              ),
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          TextSpan(
                                            text: "msg_convenient_packaging".tr,
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                13,
                                              ),
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w600,
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
                          SingleChildScrollView(
                            child: BlocSelector<FrameThreeBloc, FrameThreeState,
                                TextEditingController?>(
                              selector: (state) => state.groupfiveController,
                              builder: (context, groupfiveController) {
                                return CustomTextFormField(
                                  focusNode: FocusNode(),
                                  autofocus: true,
                                  controller: groupfiveController,
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
                          ),
                          SingleChildScrollView(
                            child: BlocSelector<FrameThreeBloc, FrameThreeState,
                                TextEditingController?>(
                              selector: (state) =>
                                  state.supplydetailsController,
                              builder: (context, supplydetailsController) {
                                return CustomTextFormField(
                                  focusNode: FocusNode(),
                                  autofocus: true,
                                  controller: supplydetailsController,
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
                                          .imgIconsaxLinearArrowcircledownOrange600,
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
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Padding(
                              padding: getPadding(
                                top: 20,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      top: 8,
                                      bottom: 9,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "lbl_select_quantity".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtInterMedium13Black900,
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 4,
                                          ),
                                          child: Text(
                                            "msg_maximum_10_quantity".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterMedium8,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: getPadding(
                                      all: 9,
                                    ),
                                    decoration:
                                        AppDecoration.outlineGray60059.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder6,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CustomImageView(
                                          svgPath: ImageConstant
                                              .imgIconsaxboldminussquare,
                                          height: getSize(
                                            30,
                                          ),
                                          width: getSize(
                                            30,
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 38,
                                            top: 4,
                                            bottom: 3,
                                          ),
                                          child: Text(
                                            "lbl_1".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtArchivoRomanBold20,
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
                                            left: 37,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Padding(
                              padding: getPadding(
                                top: 20,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
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
                                    ),
                                  ),
                                  Expanded(
                                    child: CustomButton(
                                      height: getVerticalSize(
                                        48,
                                      ),
                                      text: "lbl_buy_now".tr,
                                      margin: getMargin(
                                        left: 10,
                                      ),
                                      variant: ButtonVariant.FillOrange600,
                                      fontStyle: ButtonFontStyle
                                          .InterSemiBold13WhiteA700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 22,
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
                              top: 11,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              left: 3,
                              top: 3,
                              right: 2,
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: getHorizontalSize(
                                    56,
                                  ),
                                  child: Text(
                                    "msg_safola_soya_chunks".tr,
                                    maxLines: null,
                                    textAlign: TextAlign.center,
                                    style: AppStyle.txtInterMedium10,
                                  ),
                                ),
                                Container(
                                  width: getHorizontalSize(
                                    44,
                                  ),
                                  margin: getMargin(
                                    left: 32,
                                  ),
                                  child: Text(
                                    "lbl_tata_pink_salt".tr,
                                    maxLines: null,
                                    textAlign: TextAlign.center,
                                    style: AppStyle.txtInterMedium10,
                                  ),
                                ),
                                Container(
                                  width: getHorizontalSize(
                                    39,
                                  ),
                                  margin: getMargin(
                                    left: 40,
                                  ),
                                  child: Text(
                                    "lbl_tata_toor_dal".tr,
                                    maxLines: null,
                                    textAlign: TextAlign.center,
                                    style: AppStyle.txtInterMedium10,
                                  ),
                                ),
                                Container(
                                  width: getHorizontalSize(
                                    58,
                                  ),
                                  margin: getMargin(
                                    left: 34,
                                  ),
                                  child: Text(
                                    "msg_dawat_rozana_rice".tr,
                                    maxLines: null,
                                    textAlign: TextAlign.center,
                                    style: AppStyle.txtInterMedium10,
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
    );
  }
}
