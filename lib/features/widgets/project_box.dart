import 'package:flutter/material.dart';

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
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
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
              const Icon(Icons.folder),
              Text('Project $projectNumber'),
              const Icon(Icons.more_horiz),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            projectName,
            style: const TextStyle(
              color: Colors.black,
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
                  color: Colors.black,
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
                                color: Colors.grey,
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

class AddProjectBox extends StatelessWidget {
  const AddProjectBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: IconButton(
        icon: const Icon(Icons.add),
        onPressed: () {
          // Handle button press
        },
      ),
    );
  }
}

