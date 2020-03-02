import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _logo() {
    return Container(
      height: 200,
      child: Image.asset(
        'lib/src/img/logohp.png',
      ),
      decoration: new BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black, //008DC7
            blurRadius: 100.0, //// has the effect of softening the shadow
            spreadRadius: 0.5, // has the effect of extending the shadow
            offset: Offset(
              1.0, // horizontal, move right 10
              1.0, // vertical, move down 10
            ),
          )
        ],
      ),
    );
  }

  Widget _listOfButtons() {
    return ListView(
      children: <Widget>[
        Container(
          width: 200,
          decoration: new BoxDecoration(
            color: Colors.white,
            borderRadius: new BorderRadius.only(
              topLeft: const Radius.circular(30.0),
              topRight: const Radius.circular(30.0),
              bottomRight: const Radius.circular(30.0),
              bottomLeft: const Radius.circular(30.0),
            ),
          ),
          child: ListTile(
            title: Text("teste"),
            trailing: Icon(Icons.navigate_next),
          ),
        ),
      ],
    );
  }

  Widget _boxMenu() {
    return Container(
      alignment: Alignment.center,
      child: _listOfButtons(),
      padding: EdgeInsets.all(15),
      height: MediaQuery.of(context).size.height * 0.5,
      decoration: new BoxDecoration(
        color: Color(0xffC19F37),
        borderRadius: new BorderRadius.only(
          topLeft: const Radius.circular(40.0),
          topRight: const Radius.circular(40.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black, //008DC7
            blurRadius: 15.0, // has the effect of softening the shadow
            spreadRadius: 2.0, // has the effect of extending the shadow
            offset: Offset(
              1.0, // horizontal, move right 10
              1.0, // vertical, move down 10
            ),
          )
        ],
      ),
    );
  }

//  C19F37

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffCFC730),
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: _logo(),
            ),
            _boxMenu(),
          ],
        ),
      ),
    );
  }
}
