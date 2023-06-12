import 'bloc/frame_four_bloc.dart';
import 'models/frame_four_model.dart';
import 'package:flutter/material.dart';
import 'package:a2sinternshipp/core/app_export.dart';
import 'package:a2sinternshipp/widgets/custom_radio_button.dart';

class FrameFourScreen extends StatelessWidget {
  FrameFourScreen({Key? key}) : super(key: key);
  String radioGroup = "";

  String radioGroup1 = "";

  String radioGroup2 = "";

  String radioGroup3 = "";

  String radioGroup4 = "";

  String radioGroup5 = "";

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameFourBloc>(
      create: (context) => FrameFourBloc(FrameFourState(
        frameFourModelObj: FrameFourModel(),
      ))
        ..add(FrameFourInitialEvent()),
      child: FrameFourScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
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
                          "Supply Details",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterMedium13,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 4,
                          ),
                          child: Text(
                            "Production",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtArchivoRomanBold24,
                          ),
                        ),
                        _PMD(
                          h1: "Collection of Raw Material",
                          h11: "Raw salt from Bava Nagar, Gujarat",
                          h11Date: "21/03/2002",
                          h11Location: "Gujarat",
                          h2: "Received Raw Material",
                          h22: "Received Raw salt for production",
                          h22Date: "21/03/2023",
                          h22Location: "ABC,Salt Factory,Delhi",
                          img1: ImageConstant.img59255rawsalt1,
                          img2: ImageConstant.img59255rawsalt2,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 24,
                          ),
                          child: Text(
                            "Manufacturing",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtArchivoRomanBold24,
                          ),
                        ),
                        _PMD(
                          h1: "Processed Salt",
                          h11: "Salt is produced and ready to supply",
                          h11Date: "21/03/2002",
                          h11Location: "ABC,Salt Factory,Delhi",
                          h2: "Packaging of Product",
                          h22: "Product is packed and delivered",
                          h22Date: "21/03/2022",
                          h22Location: "ABC,Salt Factory,Delhi",
                          img1: ImageConstant.img59255rawsalt1,
                          img2: ImageConstant.img59255rawsalt248x68,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 25,
                          ),
                          child: Text(
                            "Delivery",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtArchivoRomanBold24,
                          ),
                        ),
                        _PMD(
                          h1: "Delivered to Store",
                          h11: "Delivered to the Kanta General Store",
                          h11Date: "28/03/2022",
                          h11Location: "KarolBagh,Delhi",
                          h2: "Delivered to Customer",
                          h22: "Delivered to Mr. Shivam Varshney",
                          h22Date: "07/04/2023",
                          h22Location: "KarolBagh,Delhi",
                          img1: ImageConstant.img59255rawsalt148x68,
                          img2: ImageConstant.imgCorrectsuccess,
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

class _PMD extends StatelessWidget {
  final String h1;
  final String h11;
  final String h11Date;
  final String h11Location;
  final String h2;
  final String h22;
  final String h22Date;
  final String h22Location;
  final String img1;
  final String img2;

  final String radioGroup = "";

  final String radioGroup1 = "";

  final String radioGroup2 = "";

  final String radioGroup3 = "";

  final String radioGroup4 = "";

  final String radioGroup5 = "";
  const _PMD({
    required this.h1,
    required this.h11,
    required this.h11Date,
    required this.h11Location,
    required this.h2,
    required this.h22,
    required this.h22Date,
    required this.h22Location,
    required this.img1,
    required this.img2,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return Container(
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
            child: SingleChildScrollView(
              child: Padding(
                padding: getPadding(
                  top: 10,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomRadioButton(
                      text: h11,
                      iconSize: getHorizontalSize(
                        16,
                      ),
                      //value: "Delivered to Store",
                      groupValue: radioGroup4,
                      fontStyle: RadioFontStyle.InterMedium13,
                      // onChange: (value) {
                      //   //radioGroup4 = value;
                      // },
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
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.img59255rawsalt148x68,
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    h11,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular11,
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 2,
                                    ),
                                    child: Text(
                                      "Date : $h11Date",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterRegular11,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 2,
                                    ),
                                    child: Text(
                                      "Location : $h11Location",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterRegular11,
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
                      child: CustomRadioButton(
                        text: h2,
                        iconSize: getHorizontalSize(
                          16,
                        ),
                        //value: "Delivered to Customer",
                        groupValue: radioGroup5,
                        margin: getMargin(
                          top: 23,
                        ),
                        fontStyle: RadioFontStyle.InterMedium13,
                        // onChange: (value) {
                        //   //radioGroup5 = value;
                        // },
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgCorrectsuccess,
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    h22,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular11,
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 1,
                                    ),
                                    child: Text(
                                      "Date : $h22Date",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterRegular11,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 2,
                                    ),
                                    child: Text(
                                      "Location : $h22Location",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterRegular11,
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
          ),
        ],
      ),
    );
  }
}
