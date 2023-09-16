import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scholarsync/constants/icon_constants.dart';
import 'package:scholarsync/theme/palette.dart';

class ProjectBox extends StatelessWidget {
  final String projectNumber;
  final String projectName;
  final String date;
  final String githubLink;

  const ProjectBox({
    Key? key,
    required this.projectNumber,
    required this.projectName,
    required this.date,
    required this.githubLink,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: PaletteLightMode.backgroundColor,
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            color: PaletteLightMode.shadowColor,
            offset: Offset(8, 8),
            blurRadius: 24,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(IconConstants.projectManagementIcon),
              Text('Project $projectNumber'),
              SvgPicture.asset(IconConstants.horizontalDotsIcon),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            projectName,
            style: const TextStyle(
              color: PaletteLightMode.titleColor,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          Row(
            children: [
              const SizedBox(width: 0.5),
              SizedBox(
                  width: 60,
                  height: 20,
                  child: Text(
                    date,
                    style: const TextStyle(fontSize: 11),
                  )),
              const Spacer(),
              Container(
                width: 50,
                height: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: PaletteLightMode.secondaryGreenColor,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 2, right: 2),
                  child: Center(
                    child: Text(
                      'GitHub',
                      style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          color: PaletteLightMode.whiteColor),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
