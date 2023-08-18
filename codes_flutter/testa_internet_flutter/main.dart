import 'package:flutter/material.dart';
import 'package:connectivity/connectivity.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State {
  String _connectionStatus = 'Unknown';

  @override
  void initState() {
    super.initState();
    checkInternetConnection();
  }

  Future checkInternetConnection() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      setState(() {
        _connectionStatus = 'No internet connection';
      });
    } else if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      setState(() {
        _connectionStatus = 'Connected to internet';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Internet Connection'),
        ),
        body: Center(
          child: Text(
            _connectionStatus,
            style: TextStyle(fontSize: 30.0),
          ),
        ),
      ),
    );
  }
}
