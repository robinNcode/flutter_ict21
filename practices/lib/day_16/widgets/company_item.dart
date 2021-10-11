import 'package:flutter/material.dart';
import 'package:practices/day_16/model/company_info.dart';

class CompanyItem extends StatelessWidget {
  final CompanyInfo companyInfo;
  const CompanyItem(this.companyInfo);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.green[500],
        borderRadius: BorderRadius.circular(30)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: 40,width: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Image.asset(companyInfo.logoUrl),
                  ),
                  const SizedBox(width: 20),
                  Text(
                    companyInfo.company,
                    style: const TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ],
              ),
              const Icon(Icons.bookmark_outline_outlined,size: 30),
            ],
          ),
          const SizedBox(height: 15),
          Text(
            companyInfo.title,
            style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              const Icon(Icons.location_on_outlined,color: Colors.black,size: 20),
              const SizedBox(width: 10),
              Text(
                companyInfo.location,
                style: const TextStyle(
                  fontSize: 14,color: Colors.black
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
