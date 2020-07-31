import 'package:flutter/material.dart';
//import '../widgets/content.dart';
import './channel.dart';

class VideoScreen extends StatelessWidget {
  static const routeName = '/video_screen';
   iconss(IconData i,String s)
  {
    return Container(
      height: 50,
      width: 50,
      child: Column(
        children: <Widget>[
          Icon(i,color: Colors.grey[600],),
          Text(s,style: TextStyle(fontSize: 10),),
          
        ],
      ),
    );
  }
  @override
 
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
              child: Container(
          height: 800,
          width: double.infinity,
          child: Column(
            
            children: <Widget>[
              SizedBox(height: 25),
              Container(
                height: 170,
                width: double.infinity,
                color: Colors.yellow,
                child: Center(
                  child: Text('VIDEO DISPLAYED HERE',
                  style: TextStyle(fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
                
              ),
              Container(
                height: 17,
                width: 400,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: 200,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                    Text('2 months ago',style: TextStyle(fontSize: 13,color: Colors.grey),),
                    Text('2.2M views',style: TextStyle(fontSize: 13,color: Colors.grey),),
                        ],
                      ),
                    ),
                    
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
              ),
              Container(
                  height: 55,
                  
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      iconss(Icons.favorite, 'like'),
                      iconss(Icons.broken_image, 'dislike'),
                      iconss(Icons.card_giftcard, 'gift'),
                      iconss(Icons.share, 'share'),
                      iconss(Icons.comment,'Coment'),
                      
                    ],
                  ),
                ),
              InkWell(
                onTap: (){
                  Navigator.of(context).pushNamed(Channel.routeName);
                },
                              child: Card(
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                        Icons.account_circle,
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
                              Center(
                                child: Text('12k followers',
                                style: TextStyle(fontSize: 11),),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 40,
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.all(5),
                            child: Text('Follow',style: TextStyle(fontSize: 17),)),
                        ),
                        //margin: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                            style: BorderStyle.solid
                          ),
                        ),
                      ),
                      
                      ],
                    ),
                    
                  ),
                ),
              ),
              Container(
                  height: 70,
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
                SizedBox(height: 5,),
                    Container(
                      height: 15,
                      width: double.infinity,
                      child: Text('YOU MAY ALSO LIKE',style: TextStyle(fontSize: 11),),
                    ),
                    
              Container(
                height: 350,
                child: SingleChildScrollView(
                                  child: Column(
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
                                    ],
                                  ),
                ),
              ),
                
            ],
          ),
        ),
      ),
    );
  }
}