import 'package:flutter/material.dart';
import 'screens/welcome.dart';

void  main() => runApp(Portal());

class Portal extends StatelessWidget
{
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: 'Portal',
      home: Welcome(),
    );
  }
}