import 'package:flutter/material.dart';
import 'package:practices/day_16/model/company_info.dart';

class CompanyDetails extends StatelessWidget {
  final CompanyInfo companyInfo;

  const CompanyDetails(this.companyInfo);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(25),
      height: _size.height - 200,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25), topRight: Radius.circular(25)),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: 5,
                width: 60,
                color: Colors.grey.withOpacity(0.3),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image.asset(companyInfo.logoUrl),
                    ),
                    const SizedBox(width: 20),
                    Text(companyInfo.company, style: const TextStyle(fontSize: 16))
                  ],
                ),
                Row(
                  children: const [
                    Icon(Icons.bookmark_outline_outlined, size: 30),
                    Icon(Icons.more_horiz_outlined, size: 30),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 30),
            Text(
              companyInfo.title,
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.location_on_outlined,
                        size: 30, color: Colors.blue),
                    const SizedBox(width: 10),
                    Text(companyInfo.location)
                  ],
                ),
                Row(
                  children: const [
                    Icon(Icons.timer, size: 30, color: Colors.blue),
                    SizedBox(width: 10),
                    Text('Full Time')
                  ],
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Text(
              'Requirement',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            ...companyInfo.req
                .map((e) => Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          height: 5,
                          width: 5,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.black),
                        ),
                        const SizedBox(width: 20),
                        ConstrainedBox(
                          constraints: BoxConstraints(maxWidth: _size.width - 80),
                          child: Text(
                            e,
                            style: const TextStyle(wordSpacing: 2, height: 1.5),
                          ),
                        ),
                      ],
                    ))
                .toList(),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 25),
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  primary: Theme.of(context).primaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
                onPressed: () {},
                child: const Text('Apply Now'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
