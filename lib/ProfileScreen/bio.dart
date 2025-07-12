import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Bio extends StatefulWidget {
  const Bio({super.key});

  @override
  State<Bio> createState() => _BioState();
}

class _BioState extends State<Bio> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10,10, 10, 20),
      width: double.infinity,
      // height: 100,
    decoration: BoxDecoration(
      color: Colors.grey[800],
      borderRadius: BorderRadius.circular(10)
    ),
      // margin: EdgeInsets.all(1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.end,
        children: [
        Text('Bio', style: GoogleFonts.abel(
    
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),),
        SizedBox(height: 5,),
        Text('Hi! Im Adetoyese Samson, a passionate developer with expertise in Flutter and mobile app development. I love creating beautiful and functional user interfaces.',
        style: GoogleFonts.abel(
          color: Colors.white70,


        ) ,
        )
      ],)
    );
  }
}