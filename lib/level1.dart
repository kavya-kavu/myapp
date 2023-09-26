import 'package:flutter/material.dart';
import 'package:myapp/homescreen.dart';

class Level1Screen extends StatelessWidget {
  final int levelNumber;
  Level1Screen({required this.levelNumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 121, 14, 170),
        title: Text('Brainobrain Dictation', style: TextStyle(fontSize: 25)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Practices > level $levelNumber',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                      onPressed: () {
                BottomSheet()._showBottomSheet(context);
                },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 112, 243, 243),
                    onPrimary: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(
                        color: Color.fromARGB(255, 172, 98, 206),
                        width: 4,
                      ),
                    ),
                    minimumSize: Size(500, 75),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'SD',
                            style: TextStyle(fontSize: 25),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            'Flash cards',
                            style: TextStyle(fontSize: 18),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                      onPressed: () {
                BottomSheet()._showBottomSheet(context);
                },
                  
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 112, 243, 243),
                    onPrimary: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(
                        color: Color.fromARGB(255, 172, 98, 206),
                        width: 4,
                      ),
                    ),
                    minimumSize: Size(500, 75),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'DD',
                            style: TextStyle(fontSize: 25),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            'Flash cards',
                            style: TextStyle(fontSize: 18),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      'Visual',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 27,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), 
                    ),
                    minimumSize: Size(170, 70),
                  ),
                  child: Text(
                    'Start',
                    style: TextStyle(
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ), 
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
