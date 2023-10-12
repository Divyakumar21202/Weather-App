import 'package:flutter/material.dart';
import 'package:whether_app/WhetherAppPage.dart';

void main(){
  runApp(const MyWhetherApp());
}
class MyWhetherApp extends StatelessWidget{
  const MyWhetherApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Whether App',
      debugShowCheckedModeBanner: false,
      home: const WhetherAppHome(),
      theme:ThemeData.dark(useMaterial3:true)
    );
  }
}
class WhetherAppHome extends StatelessWidget{
  const WhetherAppHome({super.key});
  @override
  Widget build(BuildContext context){
    return HomePage();
  }
}