import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tiktok_project/Tiktok_Me/me_page.dart';

import 'package:tiktok_project/Tiktok_Inbox/inbox_page.dart';
import 'package:tiktok_project/Tiktok_home/home_page.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  // ignore: unused_field
  late PageController _controller;
  int index = 0;
@override
  void initState() {
   _controller = PageController(initialPage: 0);
    super.initState();
  }

  List pages =[
const HomePage(),
const Text('j'),
const Text('k'),
const InboxPage(),
const  MePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
bottomNavigationBar: 

BottomNavigationBar( type: BottomNavigationBarType.fixed,
  onTap: (value){
    setState(() {
      index= value;
    });
  },
  backgroundColor: index>0?
   Colors.white: Colors.black,
  selectedItemColor:index>0? Colors.black: Colors.white,
  unselectedItemColor:  const Color.fromARGB(255, 211, 211, 211),
  
  currentIndex: index,
  
  items:  [
   const BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/Home Solid Icon.png')), label: 'Home',) ,
  const   BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/Search Icon.png')), label: 'Discover') ,
       BottomNavigationBarItem(icon:  index>0?    SvgPicture.asset('assets/Button Shape-2.svg', width: 43,height: 28,)    : SvgPicture.asset('assets/Button Shape.svg', width: 43,height: 28,),label: '' ) ,
     const  BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/Message Stroke Icon.png')), label: 'Inbox') ,
    const    BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/Account Stroke Icon.png')), label: 'Me') ,

  ]),
  body: pages[index],


    );
  }
}