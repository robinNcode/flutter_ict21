import 'package:flutter/material.dart';

class ExamTwo extends StatelessWidget {
  const ExamTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xFF150050),
          leading: BackButton(
            color: Colors.white,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Center(
            child: Text(
              'Contact Information',
              style: TextStyle(fontSize: 20),
            ),
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Present Address section starts here...........
            Container(
              child: Column(
                children: [
                  CustomHeader(header: 'Present Address*', margin: 250),
                  CustomField(label: 'District*', hint: 'Ex: Narshingdi'),
                  CustomField(label: 'Thana*', hint: 'Ex: belabo'),
                  CustomField(
                      label: 'House No / Road / Village',
                      hint: 'Ex: Kashim Nogar'),
                ],
              ),
            ),
            //Permanent Address section starts here...........
            Container(
              child: Column(
                children: [
                  CustomHeader(header: 'Permanent Address*', margin: 220),
                  CustomField(label: 'District*', hint: 'Ex: Narshingdi'),
                  CustomField(label: 'Thana*', hint: 'Ex: belabo'),
                  CustomField(
                      label: 'House No / Road / Village',
                      hint: 'Ex: Kashim Nogar'),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  CustomHeader(header: 'Mobile Number*', margin: 250),
                  CustomField(label: 'Mobile No 1* ', hint: ''),
                  CustomButton(text: 'Add mobile no. ', icon: Icons.add_call)
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  CustomHeader(header: 'Email Address*', margin: 260),
                  CustomField(label: 'Primary Email Address* ', hint: ''),
                  CustomButton(
                      text: 'Add mobile no. ', icon: Icons.markunread_outlined)
                ],
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: FloatingActionButton(
                  onPressed: () {},
                  child: Icon(Icons.check),
                  backgroundColor: Colors.red,
                ),
              ),
            ),
            Image(
                image: AssetImage('assets/images/banner.jpg'),
                height: 70,
                width: double.infinity,
                fit: BoxFit.fill),
          ],
        ),
      ),
    ));
  }
}

class CustomHeader extends StatelessWidget {
  final String header;
  final double margin;

  const CustomHeader({Key? key, required this.header, required this.margin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: margin),
      padding: EdgeInsets.all(5),
      child: Text(
        header,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final IconData icon;

  const CustomButton({Key? key, required this.text, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: RaisedButton(
          child: RichText(
            text: TextSpan(
              style: Theme.of(context).textTheme.bodyText2,
              children: [
                TextSpan(
                    text: text,
                    style: TextStyle(
                      color: Colors.red,
                    )),
                WidgetSpan(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2.0),
                    child: Icon(
                      icon,
                      size: 15,
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
          ),
          splashColor: Colors.grey,
          onPressed: () {},
          color: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}

class CustomField extends StatelessWidget {
  final String label;
  final String hint;

  const CustomField({Key? key, required this.label, required this.hint})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(color: Colors.black87),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: hint,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xFF150050), width: 2.0),
            borderRadius: BorderRadius.circular(10.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black, width: 2.0),
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        obscureText: true,
      ),
    );
  }
}
