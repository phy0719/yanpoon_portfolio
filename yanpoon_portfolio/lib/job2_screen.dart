import 'package:flutter/material.dart';

class Job2Screen extends StatefulWidget {
  const Job2Screen({super.key});

  @override
  State<StatefulWidget> createState() => _Job2ScreenState();

}

class _Job2ScreenState extends State<Job2Screen>{

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
                      'Dreamshub Limited',
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
                      'JUL 2019 - JAN 2021',
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
                      'Analyst Programmer',
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
                  'These 2 apps are build in Native mobile languages using Swift and Kotlin. I helped in maintenance, adding new features and bugs fixed.',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(height: 10.0),
                Row(
                  spacing: 10.0,
                  children: [
                    Column(children: [
                      Image(image: AssetImage('assets/images/sa_app.png'),width: 150),
                      Text(
                        'SA App',
                        style: TextStyle(
                            fontSize: Theme.of(context).textTheme.titleMedium?.fontSize,
                            fontWeight: FontWeight.bold
                        ),
                      )
                    ]),
                      Image(image: AssetImage('assets/images/sp_app.png'), width: 150),
                  ],
                ),
              ],
            )
        )
    );
  }

}