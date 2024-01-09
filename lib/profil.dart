import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class Profil extends StatelessWidget {
  const Profil({super.key});
final String url = 'https://www.instagram.com/bugkafasi/';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(appBar: AppBar(),
   body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Container(
                width: 200.0,
                height: 200.0,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('image/monkey.jpg'), // Görselinizin yolunu belirtin
                  ),
                ),
              ),
        const SizedBox(height: 20,),
        ElevatedButton(onPressed: (){webSite();}, child: const Text('Instagram')),
        const SizedBox(height: 20,),
        ElevatedButton(onPressed: (){mailTo();}, child: const Text('İletişim')),
        ],
      ),
    ),);
  }
}

void webSite() {
  String url="https://www.instagram.com/bugkafasi/";
  Uri uri=Uri.parse(url);
launchUrl(uri);
  }


  void mailTo() {
  String url="mailto:codewithmavera@gmail.com";
  Uri uri=Uri.parse(url);
launchUrl(uri);
  }
