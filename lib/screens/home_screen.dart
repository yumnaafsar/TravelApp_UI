import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app/widgets/hotel_carousel.dart';

import '../widgets/destination_carousel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _selectIndex=0;
  int _currentTab=0;
  

  List<IconData> _icons=[
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.personWalking,
    FontAwesomeIcons.bicycle,
  ];

  Widget _buildIcon(int index){
    return GestureDetector(
      onTap: (){setState(() {
        _selectIndex= index;
      });
      },
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          color: _selectIndex==index ? Theme.of(context).secondaryHeaderColor: Color(0xFFE7EBEE), borderRadius:  BorderRadius.circular(30.0)
        ),
        child: Icon(_icons[index], size: 25.0, color: _selectIndex==index? Theme.of(context).primaryColor: Color(0xFFB4C1C4)),
        
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: ListView(
        padding: EdgeInsets.symmetric(vertical:30.0),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 120.0),
            child: Text('What would you like to find?', 
            style: TextStyle( fontSize: 30.0, fontWeight: FontWeight.bold),),
          ),

          SizedBox(height: 20.0),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: _icons.asMap().entries.map((MapEntry map) => _buildIcon(map.key),
            ).toList()
          ),

          SizedBox(height: 20.0),

          DestinationCarousel(),

          SizedBox(height: 20.0,),

          HotelCarousel()
        ],
      )),

      bottomNavigationBar: BottomNavigationBar(

        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _currentTab,
        
        onTap:(int value){
          setState(() {
            _currentTab=value;
          });
        } ,

        items: [
          BottomNavigationBarItem(
          icon: Icon(
            Icons.search, 
            size: 30,
            ),
            label: '',
          ),

          BottomNavigationBarItem(
          icon: Icon(
            Icons.local_pizza, 
            size: 30,
            ),
            label: '',
          ),
          
          BottomNavigationBarItem(
          icon: CircleAvatar(radius: 15,
          backgroundImage: NetworkImage('https://cdnb.artstation.com/p/assets/images/images/024/238/953/large/fuzhe-xiu-avatargirl-2.jpg?1582527832'),),
            label: '',
          ),

          ],
          
        ),
    );
  }
}