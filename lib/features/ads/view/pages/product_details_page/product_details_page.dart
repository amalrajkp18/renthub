import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:rent_hub/core/constants/image_constants.dart';
import 'package:rent_hub/core/constants/ads/product_screen.dart';
import 'package:rent_hub/core/theme/app_theme.dart';
import 'package:rent_hub/core/theme/color_palette.dart';
import 'package:rent_hub/core/widgets/main_btn_widget.dart';
import 'package:rent_hub/core/widgets/rounded_btn_widget.dart';
import 'package:rent_hub/features/ads/controller/product_controller/product_controller.dart';
import 'package:rent_hub/features/ads/view/widgets/product_details/prodcut_details_widget.dart';
import 'package:rent_hub/features/ads/view/widgets/product_details/smooth_page_Indicator_wIdget.dart';

// Main widget that displays the product details page
class ProductDetailsPage extends ConsumerWidget {
  static const routePath = '/productsDetails';
  const ProductDetailsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Stack(
        children: [
          // PageView to show images
          SizedBox(
            height: context.spaces.space_900 * 4.2,
            width: double.infinity,
            child: PageView(
              controller: ref.watch(pageControllerProvider),
              children: [
                SvgPicture.asset(
                  ref.watch(imageConstantsProvider).imgOnboarding1,
                  // imageConstants.imgOnboarding1,
                  fit: BoxFit.cover,
                  // Debug border to ensure it's rendering
                ),
                SvgPicture.asset(
                  ref.watch(imageConstantsProvider).imgOnboarding1,
                  fit: BoxFit.cover,
                  // Debug border to ensure it's rendering
                ),
                SvgPicture.asset(
                  // imageConstants.imgOnboarding1,
                  ref.watch(imageConstantsProvider).imgOnboarding1,

                  fit: BoxFit.cover,
                  // Debug border to ensure it's rendering
                ),
                SvgPicture.asset(
                  // imageConstants.imgOnboarding1,
                  ref.watch(imageConstantsProvider).imgOnboarding1,

                  fit: BoxFit.cover,
                  // Debug border to ensure it's rendering
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: context.spaces.space_400,
                left: context.spaces.space_200,
                right: context.spaces.space_200),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RoundedIconButton(
                    onTap: () {
                      context.pop();
                    },
                    icon: Icons.chevron_left),
                RoundedIconButton(
                  onTap: () {},
                  icon: Icons.favorite,
                  backgroundColor: AppColorPalettes.white500,
                ),
              ],
            ),
          ),

          // SmoothPageIndicator to show the current page
          const SmoothPageIndicatorWIdget(),
          Align(
            // alignment: Alignment.bottomCenter,
            child: Expanded(
              child: ProductDetailsWidget(
                price: 123,
                userimage: "",
                onwername: '',
                productname: '',
                location: '',
                locationicon: Icons.abc,
                chaticon: Icons.abc,
                phoneicon: Icons.abc,
                productdetails: "",
                phoneonPressed: () {},
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(
            left: context.spaces.space_200, right: context.spaces.space_200),
        child: MainBtnWidget(
            onTap: () {},
            btnTxt: ref.watch(productScreenConstantsProvider).txtbtn),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
