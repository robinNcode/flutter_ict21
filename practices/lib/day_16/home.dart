import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:practices/day_16/widgets/company_list.dart';
import 'package:practices/day_13/pages/home_app.dart';
import 'package:practices/day_13/pages/search_bar.dart';
import 'package:practices/day_16/widgets/tag_list.dart';



class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color:Colors.grey.withOpacity(0.1),
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            child: Column(
              children: [
               const HomeAppBar(),
                const SearchBar(),
                TagList(),
                CompanyList(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 50,
        color: Colors.blueAccent,
        buttonBackgroundColor: Colors.red,
        backgroundColor: Colors.green[500]!,
        items: const <Widget>[
          Icon(Icons.home, color: Colors.white, size: 30,),
          Icon(Icons.list, color: Colors.white, size: 30,),
          Icon(Icons.add, color: Colors.white, size: 30,),
          Icon(Icons.compare_arrows, color: Colors.white, size: 30,),
          Icon(Icons.person, color: Colors.white, size: 30,),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButton: FloatingActionButton(
      //   onPressed: (){},
      //   elevation: 0,
      //   backgroundColor: Theme.of(context).accentColor,
      //   child: const Icon(Icons.add,color: Colors.white),
      // ),
      // bottomNavigationBar: Theme(
      //   data: ThemeData(
      //     splashColor: Colors.transparent,
      //     highlightColor: Colors.transparent
      //   ),
      //   child: BottomNavigationBar(
      //     showSelectedLabels: false,
      //     showUnselectedLabels: false,
      //     selectedItemColor: Theme.of(context).primaryColor,
      //     type: BottomNavigationBarType.fixed,
      //     items: const [
      //       BottomNavigationBarItem(
      //         label: 'Home',
      //         icon: Icon(Icons.home,size: 20),
      //       ),
      //       BottomNavigationBarItem(
      //         label: 'Case',
      //         icon: Icon(Icons.cases_outlined,size: 20),
      //       ),
      //       BottomNavigationBarItem(
      //         label: '',
      //         icon: Text('')
      //       ),
      //       BottomNavigationBarItem(
      //         label: 'Chat',
      //         icon: Icon(Icons.chat_outlined,size: 20),
      //       ),
      //       BottomNavigationBarItem(
      //         label: 'Person',
      //         icon: Icon(Icons.person_outline,size: 20),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
