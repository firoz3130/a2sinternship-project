import 'bloc/frame_four_bloc.dart';
import 'models/frame_four_model.dart';
import 'package:flutter/material.dart';
import 'package:a2sinternshipp/core/app_export.dart';
import 'package:a2sinternshipp/widgets/custom_radio_button.dart';

class FrameFourScreen extends StatelessWidget {
  const FrameFourScreen({super.key});

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameFourBloc>(
      create: (context) => FrameFourBloc(FrameFourState(
        frameFourModelObj: FrameFourModel(),
      ))
        ..add(FrameFourInitialEvent()),
      child: const FrameFourScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    padding: getPadding(
                      top: 28,
                    ),
                    child: Padding(
                      padding: getPadding(
                        left: 24,
                        right: 41,
                        bottom: 29,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_supply_details".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterMedium13,
                          ),
                          Padding(
                            padding: getPadding(
                              top: 4,
                            ),
                            child: Text(
                              "lbl_production".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtArchivoRomanBold24,
                            ),
                          ),
                          Container(
                            height: getVerticalSize(
                              206,
                            ),
                            width: getHorizontalSize(
                              283,
                            ),
                            margin: getMargin(
                              top: 13,
                            ),
                            child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 6,
                                    ),
                                    child: SizedBox(
                                      height: getVerticalSize(
                                        206,
                                      ),
                                      child: VerticalDivider(
                                        width: getHorizontalSize(
                                          4,
                                        ),
                                        thickness: getVerticalSize(
                                          4,
                                        ),
                                        color: ColorConstant.orange600,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Padding(
                                    padding: getPadding(
                                      top: 10,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        BlocSelector<FrameFourBloc,
                                            FrameFourState, String?>(
                                          selector: (state) => state.radioGroup,
                                          builder: (context, radioGroup) {
                                            return CustomRadioButton(
                                              text: "msg_collection_of_raw".tr,
                                              iconSize: getHorizontalSize(
                                                16,
                                              ),
                                              value:
                                                  "msg_collection_of_raw".tr ??
                                                      "",
                                              groupValue: radioGroup,
                                              fontStyle:
                                                  RadioFontStyle.InterMedium13,
                                              onChange: (value) {
                                                context
                                                    .read<FrameFourBloc>()
                                                    .add(ChangeRadioButtonEvent(
                                                        value: value));
                                              },
                                            );
                                          },
                                        ),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Padding(
                                            padding: getPadding(
                                              left: 24,
                                              top: 11,
                                              right: 4,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                CustomImageView(
                                                  imagePath: ImageConstant
                                                      .img59255rawsalt1,
                                                  height: getVerticalSize(
                                                    48,
                                                  ),
                                                  width: getHorizontalSize(
                                                    68,
                                                  ),
                                                  radius: BorderRadius.circular(
                                                    getHorizontalSize(
                                                      4,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    left: 14,
                                                    top: 1,
                                                  ),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        "msg_raw_salt_from_bhavnagar"
                                                            .tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterRegular11,
                                                      ),
                                                      Padding(
                                                        padding: getPadding(
                                                          top: 1,
                                                        ),
                                                        child: Text(
                                                          "msg_date_12_03_2023"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular11,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: getPadding(
                                                          top: 2,
                                                        ),
                                                        child: Text(
                                                          "msg_location_gujarat"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular11,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 24,
                                          ),
                                          child: BlocSelector<FrameFourBloc,
                                              FrameFourState, String?>(
                                            selector: (state) =>
                                                state.radioGroup1,
                                            builder: (context, radioGroup1) {
                                              return CustomRadioButton(
                                                text:
                                                    "msg_received_raw_material"
                                                        .tr,
                                                iconSize: getHorizontalSize(
                                                  16,
                                                ),
                                                value:
                                                    "msg_received_raw_material"
                                                            .tr ??
                                                        "",
                                                groupValue: radioGroup1,
                                                margin: getMargin(
                                                  top: 24,
                                                ),
                                                fontStyle: RadioFontStyle
                                                    .InterMedium13,
                                                onChange: (value) {
                                                  context
                                                      .read<FrameFourBloc>()
                                                      .add(
                                                          ChangeRadioButton1Event(
                                                              value: value));
                                                },
                                              );
                                            },
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Padding(
                                            padding: getPadding(
                                              left: 24,
                                              top: 11,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                CustomImageView(
                                                  imagePath: ImageConstant
                                                      .img59255rawsalt2,
                                                  height: getVerticalSize(
                                                    48,
                                                  ),
                                                  width: getHorizontalSize(
                                                    68,
                                                  ),
                                                  radius: BorderRadius.circular(
                                                    getHorizontalSize(
                                                      4,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    left: 14,
                                                    top: 1,
                                                  ),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        "msg_received_raw_salt"
                                                            .tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterRegular11,
                                                      ),
                                                      Padding(
                                                        padding: getPadding(
                                                          top: 1,
                                                        ),
                                                        child: Text(
                                                          "msg_date_19_03_2023"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular11,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: getPadding(
                                                          top: 2,
                                                        ),
                                                        child: Text(
                                                          "msg_location_abc".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular11,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 24,
                            ),
                            child: Text(
                              "lbl_manufacturing".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtArchivoRomanBold24,
                            ),
                          ),
                          Container(
                            height: getVerticalSize(
                              206,
                            ),
                            width: getHorizontalSize(
                              294,
                            ),
                            margin: getMargin(
                              top: 11,
                            ),
                            child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 6,
                                    ),
                                    child: SizedBox(
                                      height: getVerticalSize(
                                        206,
                                      ),
                                      child: VerticalDivider(
                                        width: getHorizontalSize(
                                          4,
                                        ),
                                        thickness: getVerticalSize(
                                          4,
                                        ),
                                        color: ColorConstant.orange600,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Padding(
                                    padding: getPadding(
                                      top: 10,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        BlocSelector<FrameFourBloc,
                                            FrameFourState, String?>(
                                          selector: (state) =>
                                              state.radioGroup2,
                                          builder: (context, radioGroup2) {
                                            return CustomRadioButton(
                                              text: "lbl_processed_salt".tr,
                                              iconSize: getHorizontalSize(
                                                16,
                                              ),
                                              value:
                                                  "lbl_processed_salt".tr ?? "",
                                              groupValue: radioGroup2,
                                              fontStyle:
                                                  RadioFontStyle.InterMedium13,
                                              onChange: (value) {
                                                context
                                                    .read<FrameFourBloc>()
                                                    .add(
                                                        ChangeRadioButton2Event(
                                                            value: value));
                                              },
                                            );
                                          },
                                        ),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Padding(
                                            padding: getPadding(
                                              left: 24,
                                              top: 11,
                                              right: 5,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                CustomImageView(
                                                  imagePath: ImageConstant
                                                      .img59255rawsalt1,
                                                  height: getVerticalSize(
                                                    48,
                                                  ),
                                                  width: getHorizontalSize(
                                                    68,
                                                  ),
                                                  radius: BorderRadius.circular(
                                                    getHorizontalSize(
                                                      4,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    left: 14,
                                                    top: 2,
                                                  ),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        "msg_salt_is_processed"
                                                            .tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterRegular11,
                                                      ),
                                                      Padding(
                                                        padding: getPadding(
                                                          top: 1,
                                                        ),
                                                        child: Text(
                                                          "msg_date_21_03_2023"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular11,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: getPadding(
                                                          top: 2,
                                                        ),
                                                        child: Text(
                                                          "msg_location_abc".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular11,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 24,
                                          ),
                                          child: BlocSelector<FrameFourBloc,
                                              FrameFourState, String?>(
                                            selector: (state) =>
                                                state.radioGroup3,
                                            builder: (context, radioGroup3) {
                                              return CustomRadioButton(
                                                text: "msg_packaging_of_product"
                                                    .tr,
                                                iconSize: getHorizontalSize(
                                                  16,
                                                ),
                                                value:
                                                    "msg_packaging_of_product"
                                                            .tr ??
                                                        "",
                                                groupValue: radioGroup3,
                                                margin: getMargin(
                                                  top: 24,
                                                ),
                                                fontStyle: RadioFontStyle
                                                    .InterMedium13,
                                                onChange: (value) {
                                                  context
                                                      .read<FrameFourBloc>()
                                                      .add(
                                                          ChangeRadioButton3Event(
                                                              value: value));
                                                },
                                              );
                                            },
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Padding(
                                            padding: getPadding(
                                              left: 24,
                                              top: 10,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                CustomImageView(
                                                  imagePath: ImageConstant
                                                      .img59255rawsalt248x68,
                                                  height: getVerticalSize(
                                                    48,
                                                  ),
                                                  width: getHorizontalSize(
                                                    68,
                                                  ),
                                                  radius: BorderRadius.circular(
                                                    getHorizontalSize(
                                                      4,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    left: 14,
                                                    top: 2,
                                                  ),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        "msg_product_is_packed"
                                                            .tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterRegular11,
                                                      ),
                                                      Padding(
                                                        padding: getPadding(
                                                          top: 1,
                                                        ),
                                                        child: Text(
                                                          "msg_date_21_03_2023"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular11,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: getPadding(
                                                          top: 2,
                                                        ),
                                                        child: Text(
                                                          "msg_location_abc2"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular11,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 25,
                            ),
                            child: Text(
                              "lbl_delivery".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtArchivoRomanBold24,
                            ),
                          ),
                          Container(
                            height: getVerticalSize(
                              206,
                            ),
                            width: getHorizontalSize(
                              280,
                            ),
                            margin: getMargin(
                              top: 10,
                            ),
                            child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 6,
                                    ),
                                    child: SizedBox(
                                      height: getVerticalSize(
                                        206,
                                      ),
                                      child: VerticalDivider(
                                        width: getHorizontalSize(
                                          4,
                                        ),
                                        thickness: getVerticalSize(
                                          4,
                                        ),
                                        color: ColorConstant.orange600,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Padding(
                                    padding: getPadding(
                                      top: 10,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        BlocSelector<FrameFourBloc,
                                            FrameFourState, String?>(
                                          selector: (state) =>
                                              state.radioGroup4,
                                          builder: (context, radioGroup4) {
                                            return CustomRadioButton(
                                              text: "msg_delivered_to_store".tr,
                                              iconSize: getHorizontalSize(
                                                16,
                                              ),
                                              value:
                                                  "msg_delivered_to_store".tr ??
                                                      "",
                                              groupValue: radioGroup4,
                                              fontStyle:
                                                  RadioFontStyle.InterMedium13,
                                              onChange: (value) {
                                                context
                                                    .read<FrameFourBloc>()
                                                    .add(
                                                        ChangeRadioButton4Event(
                                                            value: value));
                                              },
                                            );
                                          },
                                        ),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Padding(
                                            padding: getPadding(
                                              left: 24,
                                              top: 11,
                                              right: 4,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                CustomImageView(
                                                  imagePath: ImageConstant
                                                      .img59255rawsalt148x68,
                                                  height: getVerticalSize(
                                                    48,
                                                  ),
                                                  width: getHorizontalSize(
                                                    68,
                                                  ),
                                                  radius: BorderRadius.circular(
                                                    getHorizontalSize(
                                                      4,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    left: 14,
                                                  ),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        "msg_delivered_to_kanta"
                                                            .tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterRegular11,
                                                      ),
                                                      Padding(
                                                        padding: getPadding(
                                                          top: 2,
                                                        ),
                                                        child: Text(
                                                          "msg_date_28_03_2023"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular11,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: getPadding(
                                                          top: 2,
                                                        ),
                                                        child: Text(
                                                          "msg_location_karol"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular11,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 23,
                                          ),
                                          child: BlocSelector<FrameFourBloc,
                                              FrameFourState, String?>(
                                            selector: (state) =>
                                                state.radioGroup5,
                                            builder: (context, radioGroup5) {
                                              return CustomRadioButton(
                                                text:
                                                    "msg_delivered_to_customer"
                                                        .tr,
                                                iconSize: getHorizontalSize(
                                                  16,
                                                ),
                                                value:
                                                    "msg_delivered_to_customer"
                                                            .tr ??
                                                        "",
                                                groupValue: radioGroup5,
                                                margin: getMargin(
                                                  top: 23,
                                                ),
                                                fontStyle: RadioFontStyle
                                                    .InterMedium13,
                                                onChange: (value) {
                                                  context
                                                      .read<FrameFourBloc>()
                                                      .add(
                                                          ChangeRadioButton5Event(
                                                              value: value));
                                                },
                                              );
                                            },
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Padding(
                                            padding: getPadding(
                                              left: 24,
                                              top: 11,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgCorrectsuccess,
                                                  height: getSize(
                                                    48,
                                                  ),
                                                  width: getSize(
                                                    48,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    top: 2,
                                                  ),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        "msg_delivered_to_mr"
                                                            .tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterRegular11,
                                                      ),
                                                      Padding(
                                                        padding: getPadding(
                                                          top: 1,
                                                        ),
                                                        child: Text(
                                                          "msg_date_07_04_2023"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular11,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: getPadding(
                                                          top: 2,
                                                        ),
                                                        child: Text(
                                                          "msg_location_karol"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular11,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
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
    );
  }
}
