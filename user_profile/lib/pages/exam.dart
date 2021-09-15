import 'package:flutter/material.dart';

class Exam extends StatelessWidget {
  const Exam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  CustomHeader(header: 'Personal Information'),
                  CustomField(data: 'Personal Details', icon: Icons.person),
                  CustomField(data: "Contact", icon: Icons.phone_android),
                  CustomField(
                      data: "Career Application Information",
                      icon: Icons.file_copy
                  ),
                  CustomField(
                      data: "Preferred Area", icon: Icons.location_on
                  ),
                  CustomField(
                      data: "Other Relevant Information",
                      icon: Icons.info
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  CustomHeader(header: 'Education / Training'),
                  CustomField(data: 'Academic Qualification', icon: Icons.account_balance_rounded ),
                  CustomField(data: 'Training Summary', icon: Icons.add_business),
                  CustomField(data: 'Professional Certification Summary', icon: Icons.add_task),
                ],
              ),
            ),
            SizedBox(
              child: Divider(
                color: Colors.grey,
              ),
            ),
            Container(
              child: Column(
                children: [
                  CustomHeader(header: 'Employment History'),
                  CustomField(data: 'Employment History', icon: Icons.history),
                  CustomField(data: 'Employment History (Retired Army per)', icon: Icons.history_edu),
                ],
              ),
            ),
            SizedBox(
              child: Divider(
                color: Colors.grey,
              ),
            ),
            Container(
              child: Column(
                children: [
                  CustomHeader(header: 'Other Information'),
                  CustomField(data: 'Specialization', icon: Icons.settings_applications),
                  CustomField(data: 'Language Proficiency', icon: Icons.language),
                  CustomField(data: 'References', icon: Icons.person_add),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class CustomHeader extends StatelessWidget {
  final String header;

  const CustomHeader({Key? key, required this.header}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 180),
      padding: EdgeInsets.all(5),
      child: Text(
        header,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }
}

class CustomField extends StatelessWidget {
  final String data;
  final IconData icon;

  const CustomField({Key? key, required this.data, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon,
      color:Colors.blue),
      title: Text(
        data,
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}