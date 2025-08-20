import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Poon Hoi Yan',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
      ),
      home: const MyHomePage(title: 'Poon Hoi Yan'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     // This call to setState tells the Flutter framework that something has
  //     // changed in this State, which causes it to rerun the build method below
  //     // so that the display can reflect the updated values. If we changed
  //     // _counter without calling setState(), then the build method would not be
  //     // called again, and so nothing would appear to happen.
  //     _counter++;
  //   });
  // }
  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  Future<void> _mailTo(String mailAddress) async {
    final Uri launchUri = Uri(
      scheme: 'mailto',
      path: mailAddress,
    );
    await launchUrl(launchUri);
  }

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
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Stack(
            children: <Widget>[
              // Stroked text as border.
              Text(
                widget.title,
                style: TextStyle(
                  fontSize: Theme.of(context).textTheme.headlineLarge?.fontSize,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 5
                    ..color = Colors.grey[700]!,
                ),
              ),
              // Solid text as fill.
              Text(
                widget.title,
                style: TextStyle(
                  fontSize: Theme.of(context).textTheme.headlineLarge?.fontSize,
                  color: Colors.indigoAccent,
                ),
              ),
            ],
          ),
            bottom: const TabBar(
              tabs: <Widget>[
                Tab(icon: Icon(Icons.list_alt_sharp)),
                Tab(icon: Icon(Icons.local_taxi_outlined)),
                Tab(icon: Icon(Icons.theater_comedy_outlined)),
                Tab(icon: Icon(Icons.code)),
              ],
            )
        ),
        body: TabBarView(
          children: <Widget>[
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                margin: const EdgeInsetsGeometry.all(20.0),
                alignment: AlignmentGeometry.topCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/IMG_8743.jpg'),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                            'Nickname : ',
                            style: TextStyle(
                                fontSize: Theme.of(context).textTheme.titleLarge?.fontSize,
                                fontWeight: FontWeight.bold
                            )
                        ),
                        TextButton(onPressed: () {},
                            child: Text(
                              'Yan',
                              style: Theme.of(context).textTheme.titleLarge,
                            )
                        )

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Phone : ',
                          style: TextStyle(
                              fontSize: Theme.of(context).textTheme.titleLarge?.fontSize,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        TextButton(onPressed: () {
                          _makePhoneCall("90291357");
                        }, child: Text(
                          '90291357',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),)

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Email : ',
                          style: TextStyle(
                              fontSize: Theme.of(context).textTheme.titleLarge?.fontSize,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        TextButton(onPressed: () {
                          _mailTo('poonhoiyan6@hotmail.com');
                        },
                          child: Text(
                            'poonhoiyan6@hotmail.com',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        )

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'LinkedIn : ',
                          style: TextStyle(
                              fontSize: Theme.of(context).textTheme.titleLarge?.fontSize,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        Flexible(child:
                        TextButton(onPressed: () {
                          _launchInBrowser(Uri.parse('https://www.linkedin.com/in/poon-hoi-yan-16908a98/'));
                        }, child:
                        Text(
                          'https://www.linkedin.com/in/poon-hoi-yan-16908a98/',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        )
                        )
                      ],
                    ),
                    SizedBox(height: 30.0),
                    Row(
                      children: [
                        Text(
                            'Highest Qualification : ',
                            style: TextStyle(
                                fontSize: Theme.of(context).textTheme.titleLarge?.fontSize,
                                fontWeight: FontWeight.bold
                            )
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Flexible(child: Text(
                          'BSc (Hons) Degree in Information Technology from University of the West of England',
                          style: Theme.of(context).textTheme.titleLarge,
                        )
                        )

                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        Text(
                          'Description : ',
                          style: TextStyle(
                              fontSize: Theme.of(context).textTheme.titleLarge?.fontSize,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      'I have been learning programming since I was studied in High Diploma and BSc Degree. I have more than 10 years working experience in mobile application development. At the same time, I have also learnt the business flow and cycle.',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        Text(
                          'Project Portfolio : ',
                          style: TextStyle(
                              fontSize: Theme.of(context).textTheme.titleLarge?.fontSize,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5.0),
                    const Row(
                      children: [
                        Image(image: AssetImage('assets/images/yan_project_portfolio.png'), width: 150)
                      ],
                    )
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
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
                  ],
                )
              )
            ),
            const Center(child: Text("It's sunny here")),
            const Center(child: Text("It's snow here")),
          ],
        ),
      ),
    );
    // return
    //   Scaffold(
    //   appBar: AppBar(
    //     // TRY THIS: Try changing the color here to a specific color (to
    //     // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
    //     // change color while the other colors stay the same.
    //     backgroundColor: Theme.of(context).colorScheme.inversePrimary,
    //     // Here we take the value from the MyHomePage object that was created by
    //     // the App.build method, and use it to set our appbar title.
    //     title: Stack(
    //       children: <Widget>[
    //         // Stroked text as border.
    //         Text(
    //           widget.title,
    //           style: TextStyle(
    //             fontSize: Theme.of(context).textTheme.headlineLarge?.fontSize,
    //             foreground: Paint()
    //               ..style = PaintingStyle.stroke
    //               ..strokeWidth = 5
    //               ..color = Colors.grey[700]!,
    //           ),
    //         ),
    //         // Solid text as fill.
    //         Text(
    //           widget.title,
    //           style: TextStyle(
    //             fontSize: Theme.of(context).textTheme.headlineLarge?.fontSize,
    //             color: Colors.indigoAccent,
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    //   body: SingleChildScrollView(
    //     scrollDirection: Axis.vertical,
    //     child: Container(
    //       margin: EdgeInsetsGeometry.all(20.0),
    //       alignment: AlignmentGeometry.topCenter,
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.start,
    //         children: [
    //           Container(
    //             width: 200,
    //             height: 200,
    //             decoration: BoxDecoration(
    //               shape: BoxShape.circle,
    //               color: Colors.white,
    //               image: DecorationImage(
    //                 fit: BoxFit.cover,
    //                 image: AssetImage('assets/images/IMG_8743.jpg'),
    //               ),
    //             ),
    //           ),
    //           Row(
    //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //             children: [
    //               Text(
    //                 'Nickname : ',
    //                 style: TextStyle(
    //                   fontSize: Theme.of(context).textTheme.titleLarge?.fontSize,
    //                   fontWeight: FontWeight.bold
    //                 )
    //               ),
    //               TextButton(onPressed: () {},
    //                   child: Text(
    //                     'Yan',
    //                     style: Theme.of(context).textTheme.titleLarge,
    //                   )
    //               )
    //
    //             ],
    //           ),
    //           Row(
    //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //             children: [
    //               Text(
    //                 'Phone : ',
    //                 style: TextStyle(
    //                     fontSize: Theme.of(context).textTheme.titleLarge?.fontSize,
    //                     fontWeight: FontWeight.bold
    //                 ),
    //               ),
    //               TextButton(onPressed: () {
    //                 _makePhoneCall("90291357");
    //               }, child: Text(
    //                 '90291357',
    //                 style: Theme.of(context).textTheme.titleLarge,
    //               ),)
    //
    //             ],
    //           ),
    //           Row(
    //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //             children: [
    //               Text(
    //                 'Email : ',
    //                 style: TextStyle(
    //                     fontSize: Theme.of(context).textTheme.titleLarge?.fontSize,
    //                     fontWeight: FontWeight.bold
    //                 ),
    //               ),
    //               TextButton(onPressed: () {
    //                 _mailTo('poonhoiyan6@hotmail.com');
    //               },
    //                 child: Text(
    //                   'poonhoiyan6@hotmail.com',
    //                   style: Theme.of(context).textTheme.titleLarge,
    //                 ),
    //               )
    //
    //             ],
    //           ),
    //           Row(
    //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //             children: [
    //               Text(
    //                 'LinkedIn : ',
    //                 style: TextStyle(
    //                     fontSize: Theme.of(context).textTheme.titleLarge?.fontSize,
    //                     fontWeight: FontWeight.bold
    //                 ),
    //               ),
    //               Flexible(child:
    //               TextButton(onPressed: () {
    //                 _launchInBrowser(Uri.parse('https://www.linkedin.com/in/poon-hoi-yan-16908a98/'));
    //               }, child:
    //               Text(
    //                 'https://www.linkedin.com/in/poon-hoi-yan-16908a98/',
    //                 style: Theme.of(context).textTheme.titleLarge,
    //               ),
    //               )
    //               )
    //             ],
    //           ),
    //           SizedBox(height: 30.0),
    //           Row(
    //             children: [
    //               Text(
    //                 'Highest Qualification : ',
    //                   style: TextStyle(
    //                       fontSize: Theme.of(context).textTheme.titleLarge?.fontSize,
    //                       fontWeight: FontWeight.bold
    //                   )
    //               ),
    //             ],
    //           ),
    //           Row(
    //             children: [
    //               Flexible(child: Text(
    //                   'BSc (Hons) Degree in Information Technology from University of the West of England',
    //                   style: Theme.of(context).textTheme.titleLarge,
    //                 )
    //               )
    //
    //             ],
    //           ),
    //           SizedBox(height: 10.0),
    //           Row(
    //             children: [
    //               Text(
    //                 'Description : ',
    //                 style: TextStyle(
    //                     fontSize: Theme.of(context).textTheme.titleLarge?.fontSize,
    //                     fontWeight: FontWeight.bold
    //                 ),
    //               ),
    //             ],
    //           ),
    //           SizedBox(height: 5.0),
    //           Text(
    //             'I have been learning programming since I was studied in High Diploma and BSc Degree. I have more than 10 years working experience in mobile application development. At the same time, I have also learnt the business flow and cycle.',
    //             style: Theme.of(context).textTheme.titleLarge,
    //           ),
    //           SizedBox(height: 10.0),
    //           Row(
    //             children: [
    //               Text(
    //                 'Project Portfolio : ',
    //                 style: TextStyle(
    //                     fontSize: Theme.of(context).textTheme.titleLarge?.fontSize,
    //                     fontWeight: FontWeight.bold
    //                 ),
    //               ),
    //             ],
    //           ),
    //           SizedBox(height: 5.0),
    //           Row(
    //             children: [
    //               Image(image: AssetImage('assets/images/yan_project_portfolio.png'), width: 150)
    //             ],
    //           )
    //         ],
    //       ),
    //     ),
    //   ),
    //
    //    // This trailing comma makes auto-formatting nicer for build methods.
    // );
  }
}
