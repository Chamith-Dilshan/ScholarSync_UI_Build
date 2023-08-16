import 'package:flutter/material.dart';
import 'package:scholarsync/constants/icon_constants.dart';
import 'package:scholarsync/constants/ui_constants.dart';
import 'package:scholarsync/features/widgets/academic_staff_page_tab.dart';
import 'package:scholarsync/features/widgets/lecturer_info.dart';

class AcademicStaffPage extends StatefulWidget {
  const AcademicStaffPage({super.key});

  @override
  State<AcademicStaffPage> createState() => _AcademicStaffPageState();
}

class _AcademicStaffPageState extends State<AcademicStaffPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  /*int _currentIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }*/

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIConstants.appBar(
        title: 'Academic Staff',
        fontSize: 22,
        fontWeight: FontWeight.w600,
        titleCenter: true,
        frontIcon: IconConstants.leftArrowIcon,
        backIcon: IconConstants.hamburgerMenuIcon,
        onFrontIconButtonpressed: () {
          /* Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const LogInPage()),
          );*/
        },
        onBackIconButtonpressed: () {
          /* Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const LogInPage()),
          );*/
        },
      ),
      body: Column(
        children: [
          AcademicStaffPageTabs(tabController: _tabController),
          const SizedBox(height: 8.0),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                ListView(
                  children: const [
                    LecturerInformation(
                      name: 'Lecturer 1',
                      email: 'lecturer1@example.com',
                      //have to add the images
                      photoAsset: 'assets/lecturer1.jpg',
                    ),
                    LecturerInformation(
                      name: 'Lecturer 2',
                      email: 'lecturer2@example.com',
                      //have to add the images
                      photoAsset: 'assets/lecturer2.jpg',
                    ),
                    LecturerInformation(
                      name: 'Lecturer 1',
                      email: 'lecturer1@example.com',
                      //have to add the images
                      photoAsset: 'assets/lecturer1.jpg',
                    ),
                    // Add more lecturer information boxes for department 1
                  ],
                ),
                ListView(
                  children: const [
                    LecturerInformation(
                      name: 'Lecturer 3',
                      email: 'lecturer3@example.com',
                      //have to add the images
                      photoAsset: 'assets/lecturer3.jpg',
                    ),
                    LecturerInformation(
                      name: 'Lecturer 4',
                      email: 'lecturer4@example.com',
                      //have to add the images
                      photoAsset: 'assets/lecturer4.jpg',
                    ),
                    // Add more lecturer information boxes for department 2
                  ],
                ),
                ListView(
                  children: const [
                    LecturerInformation(
                      name: 'Lecturer 5',
                      email: 'lecturer5@example.com',
                      //have to add the images
                      photoAsset: 'assets/lecturer5.jpg',
                    ),
                    LecturerInformation(
                      name: 'Lecturer 6',
                      email: 'lecturer6@example.com',
                      //have to add the images
                      photoAsset: 'assets/lecturer6.jpg',
                    ),
                    // Add more lecturer information boxes for department 3
                  ],
                ),
                ListView(
                  children: const [
                    LecturerInformation(
                      name: 'Lecturer 7',
                      email: 'lecturer7@example.com',
                      //have to add the images
                      photoAsset: 'assets/lecturer7.jpg',
                    ),
                    LecturerInformation(
                      name: 'Lecturer 8',
                      email: 'lecturer8@example.com',
                      //have to add the images
                      photoAsset: 'assets/lecturer8.jpg',
                    ),
                    // Add more lecturer information boxes for department 4
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
     /* bottomNavigationBar: MyBottomNavigationBar(
        currentIndex: _currentIndex,
        onTabTapped: _onTabTapped,
      ),*/
    );
  }
}
