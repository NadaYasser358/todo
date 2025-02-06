import 'package:flutter/material.dart';
import 'package:todo/ui/taps/settings/settings_tap.dart';
import 'package:todo/ui/taps/tasks/tasks_tap.dart';

class Home extends StatefulWidget {
  Home({super.key});
  static const String routeName="home";

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index=0;

  List<Widget> taps=[
    TasksTap(),
    SettingsTap()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("To Do"),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        clipBehavior: Clip.antiAlias,
        color: Colors.transparent,
        elevation: 0,
        padding: EdgeInsets.zero,
        child: BottomNavigationBar(
          currentIndex: index,
          onTap: (value){
            index=value;
            setState(() {

            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.list,size: 40,),label: "tasks"),
            BottomNavigationBarItem(icon: Icon(Icons.settings_outlined,size: 40,),label: "settings")
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.add),elevation: 0,),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: taps[index],
    );
  }
}

