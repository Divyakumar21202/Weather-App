import 'package:flutter/material.dart';

class AdditionalWidgetData extends StatelessWidget {
  final String label;
  final String data;
  final IconData iconn;
  const AdditionalWidgetData({
    super.key, required this.label,
    required this.data,
    required this.iconn,

  }
  );

  @override
  Widget build(BuildContext context) {
   return Container(
      margin:const EdgeInsets.only(top: 9,left: 12),
      padding: const EdgeInsets.all(12),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(23)),
        color: Color.fromARGB(255, 30, 30, 30),
      ),
      child:  Center(
        child: Column(
          children: [
            Icon(iconn,size: 40,),
            Text(label,style:const TextStyle(fontSize: 12),),
            Text(data,style:const TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
