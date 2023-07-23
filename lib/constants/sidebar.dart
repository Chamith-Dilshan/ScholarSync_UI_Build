import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


class Sidebaryy extends StatefulWidget {
  const Sidebaryy({super.key});

  @override
  State<Sidebaryy> createState() => _SidebaryyState();
}

class _SidebaryyState extends State<Sidebaryy> {
  File _image = File('');

  final ImagePicker _picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('ATD Gamage'),
            accountEmail: null,
            currentAccountPicture: GestureDetector(
              onTap: () => _showImagePicker(context),
              // child: CircleAvatar(
              //   backgroundImage:
              //       _image.path.isNotEmpty
              //       ? FileImage(_image) 
              //       : const AssetImage('assets/Profile_Image.png'),
              // ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('My Profile'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.school),
            title: const Text('Academic Staff'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.feedback),
            title: const Text('Give Feedback'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.star),
            title: const Text('Rate Us'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Log Out'),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.cancel),
            title: const Text('Cancel'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

 

  void _showImagePicker(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => SizedBox(
        height: 100,
        child: Column(
          children: [
            ListTile(
              leading: const Icon(Icons.camera_alt),
              title: const Text('Take a new photo'),
              onTap: () {
                // TODO: Implement taking a new photo using the camera
              },
            ),
            ListTile(
              leading: const Icon(Icons.photo_library),
              title: const Text('Choose from gallery'),
              onTap: () {
                _chooseFromGallery();
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _chooseFromGallery() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }
}