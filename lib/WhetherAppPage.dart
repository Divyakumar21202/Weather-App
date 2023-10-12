import 'dart:collection';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:whether_app/ForecastSlider.dart';
import 'AdditionaInfoData.dart';
import 'package:http/http.dart'as http;

class HomePage extends StatefulWidget{
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  late Future<Map<String,dynamic>> weather;
  Future<Map<String,dynamic>> getCurrentWeather() async {
    try {
      String keys = 'ht';
      final res = await http.get(Uri.parse(keys));
        final data = jsonDecode(res.body);
        if (data['cod'] != '200') {
          throw('Error of server data is ');
        }
      return data;
    }
    catch(e){
      throw e.toString();
    }
  }
  @override
  void initState() {
    weather=getCurrentWeather();
    super.initState();
  }
  @override
  Widget build(BuildContext context){
    return  Scaffold(
      appBar: AppBar(
        actions:  [
          GestureDetector(child:
              IconButton(onPressed:(){
                setState(() {

                });
              }, icon:const Icon(Icons.refresh))
          ),
        ],
        title: const Text('Whether App',style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w400,

        ),),
        centerTitle: true,

      ),
      body:FutureBuilder(future: getCurrentWeather() ,
          builder: (context,snapshot) {
          print(snapshot.data);
          if(snapshot.connectionState==ConnectionState.waiting){
          return const Center(child:  CircularProgressIndicator.adaptive());
          }
          if(snapshot.hasError){
            return  Center(child: Text('SnapShot ${snapshot.error.toString()}'));
          }
          final data=snapshot.data!;
          final curr=data['list'][0]['main']['temp'];
          final wStatus=data['list'][0]['weather'][0]['main'];
          final humidity=data['list'][0]['main']['humidity'];
          final pressure=data['list'][0]['main']['pressure'];
          final windSpeed=data['list'][0]['wind']['speed'];


          return Column(
              children: [
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(top: 20, right: 10, left: 10),
                  padding: const EdgeInsets.all(21),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    color: Colors.black26,
                  ),
                  child:  Column(
                    children: [
                      Text('$curr K', style: const TextStyle(fontSize: 50),),
                      const Icon(Icons.cloud, size: 70),
                       Text('$wStatus', style: const TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                ),
                //2nd Children Weather Forcast Scroll
                const Padding(
                  padding: EdgeInsets.only(left: 21, top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Weather ForeCast',
                        style: TextStyle(fontSize: 25),
                      ),
                    ],
                  ),
                ),
                 SizedBox(
                   height: 130,
                   width: double.infinity,
                   child: ListView.builder(
                     scrollDirection: Axis.horizontal,
                     itemCount: 39,
                     itemBuilder:(context, index) {
                       return MyWidget(
                         time:
                         {data['list'][index+1]['dt_txt']}.toString().substring(11,17),

                         temp: '${data['list'][index+1]['main']['temp']}',

                         icon: Icons.cloud,);
                   },
                   ),
                 ),
                const Padding(
                  padding: EdgeInsets.only(left: 18, top: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Additional Information :',
                        style: TextStyle(fontSize: 25),
                      ),
                    ],
                  ),
                ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    AdditionalWidgetData(
                        label: 'humidity', data: '$humidity', iconn: Icons.water_drop),
                    AdditionalWidgetData(label: 'Wind Speed',
                        data: '$windSpeed',
                        iconn: Icons.air_rounded),
                    AdditionalWidgetData(label: 'Pressure',
                        data: '$pressure',
                        iconn: Icons.ac_unit_rounded),
                  ],
                )


              ],
            );
          }
          )
    );
  }
}


