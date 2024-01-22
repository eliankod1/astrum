import 'package:astrum/widgets/nav_utils.dart';
import 'package:flutter/material.dart';
import 'antistres_kutak.dart';
import 'forum_studenata.dart';
import 'homepage.dart';
import 'oglasnik.dart';

class VremenskaCrta extends StatefulWidget {
  @override
  State<VremenskaCrta> createState() => _VremenskaCrtaState();
}

class _VremenskaCrtaState extends State<VremenskaCrta> {
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
      body: Row(children: [
        Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 150,
                ),
                NavUtils.buildZadaci()
              ],
            )),
        Expanded(
            flex: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 100,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Vremenska crta",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 30, 30, 50),
                    child: Container(
                      child: Center(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(75, 40, 75, 0),
                            child: Container(
                              height: 40,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30)),
                              child: Row(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.search)),
                                  SizedBox(
                                    width: 50,
                                  ),
                                  Text("Pretraži",
                                      style: TextStyle(color: Colors.grey))
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(15, 15, 15, 5),
                              child: Text("15.11.2023.",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                          NavUtils.vremenskaCard(
                              "15:00",
                              "Objektno programiranje",
                              "Kolokvij",
                              "Prvi kolokvij iz koelgija Osnove Programiranja",
                              "Započni"),
                          NavUtils.vremenskaCard(
                              "23:59",
                              "Matematika 1",
                              "Samoprovjera",
                              "Prva online samoprovjera. Materijali su postavljeni na Astrum",
                              "Započni"),
                          SizedBox(
                            height: 20,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(15, 15, 15, 5),
                              child: Text("04.12.2023.",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                          NavUtils.vremenskaCard(
                              "23:59",
                              "Modeliranje podataka",
                              "Predaja projektnog zadatka",
                              "Predaja projektnog zadatka iz kolegija Modeliranje podataka",
                              "Predaj"),
                          NavUtils.vremenskaCard(
                              "23:59",
                              "Modeliranje podataka",
                              "Predaja timskog izvještaja",
                              "Predaja prvog timskog izvještaja iz kolegija Modeliranje podataka",
                              "Predaj"),
                        ],
                      )),
                      decoration: BoxDecoration(
                          color: Color(0xFF6C73a6),
                          borderRadius: BorderRadius.circular(30)),
                    ),
                  ),
                )
              ],
            ))
      ]),
    );
  }
}
