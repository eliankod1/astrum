import 'package:flutter/material.dart';
import '../widgets/nav_utils.dart';
import 'antistres_kutak.dart';
import 'forum_studenata.dart';
import 'homepage.dart';
import 'oglasnik.dart';

class KalendarPage extends StatefulWidget {
  @override
  State<KalendarPage> createState() => _KalendarPageState();
}

class _KalendarPageState extends State<KalendarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0), // Set the AppBar height
        child: AppBar(
          backgroundColor: Color(0xFF535680), // AppBar color
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            //AppBar content
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Image.asset(
                  'assets/prozirno_logo.png',
                  height: 75.0,
                  width: 125,
                ),
              ), // Logo
              SizedBox(width: 50),
              // Horizontal navigation
              NavUtils.navItem(context, 'NASLOVNICA', () => HomePage()),
              NavUtils.navItemDrop(context, 'KOLEGIJI I AKTIVNOSTI'),
              NavUtils.navItem(
                  context, 'FORUM STUDENATA', () => ForumStudenata()),
              NavUtils.navItem(
                  context, 'OGLASNIK INSTRUKCIJA', () => Oglasnik()),
              NavUtils.navItem(
                  context, 'ANTISTRES KUTAK', () => AntiStresKutak()),
              Spacer(), // Pushes the icons to the right side
              // Icons
              IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
              IconButton(icon: Icon(Icons.message), onPressed: () {}),
              IconButton(icon: Icon(Icons.dark_mode), onPressed: () {}),
              SizedBox(width: 25),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 15.0,
                // backgroundImage: AssetImage('path/to/your/image.jpg'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
