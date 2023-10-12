import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  final String time,temp;
  final IconData icon;
  const MyWidget({
    super.key,required this.time,required this.temp,required this.icon,
  }
  );
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
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(time,style:const TextStyle(fontSize: 12),),
          Icon(icon,size: 26),
          Text(temp,style:const TextStyle(fontSize: 18),
          ),
        ],
      ),
    );;
  }
}


