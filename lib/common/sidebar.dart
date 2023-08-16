import 'package:flutter/material.dart';
import 'package:scholarsync/features/view/my_profile_page.dart';
import 'package:scholarsync/features/view/settings_page.dart';
import 'package:scholarsync/features/view/academic_staff_page.dart';
import 'package:scholarsync/features/view/give_feedback.dart';
import 'package:scholarsync/features/view/login_page.dart';

class Sidebaryy extends StatefulWidget {
  const Sidebaryy({Key? key}) : super(key: key);


  @override
  State<Sidebaryy> createState() => _SidebaryyState();
}

class _SidebaryyState extends State<Sidebaryy> {

  @override
  Widget build(BuildContext context) {
    return  ClipRRect(
  borderRadius: const BorderRadius.only(
    topLeft: Radius.circular(20),
    bottomLeft: Radius.circular(20),
  ),
  child: Drawer(
      
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      child: Column(
        
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(100, 10, 85, 0),
            child: UserAccountsDrawerHeader(
              
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              
              accountName: Text(
                'ATD Gamage',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600
                ),
              ),
              accountEmail: null,
              currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/Profile_Image.png'),
            ),
                
            ),
          ),
          const Divider(
            color: Color.fromARGB(255, 117, 116, 116),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.person),
                  title: const Text('My Profile'),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                  builder:(_){
                    return const MyProfilePage();
                  }
                  )
                  );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.settings),
                  title: const Text('Settings'),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder:(_){return const SettingsPage();}));
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.school),
                  title: const Text('Academic Staff'),
                  onTap: () { Navigator.of(context).push(MaterialPageRoute(builder:(_){return const AcademicStaffPage();}));},
                ),
                ListTile(
                  leading: const Icon(Icons.feedback),
                  title: const Text('Give Feedback'),
                  onTap: () {Navigator.of(context).push(MaterialPageRoute(builder:(_){return const FeedbackForm();}));},
                ),
                ListTile(
                  leading: const Icon(Icons.star),
                  title: const Text('Rate Us'),
                  onTap: () {Navigator.of(context).push(MaterialPageRoute(builder:(_){return const FeedbackForm();}));},
                ),
                ListTile(
                  leading: const Icon(Icons.logout),
                  title: const Text('Log Out'),
                  onTap: () {Navigator.of(context).push(MaterialPageRoute(builder:(_){return const LogInPage();}));},
                ),
              ],
            ),
          ),
          const Divider(),
          
        ],
      ),
    )
    );
  }
}
