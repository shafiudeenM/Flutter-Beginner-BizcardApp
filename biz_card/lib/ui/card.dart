import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bizcard"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[_getcard(), _getimage()],
        ),
      ),
    );
  }

  Container _getcard() {
    return Container(
      margin: EdgeInsets.all(50.0),
      width: 250,
      height: 200,
      decoration: BoxDecoration(
          color: Colors.pink.shade400,
          borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Shafiudeen M",
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text("shafiudeen2000@gmail.com"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[Icon(Icons.person), Text("Shafi")],
          )
        ],
      ),
    );
  }

  Container _getimage() {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              image: NetworkImage("https://picsum.photos/200/300"),
              fit: BoxFit.cover),
          border: Border.all(color: Colors.red, width: 1.2),
          borderRadius: BorderRadius.all(
            Radius.circular(50.0),
          )),
    );
  }
}
