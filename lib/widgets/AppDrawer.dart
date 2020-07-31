import 'package:flutter/material.dart';
import '../screens/account_screen.dart';
//import '../screens/tabscreen.dart';
class AppDrawer extends StatefulWidget {
  static const routeName = '/app_drawer';

  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  bool _isDark = false;

  Widget buildListTile(String title, IconData icon, Function tapHandler,BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 31,
        color: _isDark?Colors.white:Colors.black54,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: _isDark?Colors.white:Colors.grey[600],
          fontSize: 18,
        ),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Settings',
              style: TextStyle(
                color: _isDark?Colors.white:Colors.black,
                ),
              ),
            ),
            backgroundColor: _isDark?Colors.black:Colors.white,
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: _isDark?Colors.white:Colors.black,
              onPressed: (){
                Navigator.of(context).pop();
              },
            ),
          ),
        body: Container(
          color: _isDark?Colors.black:Colors.white,
          child: Column(
          children: <Widget>[
            
            Divider(),
            SizedBox(
              height: 10,
            ),
            buildListTile('General', Icons.list, () {},context),
            buildListTile('Privacy and Security', Icons.lock, () {},context),
            buildListTile('Account', Icons.person, () {
              Navigator.of(context).pushNamed(AccountScreen.routeName);
            },context),
            buildListTile(
              _isDark ? 'Change to light theme' : 'Change to dark theme', Icons.brightness_3, () {
                setState(() {
                  _isDark = !_isDark;
                });
                //not sure whether to use providers here or not
              },context),
            buildListTile('Billing and Payments', Icons.attach_money, () {},context),
            buildListTile('About', Icons.help, () {},context),
            buildListTile('Log Out', Icons.exit_to_app, () {},context),
          ],
      ),
        ),
      ) ,
      
    );
  }
}