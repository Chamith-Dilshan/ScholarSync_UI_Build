import 'package:flutter/material.dart';
import 'package:scholarsync/features/widgets/circular_icon_button.dart';
import 'package:scholarsync/constants/icon_constants.dart';
import 'package:scholarsync/constants/ui_constants.dart';
import 'package:scholarsync/constants/image_constants.dart';
import 'package:scholarsync/theme/palette.dart';
import '../../common/custom_elevated_button.dart';
import '../../common/reusable_form_dialog.dart';
import '../../common/text_form_field.dart';
import '../widgets/club_text_container.dart';
import '../widgets/custom_carousel.dart';

class ClubProfilePage extends StatefulWidget {
  const ClubProfilePage({Key? key}) : super(key: key);

  @override
  State<ClubProfilePage> createState() => _ClubProfilePageState();
}

class _ClubProfilePageState extends State<ClubProfilePage> {
  bool isOwner = false;
  String clubName = 'AIESEC in NSBM';
  String about =
      'AIESEC is the world’s largest youth led organization advocating for youth leadership through global affairs. AIESEC in NSBM has over 90+ active global-minded and culturally sensitive members from across the island. As an Ofﬁcial Expansion, we have won the Most Outstanding Award and Most Progressive Expansion Award in 2018 & 2019, respectively.';
  String masterInCharge = 'Ms. Gimhani Ranagalla\nMs. Dilki Hansika';
  String president = 'Sachin Hettiarachchi';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIConstants.appBar(
        title: clubName,
        fontSize: 22,
        fontWeight: FontWeight.bold,
        titleCenter: false,
        backIcon: IconConstants.hamburgerMenuIcon,
        onBackIconButtonpressed: () {},
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              _buildImageBannerWithCircularImage(),
              Text(
                clubName,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: PaletteLightMode.textColor,
                ),
              ),
              const SizedBox(height: 11),
              if (isOwner)
                CustomElevatedButton(
                  label: 'Edit Profile',
                  padding:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  textSize: 10,
                  onPressed: () {
                    _showFormDialog(context);
                  },
                  height: 20,
                  backgroundColor: PaletteLightMode.secondaryGreenColor,
                ),
              const SizedBox(height: 20),
              CustomTextContainer(
                heading: 'About',
                text: about,
                headingSize: 16.0,
              ),
              const SizedBox(height: 15),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: CustomTextContainer(
                      heading: 'Master/Mistress in Charge',
                      headingSize: 12.0,
                      text: masterInCharge,
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: CustomTextContainer(
                      heading: 'President',
                      headingSize: 12.0,
                      text: president,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Upcoming Events by $clubName',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: PaletteLightMode.textColor,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              CustomCarousel(
                imageList: const [
                  ImageConstants.aiesec1,
                  ImageConstants.aiesec2,
                  ImageConstants.aiesec3,
                ],
                containerPadding: 20.0,
                showIconButton: isOwner ? true : false,
                enableAutoScroll: isOwner ? false : true,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImageBannerWithCircularImage() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        width: 370,
        height: 200,
        child: Stack(
          children: [
            _buildImageBannerWithCircularIconButton(),
            Align(
              alignment: Alignment.bottomCenter,
              child: _buildCircularImage(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImageBannerWithCircularIconButton() {
    return Stack(
      children: [
        _buildImageBanner(),
        if (isOwner)
          Positioned(
            bottom: 10,
            right: 10,
            child: CircularIconButton(
              buttonSize: 20,
              iconAsset: IconConstants.cameraIcon,
              iconColor: PaletteLightMode.whiteColor,
              buttonColor: PaletteLightMode.secondaryGreenColor,
              onPressed: () {},
            ),
          ),
      ],
    );
  }

  Widget _buildImageBanner() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.asset(
        ImageConstants.clubBanner1,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildCircularImage() {
    const imageSize = 75.0;
    const buttonSize = 20.0;

    return Stack(
      children: [
        Container(
          width: imageSize,
          height: imageSize,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: const Center(
            child: CircleAvatar(
              backgroundImage: AssetImage(ImageConstants.clubDP1),
              radius: imageSize / 2,
            ),
          ),
        ),
        if (isOwner)
          Positioned(
            bottom: -(buttonSize / 1000),
            right: -(buttonSize / 1000),
            child: CircularIconButton(
              buttonSize: buttonSize,
              iconAsset: IconConstants.cameraIcon,
              iconColor: PaletteLightMode.whiteColor,
              buttonColor: PaletteLightMode.secondaryGreenColor,
              onPressed: () {},
            ),
          ),
      ],
    );
  }
}

void _showFormDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return ReusableFormDialog(
        title: 'Edit Profile',
        buttonLabel: 'Save',
        formFields: [
          ReusableTextField(
            labelText: 'About',
            isMultiline: true,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please tell us about the club';
              }
              return null;
            },
            onSaved: (value) {},
          ),
          ReusableTextField(
            labelText: 'Master/Mistress in Charge',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please add master/mistress in charge';
              }
              return null;
            },
            onSaved: (value) {},
          ),
          ReusableTextField(
            labelText: 'President',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter the name of the president';
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
