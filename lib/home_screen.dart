import 'package:store_application/utils/page_view.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final supabase = Supabase.instance.client;
  int newCurrentIndexClicked = 0;
  List<Widget> showScreen = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
        ),
        floatingActionButton: const FloatingActionButton(
          backgroundColor: Colors.amber,
          shape: CircleBorder(
            side: BorderSide.none,
          ),
          onPressed: null,
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterDocked,
        bottomNavigationBar: BottomNavigationBar(
          selectedLabelStyle: const TextStyle(
            color: Colors.black,
            fontFamily: 'B Mitra',
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
          unselectedLabelStyle: const TextStyle(
            color: Colors.black,
            fontFamily: 'B Mitra',
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
          type: BottomNavigationBarType.fixed,
          currentIndex: newCurrentIndexClicked,
          onTap: (int index) async {
            setState(() {
              newCurrentIndexClicked = index;
            });
          },
          elevation: 9.0,
          backgroundColor: Colors.amber,
          fixedColor: Colors.white,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              activeIcon: Icon(Icons.shopping_cart),
              label: 'سبدخرید',
              tooltip: 'سبدخرید',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              activeIcon: Icon(Icons.person),
              label: 'حساب کاربری',
              tooltip: 'حساب کاربری',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              activeIcon: Icon(Icons.category),
              label: 'دسته بندی',
              tooltip: 'دسته بندی',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              activeIcon: Icon(Icons.home),
              label: 'خانه',
              tooltip: 'خانه',
            ),
          ],
        ),
        body: FutureBuilder(
          future: supabase.from('swimming glasses').select().explain(),
          builder: (context, snapshot) {
            print(snapshot.data);
            if(snapshot.hasData){
              return Text('salam');
            }else{
              return Text('sdf');
            }
          },
        ),
      ),
    );
  }
}
// Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             //ShowPageView(),
//             // showScreen.elementAt(newCurrentIndexClicked),
//             GridView.count(
//               crossAxisCount: 2,
//               children: <Widget>[
                
//               ],
//             ),
//           ],
//         ),