import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MaintenanceScreen extends StatefulWidget {
  const MaintenanceScreen({Key? key}) : super(key: key);

  @override
  _MaintenanceScreenState createState() => _MaintenanceScreenState();
}

class _MaintenanceScreenState extends State<MaintenanceScreen>{
  int menuIndex = 0;

  @override
  void initState() {
    super.initState();
    menuIndex = 2;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: const Color.fromRGBO(242, 35, 65, 1.0),
        bottomNavigationBar: BottomAppBar(
            color: Colors.transparent,
            elevation: 0,
            child: Container(
              padding: const EdgeInsets.all(20),
              child: const Text(
                "THIS IS MAINTENANCE SCREEN",
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            )),
      ),
    );
  }
}