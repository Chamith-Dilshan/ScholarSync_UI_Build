import 'package:flutter/material.dart';
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
        boxShadow: [
          BoxShadow(
            color: PaletteLightMode.shadowColor.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //have to add a icon into icon folder
              const Icon(Icons.folder),//icon: SvgPicture.asset(IconConstants.folderIcon),
              Text('Project $projectNumber'),
              const Icon(Icons.more_horiz),
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
                  style: const TextStyle(
                    fontSize: 11),
                    )
                    ),
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
                  padding:  EdgeInsets.only(left: 2,right: 2),
                  child:  Center(
                    child: Text(
                              'GitHub',
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: PaletteLightMode.whiteColor
                              ),
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


