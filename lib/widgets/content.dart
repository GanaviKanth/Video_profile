import 'package:flutter/material.dart';
//import 'package:video_sharing/screens/tabscreen.dart';
//import '../screens/trending_screen.dart';
import '../screens/video_screen.dart';

class Content extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 450,
        width: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(
                
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.end,
                    
              children: <Widget>[
                SizedBox(height: 10,),
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
                      height: 38,
                      color: Colors.white,
                      child: Text('This is the video, of this much duration,plase watch maadi',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                    ),
                    Container(
                      height: 30,
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
                // SizedBox(
                //   height: 25,
                // ),
                Container(
                  height: 100,
                  width: 350,
                  color: Colors.blue,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        height: 50,
                        width: 50,
                        //color: Colors.grey,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                        color: Colors.blue[300]),
                      ),
                      Container(
                        height: 50,
                        width: 150,
                        child: Column(
                          children: <Widget>[
                            Text('Advertisement',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                            SizedBox(height: 5,),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                
                                Text('www.site.com',style: TextStyle(fontSize: 12),),
                                Container(
                                  color: Colors.yellow[600],
                                  child: Text('Sponsor',style: TextStyle(fontSize: 12),),
                                ),
                              ],),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.all(5),
                            child: Text('Open'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                 SizedBox(
                  height: 25,
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
    
    );
     
              
           
  }
}