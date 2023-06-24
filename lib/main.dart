import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
 home: Gamer(),
));

class Gamer extends StatefulWidget {
  const Gamer({super.key});

  @override
  State<Gamer> createState() => _GamerState();
}

class _GamerState extends State<Gamer> {

  
  @override
  int gamerlevel=0;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("Gamer Profile"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation:0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            gamerlevel+=1;
          });

        },
        child:Icon(Icons.add),
        backgroundColor: Colors.grey[800],

      ),
      body:Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/ninja.jpg'),
                radius:40,
              ),
            ),
            Divider(
              height:60.0,
              color:Colors.amber[200]
            ),
            const Text(
              'Name',
              style: TextStyle(
                color:Colors.grey,
                letterSpacing: 2.0,
                fontSize: 20,
              ),
            ),
            SizedBox(height:10.0),
            Text(
              'Aryaman Shetty',
              style: TextStyle(
                color:Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height:30),
            const Text(
              'Current Level',
              style: TextStyle(
                color:Colors.grey,
                letterSpacing: 2.0,
                fontSize: 20,
              ),
            ),
            SizedBox(height:10.0),
            Text(
              '$gamerlevel',
              style: TextStyle(
                color:Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height:30),
             Row(
              children:<Widget>[
                const Icon(
                  Icons.email,
                  color: Colors.amber,
                ),
                const SizedBox(width:30),
                Text(
                  'aryamannshetty@gmail.com',
                      style:TextStyle(
                    color:Colors.grey[400],
                        letterSpacing: 1.0,
                        fontSize: 18,
                  ),
                ),


              ]
            )

          ]
        )
      )
    );
  }
}


