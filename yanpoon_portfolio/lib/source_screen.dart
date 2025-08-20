import 'package:flutter/material.dart';

class SourceScreen extends StatefulWidget {
  const SourceScreen({super.key});

  @override
  State<StatefulWidget> createState() => _SourceScreenState();

}

class _SourceScreenState extends State<SourceScreen>{

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
            margin: EdgeInsetsGeometry.all(20.0),
            child: Column(
              spacing: 5.0,

              children: [
                Text(
                      'Thank you very much for the interview and exploring this app. It is made by Flutter and can be view in github.',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                SizedBox(height: 5.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image(image: AssetImage('assets/images/yan_portfolio_flutter_app.png'), width: 150)
                  ]
                )
                ,
              ],
            )
        )
    );
  }

}