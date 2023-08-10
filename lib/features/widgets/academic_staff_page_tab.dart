import 'package:flutter/material.dart';
import 'package:scholarsync/theme/palette.dart';

class AcademicStaffPageTabs extends StatelessWidget {
  final TabController tabController;

  const AcademicStaffPageTabs({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: PaletteLightMode.transparentColor,
      margin: const EdgeInsets.symmetric(vertical: 50),
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: TabBar(
        controller: tabController,
        labelColor: PaletteLightMode.titleColor,
        // Set the color of the selected tab's text
        unselectedLabelColor: PaletteLightMode.titleColor,
        // Set the color of unselected tabs' text
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: PaletteLightMode.secondaryGreenColor,
          // Set the background color of the selected tab indicator
        ),
        indicatorSize: TabBarIndicatorSize.tab,
        // Set the size of the indicator to match the tab's size
        tabs: const [
          Tab(text: 'DS'),
          Tab(text: 'NS'),
          Tab(text: 'CSSE'),
          Tab(text: 'ISS'),
        ],
      ),
    );
  }
}
