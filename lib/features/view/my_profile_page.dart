import 'package:flutter/material.dart';
import 'package:scholarsync/common/project_box.dart';
import 'package:scholarsync/constants/icon_constants.dart';
import 'package:scholarsync/constants/ui_constants.dart';
import 'package:scholarsync/features/widgets/profile_info.dart';
import 'package:scholarsync/theme/palette.dart';

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({super.key});

  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
 /* int _currentIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIConstants.appBar(
        title: 'My Profile',
        fontSize: 22,
        fontWeight: FontWeight.w600,
        titleCenter: false,
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         const Padding(
            padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
            child: ProfileInfo(),
          ),
          const SizedBox(height: 11),
          Padding(
            padding: const EdgeInsets.only(left: 25,right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'My Projects',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Handle "View All" click
                  },
                  child: const Text(
                    'View All',
                    style: TextStyle(
                      color: PaletteLightMode.textColor,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),
          Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 18.0,
                crossAxisSpacing: 25.0,
                padding: const EdgeInsets.only(left: 25,right: 25),
                  children: const [
                      ProjectBox(
                         projectNumber: '1',
                         projectName: 'Project Name 1',
                         date: '2023-07-23',
                         githubLink: 'https://github.com/project1',
                      ),
                      ProjectBox(
                         projectNumber: '2',
                         projectName: 'Project Name 2',
                         date: '2023-07-24',
                         githubLink: 'https://github.com/project2',
                      ),
                      ProjectBox(
                         projectNumber: '3',
                         projectName: 'Project Name 3',
                         date: '2023-07-25',
                         githubLink: 'https://github.com/project3',
                      ),
                      ProjectBox(
                        projectNumber: '4',
                        projectName: 'Project Name 4',
                        date: '2023-07-26',
                       githubLink: 'https://github.com/project4',
                      ),
        ],
        ),
        ),
        ],
      ),

    /*     bottomNavigationBar: MyBottomNavigationBar(
           currentIndex: _currentIndex,
           onTabTapped: _onTabTapped,
        ),*/
    );
  }
}