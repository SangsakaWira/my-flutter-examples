
import 'package:card_app/services/NetworkService.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

import 'location.dart';

class HomePage extends StatelessWidget{
  const HomePage({Key? key}) : super(key: key);

  void getCurrentLocation() async {
    LocationPermission permission;
    permission = await Geolocator.requestPermission();
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    print(position);
  }

  void getData() async {
    NetworkService networkService = NetworkService('https://jsonplaceholder.typicode.com/todos/1');
    String response = await networkService.getData();
    print(response);
  }

  void goToLocationPage (BuildContext context) async {
    Navigator.push(context,MaterialPageRoute(builder: (context){
      return const LocationPage();
    }));
  }

  @override
  Widget build(BuildContext context){
    return MaterialApp(
        home:Scaffold(
            backgroundColor: Colors.blueGrey,
            appBar: AppBar(
              title:  const Center(child:Text('Card App Example')),
            ),
            body:SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Card(
                      margin: const EdgeInsets.fromLTRB(15.0, 5, 15.0, 5),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const ListTile(
                            leading: Icon(Icons.album),
                            title: Text('Get Location Weather App'),
                            subtitle: Text('Get current location and weather condition app'),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              TextButton(
                                child: const Text('GET LOCATION'),
                                onPressed: () {getCurrentLocation();},
                              ),
                              const SizedBox(width: 8),
                              TextButton(
                                child: const Text('GO TO PAGE'),
                                onPressed: () {goToLocationPage(context);},
                              ),
                              const SizedBox(width: 8),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Card(
                      margin: const EdgeInsets.fromLTRB(15.0, 5, 15.0, 5),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const ListTile(
                            leading: Icon(Icons.album),
                            title: Text('City Thread App'),
                            subtitle: Text('Get current all report through the city'),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              TextButton(
                                child: const Text('GET DATA'),
                                onPressed: () {getData();},
                              ),
                              const SizedBox(width: 8),
                              TextButton(
                                child: const Text('GO TO PAGE'),
                                onPressed: () {/* ... */},
                              ),
                              const SizedBox(width: 8),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Card(
                      margin: const EdgeInsets.fromLTRB(15.0, 5, 15.0, 5),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const ListTile(
                            leading: Icon(Icons.album),
                            title: Text('The Enchanted Nightingale'),
                            subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              TextButton(
                                child: const Text('BUY TICKETS'),
                                onPressed: () {/* ... */},
                              ),
                              const SizedBox(width: 8),
                              TextButton(
                                child: const Text('LISTEN'),
                                onPressed: () {/* ... */},
                              ),
                              const SizedBox(width: 8),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                )
            )
        )
    );
  }

}