import 'package:flutter/material.dart';

import '../../../../common/widgets/header_container.dart';
import '../../../../common/widgets/section_heading.dart';
import '../../../../utils/constants/texts.dart';
import 'widgets/home_appbar.dart';
import 'widgets/home_categories_area.dart';
import 'widgets/home_search_area.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  HomeAppbar(),
                  HomeSearchArea(),
                  SizedBox(
                    height: 30,
                  ),
                  SectionHeading(
                    title: Texts.homePopularCategories,
                    showActionButton: false,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  HomeCategoriesArea(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
