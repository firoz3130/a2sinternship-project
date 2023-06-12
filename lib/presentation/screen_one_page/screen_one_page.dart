import 'package:cloud_firestore/cloud_firestore.dart';

import 'bloc/screen_one_bloc.dart';
import 'models/screen_one_model.dart';
import 'package:flutter/material.dart';
import 'package:a2sinternshipp/core/app_export.dart';
import 'package:a2sinternshipp/widgets/app_bar/appbar_subtitle.dart';
import 'package:a2sinternshipp/widgets/app_bar/custom_app_bar.dart';
import 'package:a2sinternshipp/widgets/custom_search_view.dart';

class ScreenOnePage extends StatelessWidget {
  // final products = FirebaseFirestore.instance.collection('products');
  // final TextEditingController searchController = TextEditingController();
  // final QuerySnapshot querySnapshot =
  //     FirebaseFirestore.instance.collection('products').get() as QuerySnapshot;
  late final List<String> itemNames;
  CollectionReference _products =
      FirebaseFirestore.instance.collection('products');
  static Widget builder(BuildContext context) {
    return BlocProvider<ScreenOneBloc>(
      create: (context) => ScreenOneBloc(ScreenOneState(
        screenOneModelObj: ScreenOneModel(),
      ))
        ..add(ScreenOneInitialEvent()),
      child: ScreenOnePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    // _products.get();
    // _products.snapshots();
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray100,
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            decoration: AppDecoration.fillGray100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  child: Container(
                    width: double.maxFinite,
                    child: Container(
                      padding: getPadding(
                        top: 64,
                        bottom: 64,
                      ),
                      decoration:
                          AppDecoration.gradientOrange600Orange300.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL24,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomAppBar(
                            height: getVerticalSize(
                              58,
                            ),
                            leadingWidth: 82,
                            leading: CustomImageView(
                              imagePath: ImageConstant.imgEllipse1,
                              height: getSize(
                                58,
                              ),
                              width: getSize(
                                58,
                              ),
                              radius: BorderRadius.circular(
                                getHorizontalSize(
                                  29,
                                ),
                              ),
                              margin: getMargin(
                                left: 24,
                              ),
                            ),
                            centerTitle: true,
                            title: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "msg_shivam_kumar_varshney".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterSemiBold15,
                                  ),
                                ),
                                AppbarSubtitle(
                                  text: "msg_shivamvarshney30_gmail_com".tr,
                                  margin: getMargin(
                                    top: 3,
                                    right: 1,
                                  ),
                                ),
                                AppbarSubtitle(
                                  text: "lbl_91_7983872298".tr,
                                  margin: getMargin(
                                    top: 1,
                                    right: 79,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          BlocSelector<ScreenOneBloc, ScreenOneState,
                              TextEditingController?>(
                            selector: (state) => state.searchController,
                            builder: (context, searchController) {
                              return CustomSearchView(
                                focusNode: FocusNode(),
                                autofocus: true,
                                controller: searchController,
                                hintText: "msg_search_your_product".tr,
                                margin: getMargin(
                                  left: 24,
                                  top: 16,
                                  right: 24,
                                  bottom: 100,
                                ),
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
                                suffix: Padding(
                                  padding: EdgeInsets.only(
                                    right: getHorizontalSize(
                                      15,
                                    ),
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      // String searchQuery =
                                      //     searchController!.text.toLowerCase();
                                      // FirebaseFirestore.instance
                                      //     .collection("products")
                                      //     .where("name",
                                      //         isGreaterThanOrEqualTo:
                                      //             searchQuery)
                                      //     .where("name",
                                      //         isLessThan:
                                      //             searchQuery + "\uf8ff")
                                      //     .getDocuments()
                                      //     .then((querySnapshot) {
                                      //   // Handle the search results
                                      //   List<Product> products = [];
                                      //   querySnapshot.documents
                                      //       .forEach((documentSnapshot) {
                                      //     Product product =
                                      //         Product.fromSnapshot(
                                      //             documentSnapshot);
                                      //     products.add(product);
                                      //   });

                                      //   // Update the UI with the search results
                                      //   // ...
                                      // }).catchError((error) {
                                      //   // Handle any errors that occur during the search
                                      //   // ...
                                      // });
                                    },
                                    icon: Icon(
                                      Icons.clear,
                                      color: Colors.grey.shade600,
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.maxFinite,
                  child: Container(
                    padding: getPadding(
                      left: 24,
                      top: 27,
                      right: 24,
                      bottom: 27,
                    ),
                    decoration: AppDecoration.fillWhiteA700.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL30,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "msg_my_wallet_balance".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterMedium13,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 7,
                          ),
                          child: Text(
                            "lbl_rs_2_500".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtArchivoRomanBold32,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 15,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Container(
                                  margin: getMargin(
                                    right: 8,
                                  ),
                                  padding: getPadding(
                                    left: 18,
                                    top: 15,
                                    right: 18,
                                    bottom: 15,
                                  ),
                                  decoration:
                                      AppDecoration.fillGray10001.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder6,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomImageView(
                                        svgPath:
                                            ImageConstant.imgAddtosvgrepocom,
                                        height: getSize(
                                          32,
                                        ),
                                        width: getSize(
                                          32,
                                        ),
                                      ),
                                      Container(
                                        width: getHorizontalSize(
                                          72,
                                        ),
                                        margin: getMargin(
                                          left: 8,
                                        ),
                                        child: Text(
                                          "msg_add_money_to_wallet".tr,
                                          maxLines: null,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtInterMedium13Gray900,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  margin: getMargin(
                                    left: 8,
                                  ),
                                  padding: getPadding(
                                    left: 18,
                                    top: 15,
                                    right: 18,
                                    bottom: 15,
                                  ),
                                  decoration:
                                      AppDecoration.fillGray10001.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder6,
                                  ),
                                  child: Row(
                                    children: [
                                      CustomImageView(
                                        svgPath: ImageConstant
                                            .imgReceiptsearchsvgrepocom,
                                        height: getSize(
                                          32,
                                        ),
                                        width: getSize(
                                          32,
                                        ),
                                      ),
                                      Container(
                                        width: getHorizontalSize(
                                          65,
                                        ),
                                        margin: getMargin(
                                          left: 8,
                                        ),
                                        child: Text(
                                          "msg_my_wallet_statement".tr,
                                          maxLines: null,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtInterMedium13Gray900,
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
                            top: 23,
                          ),
                          child: Text(
                            "msg_my_previous_orders".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterMedium13,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 10,
                          ),
                          child: Flex(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            // gap between lines
                            direction: Axis.horizontal,
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
                        Padding(
                          padding: getPadding(
                            top: 23,
                          ),
                          child: Text(
                            "msg_my_offers_deals".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterMedium13,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 10,
                            bottom: 5,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: getPadding(
                                    right: 10,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgEllipse863x63,
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
                                      Container(
                                        width: getHorizontalSize(
                                          57,
                                        ),
                                        margin: getMargin(
                                          top: 4,
                                        ),
                                        child: Text(
                                          "msg_spectacular_deals".tr,
                                          maxLines: null,
                                          textAlign: TextAlign.center,
                                          style: AppStyle.txtInterMedium10,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: getPadding(
                                    left: 10,
                                    right: 10,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgEllipse763x63,
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
                                      Container(
                                        width: getHorizontalSize(
                                          44,
                                        ),
                                        margin: getMargin(
                                          top: 4,
                                        ),
                                        child: Text(
                                          "msg_get_extra_5_off".tr,
                                          maxLines: null,
                                          textAlign: TextAlign.center,
                                          style: AppStyle.txtInterMedium10,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: getPadding(
                                    left: 10,
                                    right: 10,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgEllipse663x63,
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
                                      Container(
                                        width: getHorizontalSize(
                                          39,
                                        ),
                                        margin: getMargin(
                                          top: 4,
                                        ),
                                        child: Text(
                                          "msg_get_flat_20_off".tr,
                                          maxLines: null,
                                          textAlign: TextAlign.center,
                                          style: AppStyle.txtInterMedium10,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: getPadding(
                                    left: 10,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgEllipse363x63,
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
                                      Container(
                                        width: getHorizontalSize(
                                          44,
                                        ),
                                        margin: getMargin(
                                          top: 4,
                                        ),
                                        child: Text(
                                          "msg_get_extra_10_off".tr,
                                          maxLines: null,
                                          textAlign: TextAlign.center,
                                          style: AppStyle.txtInterMedium10,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Product {}

Stream<List<String>> getItemNamesStream() {
  return FirebaseFirestore.instance.collection('products').snapshots().map(
      (querySnapshot) =>
          querySnapshot.docs.map((doc) => doc['name'] as String).toList());
}
