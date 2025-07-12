import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CantactSection extends StatefulWidget {
  const CantactSection({super.key});

  @override
  State<CantactSection> createState() => _CantactSectionState();
}

class _CantactSectionState extends State<CantactSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 20),
      width: double.infinity,
      // height: 100,
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Row(children: [InfoWidget(), ContactWidget()]),
    );
  }
}

class ContactWidget extends StatelessWidget {
  const ContactWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      flex: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Heading(text: 'Cotact Info'),
          SizedBox(height: 10),
          SkillWidget(skill_text: 'Name - Adetoyese Samson'),
          SizedBox(height: 5),
          SkillWidget(skill_text: 'Email - as@gmail.com'),
          SizedBox(height: 5),
          SkillWidget(skill_text: 'Phone No - 08154703668'),
          SizedBox(height: 5),
          SkillWidget(skill_text: 'Github - adetoyese607'),
          SizedBox(height: 5),
          SkillWidget(skill_text: 'Location - Lagos'),
        ],
      ),
    );
  }
}

class InfoWidget extends StatelessWidget {
  const InfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      flex: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Heading(text: 'Skills'),
          SizedBox(height: 10),
          SkillWidget(skill_text: 'Flutter & Dart'),
          SizedBox(height: 5),
          SkillWidget(skill_text: 'UI/UX Design'),
          SizedBox(height: 5),
          SkillWidget(skill_text: 'JavaScript'),
          SizedBox(height: 5),
          SkillWidget(skill_text: 'Mobile App Development'),
          SizedBox(height: 5),
          SkillWidget(skill_text: 'Git & Version Control'),
        ],
      ),
    );
  }
}

class SkillWidget extends StatelessWidget {
  // ignore: non_constant_identifier_names
  const SkillWidget({super.key, required this.skill_text});
  // ignore: non_constant_identifier_names
  final String skill_text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.circle, size: 12),
        SizedBox(width: 5),
        Text(skill_text, style: GoogleFonts.abel(color: Colors.white70)),
      ],
    );
  }
}

class Heading extends StatelessWidget {
  const Heading({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.abel(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
