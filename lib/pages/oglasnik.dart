import 'package:astrum/pages/homepage.dart';
import 'package:flutter/material.dart';

import '../widgets/nav_utils.dart';
import 'antistres_kutak.dart';
import 'forum_studenata.dart';

class Oglasnik extends StatefulWidget {
  @override
  State<Oglasnik> createState() => _OglasnikState();
}

class _OglasnikState extends State<Oglasnik> {
  bool myAds = true;
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
      body: Padding(
        padding: const EdgeInsets.all(100),
        child: Column(children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text("Oglasnik instrukcija",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "OGLASI",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: myAds ? FontWeight.normal : FontWeight.bold),
              ),
              Switch(
                value: myAds,
                onChanged: (bool value) {
                  setState(() {
                    myAds = value;
                  });
                },
              ),
              Text(
                "MOJI OGLASI",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: myAds ? FontWeight.bold : FontWeight.normal),
              )
            ],
          ),
          Expanded(
              child: Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            blurRadius: 5,
                            spreadRadius: 3)
                      ],
                      color: Color.fromARGB(255, 65, 72, 121),
                      borderRadius: BorderRadius.circular(30)),
                  child: !myAds
                      ? Row(
                          children: [
                            SizedBox(
                              width: 130,
                            ),
                            NavUtils.oglasCard(
                                "matko",
                                "MATEMATIKA",
                                "Matko Matetić",
                                "Student diplomskog studija matematike. Instrukcije iz bilo kojeg gradiva. Cijena po dogovoru\n",
                                "matko.matetic@student.uniri.hr",
                                "095 854 1254"),
                            SizedBox(
                              width: 130,
                            ),
                            NavUtils.oglasCard(
                                "korina_bilic",
                                "PROGRAMIRANJE",
                                "Korina Bilić",
                                "Studentica diplomskog studija Informatike u Rijeci. Nudim instrukcije iz Pythona i C++. Cijena po dogovoru\n",
                                "korina.bilic@student.uniri.hr",
                                "095 854 1254"),
                            SizedBox(
                              width: 130,
                            ),
                            NavUtils.oglasCard(
                                "nino_frankic",
                                "PROGRAMIRANJE",
                                "Nino Frankić",
                                "Student politehnike u Rijeci. Instrukcije iz programskih jezika C++, C. Javite mi se mailom , preko WhatsApp-a ili preko Astruma. Cijena po dogovoru.",
                                "nino.frankic@student.uniri.hr",
                                "095 854 1254"),
                            SizedBox(
                              width: 130,
                            ),
                          ],
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            NavUtils.oglasCard(
                                "matko",
                                "MATEMATIKA",
                                "Matko Matetić",
                                "Student diplomskog studija matematike. Instrukcije iz bilo kojeg gradiva. Cijena po dogovoru\n",
                                "matko.matetic@student.uniri.hr",
                                "095 854 1254"),
                          ],
                        )))
        ]),
      ),
    );
  }
}
