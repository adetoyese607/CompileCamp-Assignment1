import 'package:assignment/ProfileScreen/bio.dart';
import 'package:assignment/ProfileScreen/cantact_section.dart';
import 'package:assignment/ProfileScreen/picturesection.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';

class Profilescreen extends StatefulWidget {
  const Profilescreen({super.key});

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[600],
        appBar: AppBar(
          backgroundColor: AppColor.blueColor,
          title: Text(
            'Profile Screen',
            style: GoogleFonts.aboreto(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.w900,
            ),
          ),
          centerTitle: true,
        ),
        body: const SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            children: [
              PictureSection(),
              SizedBox(height: 10),
              Bio(),
              SizedBox(height: 10),
              CantactSection(),
            ],
          ),
        ),
      ),
    );
  }
}
