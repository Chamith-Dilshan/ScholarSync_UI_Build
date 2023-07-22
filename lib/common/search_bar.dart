import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  final String hintText;
  final void Function(String)? onChanged;

  const MySearchBar({super.key, 
    required this.hintText,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: TextField(
          onChanged: onChanged,
          decoration: InputDecoration(
            hintText: hintText,
            border: InputBorder.none,
            prefixIcon: const Icon(Icons.search),
          ),
        ),
      ),
    );
  }
}
