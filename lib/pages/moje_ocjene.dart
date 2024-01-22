import 'package:flutter/material.dart';
import '../widgets/nav_utils.dart';
import 'antistres_kutak.dart';
import 'forum_studenata.dart';
import 'homepage.dart';
import 'oglasnik.dart';

class MojeOcjene extends StatefulWidget {
  @override
  State<MojeOcjene> createState() => _MojeOcjeneState();
}

class _MojeOcjeneState extends State<MojeOcjene> {
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
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 150, 15, 0),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text(
                          "ARHIVA KOLEGIJA",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          "2021./2022.",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic),
                        )
                      ],
                    ),
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            spreadRadius: 2,
                            blurRadius: 5,
                          )
                        ]),
                  ),
                )
              ],
            )),
        Expanded(
          flex: 6,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 60, 30, 30),
            child: Container(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Moje ocjene",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Zimski semestar 2023./2024.",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ocjeneCard("Objektno programiranje 1", "70%"),
                    SizedBox(
                      height: 20,
                    ),
                    ocjeneCard("Baze podataka", "65%"),
                    SizedBox(
                      height: 20,
                    ),
                    ocjeneCard("Modeliranje podataka", "71%"),
                    SizedBox(
                      height: 20,
                    ),
                    ocjeneCard("Operacijska istraživanja", "69%"),
                    SizedBox(
                      height: 20,
                    ),
                    ocjeneCard("Osnove programiranja 1", "75%"),
                    SizedBox(
                      height: 20,
                    ),
                    ocjeneCard("Matematika 1", "77%"),
                  ]),
            ),
          ),
        ),
        Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(25, 100, 25, 0),
              child: Column(
                children: [
                  NavUtils.buildVremenskaCrta(context),
                  NavUtils.buildCalendar(),
                  NavUtils.buildZadaci(),
                ],
              ),
            )),
      ]),
    );
  }

  Widget ocjeneCard(String kolegij, String postotak) {
    return Container(
      padding: EdgeInsets.all(20),
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Color(0xFF6c73a6), borderRadius: BorderRadius.circular(30)),
      child: Row(children: [
        Text(
          kolegij,
          style: TextStyle(
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Colors.white),
        ),
        Spacer(),
        Text(
          postotak,
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 24),
        )
      ]),
    );
  }
}
