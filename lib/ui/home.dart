import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BizCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BizCard"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            _getCard(),
            _getAvatar()
          ],
        ),
      ),
    );
  }

 Container _getCard() {
    return Container(
      width: 350,
      height: 200,
      margin: EdgeInsets.all(60.0),
      decoration: BoxDecoration(
        color: Colors.purpleAccent,
        borderRadius: BorderRadius.circular(14.5)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("I Love Dogs",
          style: TextStyle(fontSize: 20.9,
            color: Colors.white,
              fontWeight: FontWeight.w500),),
          Text("dogsfantasy.com"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.person_outline),
              Text("U: @dogs_fantasy")
            ],
          )
        ],
      )
    );
  }

  Container _getAvatar(){
  return Container(
    height: 100,
    width: 100,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(50.0)),
      border: Border.all(color: Colors.redAccent, width: 1.2),
      image: DecorationImage(image: NetworkImage("https://picsum.photos/id/237/300/300"),
      fit: BoxFit.cover)
    ),
  );
  }
}
