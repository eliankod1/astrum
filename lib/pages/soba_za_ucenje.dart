import 'package:astrum/pages/antistres_kutak.dart';
import 'package:astrum/pages/forum_studenata.dart';
import 'package:astrum/pages/oglasnik.dart';
import 'package:flutter/material.dart';
import '../widgets/nav_utils.dart';
import 'homepage.dart';

class SobaZaUcenje extends StatefulWidget {
  @override
  State<SobaZaUcenje> createState() => _SobaZaUcenjeState();
}

class _SobaZaUcenjeState extends State<SobaZaUcenje> {
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
              child: Padding(
                padding: const EdgeInsets.fromLTRB(50, 0, 50, 175),
                child: AspectRatio(
                  aspectRatio: 250 / 450,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.25),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3))
                        ],
                        borderRadius: BorderRadius.circular(60)),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 20, 8, 8),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "GRUPE",
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          NavUtils.buildButton("ASBP - Grupa 5", 30, 50,
                              Colors.white, Colors.black),
                          NavUtils.buildButton("InfoGenijalci", 30, 60,
                              Colors.white, Colors.black),
                          NavUtils.buildButton("OI - učenje", 30, 70,
                              Colors.white, Colors.black),
                          SizedBox(
                            height: 20,
                          ),
                          NavUtils.buildButton(
                              "Prikaži sve", 10, 20, Colors.white, Colors.black)
                        ]),
                  ),
                ),
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
                      "Soba za učenje",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
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
                                padding:
                                    const EdgeInsets.fromLTRB(15, 15, 15, 5),
                                child: Text("15.11.2023.",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                            NavUtils.ucenjeCard(
                              "Andrija Babić",
                              "Objektno programiranje",
                              "Osnove programiranja: Osnove sintakse programskog jezika.pdf",
                              "U nastavku se nalaze privitci koji Vam mogu poslužiti kod učenja dijela gradiva iz Osnova programiranja koje ulazi u kolokvij. Kolokvij će se održati u 355 u 14:30. ",
                            ),
                            NavUtils.ucenjeCard(
                                "Milena Milić",
                                "Matematika 1",
                                "Matematika 1: Funkcije. Kompozicija funkcija. Inverzne funkcije .pdf",
                                "Dragi studenti, ispod Vam se nalazi PDF dokument koji se odnosi na kratki online ispit koji vam je otvoren do kraja dana. Sretno!"),
                            SizedBox(
                              height: 20,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 15, 15, 5),
                                child: Text("04.12.2023.",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                            NavUtils.ucenjeCard(
                              "Doris Blažević",
                              "Modeliranje podataka",
                              "Modeliranje podataka:  Primjer modeliranja podataka poslovnog procesa skladišta",
                              "U nastavku se nalaze dodatni privitci vezani uz predavanje koje smo obradili 12.11.2023., a koji vam trebaju za projektni zadatak. Sretno!",
                            ),
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
        ]));
  }
}
