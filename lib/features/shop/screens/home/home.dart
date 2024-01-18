import 'package:ecommerece/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:ecommerece/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ecommerece/common/widgets/texts/section_heading.dart';
import 'package:ecommerece/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:ecommerece/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            EPrimaryHeaderContent(
              child: Column(
                children: [
                  //appbar
                  EHomeAppBar(),
                  SizedBox(
                    height: ESizes.spaceBtwSection,
                  ),

                  //search bar
                  ESearchContainer(
                    text: "search in store",
                  ),
                  SizedBox(
                    height: ESizes.spaceBtwSection,
                  ),

                  //categories section

                  Padding(
                    padding: EdgeInsets.only(left: ESizes.defaultSpace),
                    child: Column(
                      children: [
                        //categories heading
                        ESectionHeading(
                          text: 'Popular Categories',
                          showButton: false,
                        ),
                        SizedBox(
                          height: ESizes.spaceBtwItem,
                        ),
                        
                        //categories heading
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
