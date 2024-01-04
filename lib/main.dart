import 'package:flutter/material.dart';

void main() {
  runApp(basket());
}

class basket extends StatefulWidget {
  @override
  State<basket> createState() => _basketState();
}

class _basketState extends State<basket> {
  int teamA = 0;

  int teamB = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              'Basket Ball',
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.orange,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 14),
                      child: Text(
                        'Team A',
                        style: TextStyle(fontSize: 35),
                      ),
                    ),
                    Text(
                      '$teamA',
                      style: TextStyle(fontSize: 150),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamA++;
                        });
                        print('add 1 point');
                      },
                      child: Text(
                        'Add 1 Point',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                      ),
                    ),
                    SizedBox(height: 12),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamA += 2;
                        });
                      },
                      child: Text(
                        'Add 2 Point',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                      ),
                    ),
                    SizedBox(height: 12),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamA += 3;
                        });
                      },
                      child: Text(
                        'Add 3 Point',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 450,
                  child: VerticalDivider(
                    indent: 50,
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 14),
                      child: Text(
                        'Team B',
                        style: TextStyle(fontSize: 35),
                      ),
                    ),
                    Text(
                      '$teamB',
                      style: TextStyle(fontSize: 150),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamB++;
                        });
                      },
                      child: Text(
                        'Add 1 Point',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                      ),
                    ),
                    SizedBox(height: 12),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamB += 2;
                        });
                      },
                      child: Text(
                        'Add 2 Point',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                      ),
                    ),
                    SizedBox(height: 12),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamB += 3;
                        });
                      },
                      child: Text(
                        'Add 3 Point',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                      ),
                    ),
                  ],
                ),
              ]),
              Spacer(
                flex: 2,
              ),
              SizedBox(
                width: 200,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      teamA = 0;
                      teamB = 0;
                    });
                  },
                  child: Text(
                    'Reset',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange,
                  ),
                ),
              ),
              Spacer(
                flex: 2,
              )
            ],
          )),
    );
  }
}
