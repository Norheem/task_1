import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final String url = 'https://github.com/norheem';

  Future<void> github() async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/githubLogo.png'),
        title: const Text('HNG TASK 1'),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      backgroundColor: Colors.grey,
      body: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          const Center(
            child: Text(
              'Nohim Sulaiman',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const CircleAvatar(
            backgroundImage: AssetImage('assets/profile.jpg'),
            radius: 130,
          ),
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            width: 300,
            height: 60,
            child: ElevatedButton(
              onPressed: github,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: const StadiumBorder(),
                elevation: 20,
              ),
              child: const Text(
                'Github Profile',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
