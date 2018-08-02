import 'dart:io';
import 'dart:convert';

import 'package:flutter/material.dart';

class HttpClientDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}):super(key:key);

  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _ipAddress = 'Unknown';

  _getIpAddress() async {
    var url = "https://httpbin.org/ip";
    var httpClient = new HttpClient();

    String result;
    try {
      var request = await httpClient.getUrl(Uri.parse(url));
      var response = await request.close();

      if(response.statusCode == HttpStatus.OK) {
        var json = await response.transform(UTF8.decoder).join();
        var data = JSON.decode(json);
        result = data['origin'];
      } else {
        result = 'Error getting IP address:\nHttp Status ${response.statusCode}';
      }
    } catch (exception) {
      result = 'Failed getting ip address';
    }

    if(!mounted) {
      return;
    }

    setState(() {
      _ipAddress = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    var spacer = new SizedBox(height: 32.0);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Your current IP address is:'),
            Text('$_ipAddress'),
            spacer,
            RaisedButton(
              onPressed: _getIpAddress,
              child: Text('Get IP Address')
            )
          ],
        )
      )
    );
  }
}