import 'package:flutter/material.dart';
import './widgets/AppDrawer.dart';
import './screens/channel.dart';
import './screens/video_screen.dart';
import './screens/following_screen.dart';
import './screens/trending_screen.dart';
import './screens/tabscreen.dart';
import './screens/home_screen.dart';
import './check.dart';
import './screens/account_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  //bool _isDark = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      //home: HomeScreen(),
      routes: {
        '/':(ctx)=> TabScreen(),
        HomeScreen.routeName: (ctx) => HomeScreen(),
        TrendingScreen.routeName: (ctx) => TrendingScreen(),
        FollowingScreen.routeName: (ctx) => FollowingScreen(),
        Check.routeName: (ctx)=> Check(),
        VideoScreen.routeName:(ctx)=> VideoScreen(),
        Channel.routeName:(ctx)=>Channel(),
        AppDrawer.routeName:(ctx)=>AppDrawer(),
        AccountScreen.routeName:(ctx)=>AccountScreen(),
      },
    );
  }
}
