import 'package:flutter/material.dart';

class PictureSection extends StatefulWidget {
  const PictureSection({super.key});

  @override
  State<PictureSection> createState() => _PictureSectionState();
}

class _PictureSectionState extends State<PictureSection> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          // color: Colors.red,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.transparent),
          image: DecorationImage(
            image: AssetImage('assets/cropped.jpg'),
            fit: BoxFit.contain,
          ),
        ), // color: Colors.black,
      ),
    );
  }
}
