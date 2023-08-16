// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scholarsync/common/project_box.dart';
import 'package:scholarsync/common/reusable_form_dialog.dart';
import 'package:scholarsync/common/search_bar.dart';
import 'package:scholarsync/common/text_form_field.dart';
import 'package:scholarsync/constants/icon_constants.dart';
import 'package:scholarsync/constants/ui_constants.dart';
import 'package:scholarsync/theme/palette.dart';

void main() {
  runApp(const MyProjectsPage());
}

class MyProjectsPage extends StatefulWidget {
  const MyProjectsPage({super.key});

  @override
  State<MyProjectsPage> createState() => _MyProjectsPageState();
}

class _MyProjectsPageState extends State<MyProjectsPage> {
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
        title: 'My Projects',
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
            CustomSearchBar(
              hint: 'Search for projects...',
              onSearchSubmitted: (query) {},
              // Handle search query change
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 20.0,
                crossAxisSpacing: 25.0,
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                children: [
                  const ProjectBox(
                    projectNumber: '1',
                    projectName: 'Project Name 1',
                    date: '2023-07-23',
                    githubLink: 'https://github.com/project1',
                  ),
                  const ProjectBox(
                    projectNumber: '2',
                    projectName: 'Project Name 2',
                    date: '2023-07-24',
                    githubLink: 'https://github.com/project2',
                  ),
                  const ProjectBox(
                    projectNumber: '3',
                    projectName: 'Project Name 3',
                    date: '2023-07-25',
                    githubLink: 'https://github.com/project3',
                  ),
                  const ProjectBox(
                    projectNumber: '4',
                    projectName: 'Project Name 4',
                    date: '2023-07-26',
                    githubLink: 'https://github.com/project4',
                  ),
                  const ProjectBox(
                    projectNumber: '5',
                    projectName: 'Project Name 5',
                    date: '2023-07-26',
                    githubLink: 'https://github.com/project4',
                  ),
                  _buildAddProjectBox(),
                ],
              ),
            ),
          ],
        ),
      );
  }

  Widget _buildAddProjectBox() {
    return Container(
      decoration: BoxDecoration(
        color: PaletteLightMode.backgroundColor,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: PaletteLightMode.shadowColor.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Stack(
        alignment: Alignment.center, // Center the add icon in the circle
        children: [
          // The small circle with green background
          Container(
            width: 48,
            height: 48,
            decoration: const BoxDecoration(
              color: PaletteLightMode.secondaryGreenColor,
              shape: BoxShape.circle,
            ),
          ),
          // The add icon in the center of the circle
          IconButton(
            icon: SvgPicture.asset(
              IconConstants.addButtonIcon,
              color: PaletteLightMode.whiteColor,
              ),
              tooltip: 'Increment',
              onPressed: () {
                _showFormDialog(context);
              },
         ),
        ],
      ),
    );
  }
}

void _showFormDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return ReusableFormDialog(
        title: 'Add New Projects',
        buttonLabel: 'Add',
        formFields: [

          const SizedBox(height: 15),
          ReusableTextField(
            labelText: 'Project Name',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a name';
              }
              return null;
            },
            onSaved: (value) {},
          ),
          ReusableTextField(
            labelText: 'Date',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a date';
              }
              return null;
            },
            onSaved: (value) {},
          ),
          
          ReusableTextField(
            labelText: 'Github Link',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter the GitHub link';
              }
              return null;
            },
            onSaved: (value) {},
          ),
        ],
        onSubmit: (formData) {},
      );
    },
  );
}
