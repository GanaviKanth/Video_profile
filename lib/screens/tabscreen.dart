import 'package:flutter/material.dart';

import './home_screen.dart';
import './following_screen.dart';
import './trending_screen.dart';
import '../widgets/AppDrawer.dart';
class TabScreen extends StatefulWidget {
  
  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  List<Map<String, Object>> _pages;
  int _selectedPageIndex = 0;
  
  @override
  void initState() {
    _pages =[
      {
        'page': HomeScreen(),
        'title' : 'Home',
      },
      {
        'page' :TrendingScreen(),
        'title' : 'Trending',
      },
      {
        'page' : FollowingScreen(),
        'title' : 'Following',
      },

    ];
    super.initState();
  }

  void _selectedPage(int index){
    setState((){
      _selectedPageIndex = index;
    });
  }
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            _pages[_selectedPageIndex]['title'],
            //textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey,fontSize: 20),
            ),
        ),
        
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: (){
            Navigator.of(context).pushNamed(AppDrawer.routeName);
          },
            child: Icon(
            Icons.account_circle,
            size: 38,
            color: Colors.blue,
            
          ),
          
        ),
        // leading: IconButton(
        //   icon: Icon(Icons.account_circle),
        //   onPressed: () => Scaffold.of(context).openDrawer(),
        // ),
        
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.all(10),
            child: GestureDetector(
              onTap: (){},
              child: Icon(
                Icons.search,
                color: Colors.blue,
                size: 28,
              ),
            ),
          ),
        ],
      ),
      //drawer: AppDrawer(),
      body: _pages[_selectedPageIndex]['page'],
      
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectedPage,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.blue,
        currentIndex: _selectedPageIndex,
        items: [
          BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
            ),
          BottomNavigationBarItem(
              icon: Icon(Icons.trending_up),
              title: Text('Trending'),
              
            ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              title: Text('Following'),
            ),
        ],
      ),      

    );
  }
}