import 'package:flutter/material.dart';
import '../services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  //int counter = 0;

  void getData() async {
    String username = await Future.delayed(Duration(seconds: 3), () {
      //print('yyy1');
      return 'yyy1';
    });
    String bio = await Future.delayed(Duration(seconds: 2), () {
      //print('yyy2');
      return 'yyy2';
    });
    print('yyy3 - $username - $bio');
  }

  @override
  void initState() {
    super.initState();
    getData();
    print('ttt1');
  }

  @override
  Widget build(BuildContext context) {
    print('bbb ttt1');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ElevatedButton(
        onPressed: () {
          setState(() {
            //counter += 1;
          });
        },
        child: Text('counter =  counter'),
      ),
    );
  }
}
