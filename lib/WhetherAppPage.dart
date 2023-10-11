import 'package:flutter/material.dart';
import 'package:whether_app/ForecastSlider.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});
  @override
  Widget build(BuildContext context){

    return  Scaffold(
      appBar: AppBar(
        actions:  [
          GestureDetector(child:
              IconButton(onPressed:(){
              print("Refresh");
              }, icon:const Icon(Icons.refresh))
          ),
        ],
        title: const Text('Whether App',style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w400,

        ),),
        centerTitle: true,

      ),
      body:   Column(
        children: [
          Container(
            width: double.infinity,
            margin:const EdgeInsets.only(top: 20,right: 10,left: 10),
            padding: const EdgeInsets.all(21),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(40)),
              color: Colors.black26,
            ),
            child: const Column(
              children: [
                Text('300.6 ^F',style:TextStyle(fontSize: 50),),
                Icon(Icons.cloud,size: 70),
                Text('Rain',style:TextStyle(fontSize: 50),
                ),
              ],
            ),
          ),
          //2nd Children
          const Padding(
            padding: EdgeInsets.only(left: 21,top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Weather ForeCast',
                  style:TextStyle(fontSize: 25),
                ),
              ],
            ),
          ),

          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                MyWidget(),MyWidget(),MyWidget(),MyWidget(),MyWidget(),
              ],
            ),
          ),

          const Padding(
            padding: EdgeInsets.only(left: 18,top: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Additional Information :',
                  style:TextStyle(fontSize: 25),
                ),
              ],
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
            margin:EdgeInsets.only(top: 9,left: 12),
            padding: EdgeInsets.all(12),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(23)),
              color: Color.fromARGB(255, 30, 30, 30),
            ),
            child: const Center(
              child: Column(
                children: [
                  Icon(Icons.water_drop,size: 40,),
                  Text('Humidity',style:TextStyle(fontSize: 12),),
                  Text('94',style:TextStyle(fontSize: 30),
                  ),
                ],
              ),
            ),
          ), Container(
                margin:const EdgeInsets.only(top: 9,left: 12),
                padding: const EdgeInsets.all(12),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(23)),
                  color: Color.fromARGB(255, 30, 30, 30),
                ),
                child: const Center(
                  child: Column(
                    children: [
                      Icon(Icons.air_rounded,size: 40,),
                      Text('Wind Speed',style:TextStyle(fontSize: 12),),
                      Text('94',style:TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                ),
              ), Container(
                margin:const EdgeInsets.only(top: 9,left: 12),
                padding: const EdgeInsets.all(12),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(23)),
                  color: Color.fromARGB(255, 30, 30, 30),
                ),
                child: const Center(
                  child: Column(
                    children: [
                      Icon(Icons.ac_unit_rounded,size: 40,),
                      Text('Pressure',style:TextStyle(fontSize: 12),),
                      Text('94',style:TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )


        ],
      ),
    );
  }
}


