import 'package:flutter/material.dart';
import 'package:rajkumar_flutter_app/screens/HomePage.dart';
import 'package:rajkumar_flutter_app/screens/NoteList.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RajKumar Flutter Demo'),
          automaticallyImplyLeading: false
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              elevation: 20,
              child: Text('Server List'),
              color: Colors.blue,
              textColor: Colors.white,
            ),
            MaterialButton(
              elevation: 20,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NoteList()));
              },
              child: Text('Local Database'),
              color: Colors.blue,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
