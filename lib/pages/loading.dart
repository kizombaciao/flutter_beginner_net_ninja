import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import '../services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getTime() async {
    Response response = await get(
        Uri.parse('https://worldtimeapi.org/api/timezone/Europe/Moscow'));
    Map data = jsonDecode(response.body);
    //print(data);
    //print(data['timezone']);
    String datetime = data['datetime'];
    print(datetime);
    String offset = data['utc_offset'].substring(1, 3);
    print(offset);

    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));
    print(now);
  }

  @override
  void initState() {
    super.initState();
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('loading screen'),
    );
  }
}
