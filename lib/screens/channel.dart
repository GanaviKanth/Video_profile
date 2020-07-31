import 'package:flutter/material.dart';
//import 'package:video_sharing/widgets/content.dart';

import './home_screen.dart';
import './trending_screen.dart';
import './following_screen.dart';
import './video_screen.dart';

class Channel extends StatefulWidget {
  static const routeName = '/channel';
  @override
  _ChannelState createState() => _ChannelState();
}

class _ChannelState extends State<Channel> {
  List<Map<String, Object>> _pages;
  int _selectedPageIndex=0;

  getCont(String t, String n)
  {
    return Container(
      height: 40,
      width: 100,
      child: Column(
        children: <Widget>[
          Text(n,style: TextStyle(fontWeight: FontWeight.bold),),
          Text(t,style: TextStyle(color: Colors.grey[600]),),
        ],
      ),
    );
  }
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
        title: Center(child: Text('Channel Name',style: TextStyle(color: Colors.grey),)),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,),color: Colors.grey[600],onPressed: (){
          Navigator.of(context).pop();
        },),
        
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.all(10),
            child: GestureDetector(
              onTap: (){},
              child: Icon(
                Icons.menu,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                            height: 60,
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                Icons.account_circle,
                                color: Colors.blue,
                                size: 39,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text('Channel Name',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold
                                      ),),
                                      
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 100,
                                height: 45,
                                //padding: EdgeInsets.all(5),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('Following',style: TextStyle(fontSize: 15,color: Colors.white),),
                                  ),
                                ),
                                //margin: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.blue,
                                  // border: Border.all(
                                  //   color: Colors.black,
                                  //   width: 1,
                                  //   style: BorderStyle.solid
                                  // ),
                                ),
                              ),
                              
                              ],
                            ),
                            
                          ),

                    Container(
                      height: 70,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          getCont('videos', '20'),
                            getCont('Followers', '5k'),
                            getCont('Following', '2k'),

                        ],
                      ),
                    ),
                    DefaultTabController(
                      length: 2,
                      
                      child: Container(
                        color: Colors.white,
                        child: TabBar(
                          tabs: <Widget>[
                            Text('Latest Videos',style: TextStyle(color: Colors.grey[600]),),
                            Text('All videos',style: TextStyle(color: Colors.grey[600]),),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Container(
                      height: 280,
                      child: SingleChildScrollView(
                        child:Column(
                          children: <Widget>[
                            InkWell(
                      onTap: (){
                            Navigator.of(context).pushNamed(VideoScreen.routeName);
                      },
                                              child: Container(
                              height: 370,
                              width: double.infinity,
                              color: Colors.white,
                              child: Column(
                                //mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  
                                  Card(
                                  semanticContainer: true,
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                    child: Image.network(
                                    'https://placeimg.com/640/480/any', 
                                          fit: BoxFit.fill,
                                          ),
                                          shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(5.0),
                                          ),
                                    elevation: 5,
                                margin: EdgeInsets.all(5),
                              ),
                              Container(
                                width: double.infinity,
                                height: 40,
                                color: Colors.white,
                                child: Text('This is the video, of this much duration,plase watch maadi',
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                              ),
                              Container(
                                height: 40,
                                width: 200,
                                color: Colors.white,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Text('Channel name'),
                                    Text('1.7kviews'),
                                  ],
                                ),

                              )
                                ],
                              ),
                            ),
                    ),
                                                          InkWell(
                      onTap: (){
                        Navigator.of(context).pushNamed(VideoScreen.routeName);
                      },
                                          child: Container(
                          height: 370,
                          width: double.infinity,
                          color: Colors.white,
                          child: Column(
                            //mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              
                              Card(
                              semanticContainer: true,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: Image.network(
                                'https://placeimg.com/640/480/any', 
                                      fit: BoxFit.fill,
                                      ),
                                      shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                      ),
                                elevation: 5,
                            margin: EdgeInsets.all(5),
                          ),
                          Container(
                            width: double.infinity,
                            height: 40,
                            color: Colors.white,
                            child: Text('This is the video, of this much duration,plase watch maadi',
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                          ),
                          Container(
                            height: 40,
                            width: 200,
                            color: Colors.white,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Text('Channel name'),
                                Text('1.7kviews'),
                              ],
                            ),

                          )
                            ],
                          ),
                        ),
                    ),
                                                          InkWell(
                      onTap: (){
                        Navigator.of(context).pushNamed(VideoScreen.routeName);
                      },
                                          child: Container(
                          height: 370,
                          width: double.infinity,
                          color: Colors.white,
                          child: Column(
                            //mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              
                              Card(
                              semanticContainer: true,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: Image.network(
                                'https://placeimg.com/640/480/any', 
                                      fit: BoxFit.fill,
                                      ),
                                      shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                      ),
                                elevation: 5,
                            margin: EdgeInsets.all(5),
                          ),
                          Container(
                            width: double.infinity,
                            height: 40,
                            color: Colors.white,
                            child: Text('This is the video, of this much duration,plase watch maadi',
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                          ),
                          Container(
                            height: 40,
                            width: 200,
                            color: Colors.white,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Text('Channel name'),
                                Text('1.7kviews'),
                              ],
                            ),

                          )
                            ],
                          ),
                        ),
                    ),

                          ],
                        ),
                    
                      ),
                    ),
            ],
          ),
        ),
      ),
                
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