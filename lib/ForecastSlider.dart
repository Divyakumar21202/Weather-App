import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 120,
      width: 100,
      margin:const EdgeInsets.only(top: 10,left: 10),
      padding: const EdgeInsets.all(14),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(29)),
        color: Colors.black26,
      ),
      child: const Column(
        children: [
          Text('09:12',style:TextStyle(fontSize: 24),),
          Icon(Icons.cloud,size: 26),
          Text('301.17',style:TextStyle(fontSize: 18),
          ),
        ],
      ),
    );;
  }
}


