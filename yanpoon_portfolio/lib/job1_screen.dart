import 'package:flutter/material.dart';
import 'package:yanpoon_portfolio/video_player_screen.dart';

class Job1Screen extends StatefulWidget {
  const Job1Screen({super.key});

  @override
  State<StatefulWidget> createState() => _Job1ScreenState();

}

class _Job1ScreenState extends State<Job1Screen>{

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
            margin: EdgeInsetsGeometry.all(20.0),
            child: Column(
              spacing: 5.0,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        'Company : ',
                        style: TextStyle(
                            fontSize: Theme.of(context).textTheme.titleMedium?.fontSize,
                            fontWeight: FontWeight.bold
                        )
                    ),
                    Text(
                      'HKTaxi App Limited',
                      style: Theme.of(context).textTheme.titleMedium,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        'Employment Period : ',
                        style: TextStyle(
                            fontSize: Theme.of(context).textTheme.titleMedium?.fontSize,
                            fontWeight: FontWeight.bold
                        )
                    ),
                    Text(
                      'JAN 2021 - JUN 2025',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        'Position : ',
                        style: TextStyle(
                            fontSize: Theme.of(context).textTheme.titleMedium?.fontSize,
                            fontWeight: FontWeight.bold
                        )
                    ),
                    Text(
                      'Senior Software Engineer',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
                SizedBox(height: 5.0),
                Row(
                  children: [
                    Text(
                      'Description : ',
                      style: TextStyle(
                          fontSize: Theme.of(context).textTheme.titleMedium?.fontSize,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
                Text(
                  'I mainly focus on development and maintenance on these 2 Flutter apps including adding new features, bugs fix, enhance performance.',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(height: 10.0),
                Row(
                  spacing: 10.0,
                  children: [
                    Column(children: [
                      Image(image: AssetImage('assets/images/hktaxi_rider_appicon.png'),width: 150),
                      Text(
                        'Rider App',
                        style: TextStyle(
                            fontSize: Theme.of(context).textTheme.titleMedium?.fontSize,
                            fontWeight: FontWeight.bold
                        ),
                      )
                    ]),
                    Column(children: [
                      Image(image: AssetImage('assets/images/hktaxi_driver_appicon.png'), width: 150),
                      Text(
                        'Driver App ',
                        style: TextStyle(
                            fontSize: Theme.of(context).textTheme.titleMedium?.fontSize,
                            fontWeight: FontWeight.bold
                        ),
                      )
                    ]),
                  ],
                ),
                SizedBox(height: 15.0),
              ],
            )
        )
    );
  }

}