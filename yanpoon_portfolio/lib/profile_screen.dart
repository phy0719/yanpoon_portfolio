import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<StatefulWidget> createState() => _ProfileScreenState();

}

class _ProfileScreenState extends State<ProfileScreen>{
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
    return SingleChildScrollView(
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
            )
          ],
        ),
      ),
    );
  }

}