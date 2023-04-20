import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: idCrad() ,
      ),
  );
}

class idCrad extends StatefulWidget {
  const idCrad({Key? key}) : super(key: key);

  @override
  State<idCrad> createState() => _idCradState();
}

class _idCradState extends State<idCrad> {

  int idcard=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("MFZ ID Card"),
        centerTitle:true,
        backgroundColor: Colors.grey[800],
        elevation: 0.0,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            idcard +=1;
          });
        },

        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],


      ),

      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('images/profile.jpg'),
                radius: 70.0,
              ),
            ),
            Divider(
              height: 80.0,
              color: Colors.grey[800],
            ),
            Text(
                'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Fazil',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'CURRENT MFZ LEVEL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              '$idcard',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(
                    width: 8.0,
                ),
                Text(
                    "mfazilkp10aa@gmail.com",
                        style: TextStyle(
                          color: Colors.grey[400],
                          letterSpacing: 1.0,
                          fontSize: 18.0,
                        ),
                ),
              ],
            ),
          ],
        ),
      ),

    );
  }
}
