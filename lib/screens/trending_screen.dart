import 'package:flutter/material.dart';
import '../widgets/content.dart';
import '../check.dart';
class TrendingScreen extends StatelessWidget {
  static const routeName = '/trending_screen';

  cont(String t,Color c,BuildContext ctx)
  {
    return InkWell(
      onTap: (){
        Navigator.of(ctx).pushNamed(Check.routeName);
      },
          child: Container(
          height: 40,
          width: 100,
          child: Text(t,
          style: TextStyle(fontSize: 17),),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: c,
          ),
          margin: EdgeInsets.all(5),
          padding: EdgeInsets.all(10),
          
        ),
    );
  }
  @override
  
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 445,
      color: Colors.white,
      child: Column(
        children: <Widget>[
          SizedBox(height: 5,),
          Container(
            height: 50,
            width: double.infinity,
            color: Colors.white,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
                child: Row(
                children: <Widget>[
                  
                  cont('Music',Colors.blue,context),
                  cont('Sports',Colors.green[400],context),
                  cont('Games',Colors.red,context),
                  cont('Art',Colors.blue[600],context),
                ],
              ),
            ),
          ),

          Container(
            width: double.infinity,
            height: 390,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Content(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}