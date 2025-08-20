import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SourceScreen extends StatefulWidget {
  const SourceScreen({super.key});

  @override
  State<StatefulWidget> createState() => _SourceScreenState();

}

class _SourceScreenState extends State<SourceScreen>{
  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }
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
                  children: [
                    Flexible(child:
                      Text(
                        'Thank you very much for the interview and have a look on this app. It is made by Flutter. For more detail and video demo of my previous jobs, it can be found in the following Project Portfolio: ',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Image(image: AssetImage('assets/images/yan_project_portfolio.png'), width: 150),
                  ],
                ),
                SizedBox(height: 65.0),
                Text(
                      'It is the source code of this app pushed in my github workspace as tutorial..',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),

                Row(
                  children: [
                    ElevatedButton(onPressed: () {
                      _launchInBrowser(Uri.parse('https://github.com/phy0719/yanpoon_portfolio/tree/main/yanpoon_portfolio'));
                    }, child:
                    Text(
                      'Source code',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    )
                  ],
                ),
              ],
            )
        )
    );
  }

}