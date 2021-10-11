import 'package:flutter/material.dart';
import 'package:practices/day_16/model/company_info.dart';
import 'package:practices/day_16/widgets/company_details.dart';
import 'package:practices/day_16/widgets/company_item.dart';
class CompanyList extends StatelessWidget {
  final cInfo = CompanyInfo.generateCompanyList();

  CompanyList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30),
      height: 200,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context,index){
            return GestureDetector(
              onTap: (){
                  showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (context)=>CompanyDetails(cInfo[index])
                  );
              },
                child: CompanyItem(cInfo[index]));
          },
          separatorBuilder: (_,index)=>const SizedBox(width: 15),
          itemCount: cInfo.length
      ),
    );
  }
}
