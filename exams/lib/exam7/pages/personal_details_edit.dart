import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bottom_picker/bottom_picker.dart';
import 'package:bottom_picker/resources/arrays.dart';

import 'contact_details.dart';

class PersonalDetailsEdit extends StatelessWidget {
  const PersonalDetailsEdit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    _openDatePicker(BuildContext context) {
      BottomPicker.date(
              title: "Date Of Birth",
              titleStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.blue),
              onChange: (index) {
                print(index);
              },
              onSubmit: (index) {
                print(index);
              },
              bottomPickerTheme: BOTTOM_PICKER_THEME.PLUM_PLATE)
          .show(context);
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF122F51),
        elevation: 0,
        leading: BackButton(
          color: Colors.white,
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text('Personal Details',
            style: TextStyle(fontSize: 22, color: Colors.white)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Icon(
              FontAwesomeIcons.edit,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(top: 20, right: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: 'First Name*',
                          labelStyle: TextStyle(color: Color(0xFF122F51)),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xFF122F51), width: 1.0),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.black, width: 1.0),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          suffixIcon:
                              Icon(Icons.clear, color: Color(0xFF122F51))),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(top: 20, left: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Last Name*',
                        labelStyle: TextStyle(color: Color(0xFF122F51)),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xFF122F51), width: 1.0),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.black, width: 1.0),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            _customInputField(hint: 'Father\'s Name'),
            _customInputField(hint: 'Mother\'s Name'),
            Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: TextFormField(
                    onTap: () {
                      _openDatePicker(context);
                    },
                    decoration: InputDecoration(
                      hintText: 'Date Of Birth*',
                      hintStyle: TextStyle(color: Color(0xFF122F51)),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color(0xFF122F51), width: 1.0),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.black, width: 1.0),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                )),
                SizedBox(width: 20),
                Expanded(child: _customInputField(hint: 'Religion')),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            const Text('Gender*',
                style: TextStyle(
                    fontSize: 18,
                    color: Color(0xFF122F51),
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Container(
                  height: _size.height / 16,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: const Text(
                          'Male    ',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8)),
                ),
                SizedBox(
                  width: 8,
                ),
                Container(
                  height: _size.height / 16,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: const Text(
                          'Female  ',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Color(0xFF122F51),
                      border: Border.all(
                        color: Colors.grey,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8)),
                ),
                SizedBox(
                  width: 8,
                ),
                Container(
                  height: _size.height / 16,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: const Text(
                          'Others  ',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8)),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            const Text('Marital Status*',
                style: TextStyle(
                    fontSize: 18,
                    color: Color(0xFF122F51),
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Container(
                  height: _size.height / 16,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: const Text(
                          'Maried  ',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8)),
                ),
                SizedBox(
                  width: 8,
                ),
                Container(
                  height: _size.height / 16,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: const Text(
                          'Unmaried',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8)),
                ),
                SizedBox(
                  width: 8,
                ),
                Container(
                  height: _size.height / 16,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: const Text(
                          'Single  ',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8)),
                ),
              ],
            ),
            _customInputField(hint: 'Nationality'),
            _customInputField(hint: 'National Id No'),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.bottomRight,
              child: CircleAvatar(
                backgroundColor: Colors.red,
                radius: 30,
                child: IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ContactDetails()));
                  },
                  color: Colors.white,
                  icon: Icon(Icons.done, size: 26),
                ),
              ),
            ),
            SizedBox(height: _size.height / 22),
            Image.asset('assets/images/banner.jpg',
                fit: BoxFit.cover, width: double.maxFinite)
          ],
        ),
      ),
    );
  }

  Widget _customInputField({
    required String hint,
  }) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(color: Color(0xFF122F51)),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xFF122F51), width: 1.0),
            borderRadius: BorderRadius.circular(5.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black, width: 1.0),
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
      ),
    );
  }
}
