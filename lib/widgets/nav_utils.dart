import 'package:astrum/pages/moje_grupe.dart';
import 'package:astrum/pages/moje_ocjene.dart';
import 'package:astrum/pages/moji_kolegiji.dart';
import 'package:astrum/pages/moji_zadaci.dart';
import 'package:astrum/pages/soba_za_ucenje.dart';
import 'package:flutter/material.dart';

import '../pages/vremenska_crta.dart';

class NavUtils {
  static Widget buildVremenskaCrta(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
      child: Container(
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  offset: Offset(0, 3),
                  blurRadius: 7,
                  spreadRadius: 2)
            ]),
        child: Column(
          children: [
            Column(
              children: [
                TextButton(
                  child: Text("VREMENSKA CRTA",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => VremenskaCrta(),
                  )),
                ),
                Divider(),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("15.11.2023.",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Text("Kolokvij"),
                    Text("-----------------------------------------"),
                    Text("15:30")
                  ],
                ),
                Row(
                  children: [
                    Text("Samoprovjera"),
                    Text("-------------------------------"),
                    Text("23:59")
                  ],
                ),
                Divider(),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("04.12.2023.",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Text("Predaja timskog izvještaja"),
                    Text("------------"),
                    Text("23:59")
                  ],
                ),
                Row(
                  children: [
                    Text("Predaja projektnog zadatka"),
                    Text("----------"),
                    Text("23:59")
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  static Widget buildCalendar() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
      child: Container(
        height: 200.0, // Visina pravokutnika
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.25),
                spreadRadius: 2,
                blurRadius: 7,
                offset: Offset(0, 3))
          ],
          color: Colors.white, // Boja pravokutnika
          borderRadius: BorderRadius.circular(15.0), // Obli kutovi
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.fromLTRB(8, 20, 8, 0),
            child: Column(
              children: [
                Text(
                  "STUDENI 2023",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Divider(),
                Container(
                  height: 130,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 7,
                        childAspectRatio: 1.5,
                        crossAxisSpacing: 2.0,
                        mainAxisSpacing: 2.0,
                      ),
                      itemCount: 31,
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              '${index + 1}',
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static Widget navItem(
      BuildContext context, String title, Widget Function() pageBuilder) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: TextButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => pageBuilder()));
        },
        child: Text(title, style: TextStyle(color: Colors.white)),
      ),
    );
  }

  static Widget navItemDrop(BuildContext context, String title) {
    List<String> menuItems = [
      'MOJI KOLEGIJI',
      'MOJE OCJENE',
      'MOJE GRUPE',
      'MOJI ZADACI',
      'SOBA ZA UČENJE'
    ]; // Example menu items

    void navigateToSelectedPage(String choice) {
      switch (choice) {
        case 'MOJI KOLEGIJI':
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => MojiKolegiji()));
          break;
        case 'MOJE OCJENE':
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => MojeOcjene()));
          break;
        case 'MOJE GRUPE':
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => MojeGrupe()));
          break;
        case 'MOJI ZADACI':
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => MojiZadaci()));
          break;
        case 'SOBA ZA UČENJE':
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => SobaZaUcenje()));
          break;
        // Add other cases for each menu item
        default:
          print("Not implemented: $choice");
      }
    }

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: PopupMenuButton<String>(
        color: Color(0xFF6c73a6),
        onSelected: navigateToSelectedPage,
        itemBuilder: (BuildContext context) {
          return menuItems.map((String choice) {
            return PopupMenuItem<String>(
              value: choice,
              child: Text(
                choice,
                style: TextStyle(color: Colors.white),
              ),
            );
          }).toList();
        },
        child: Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 14),
        ),
      ),
    );
  }

  static Widget buildButton(String text, double vert, double hori,
      Color buttonColor, Color textColor) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(text,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
        style: ElevatedButton.styleFrom(
          elevation: 10,
          shadowColor: Colors.black,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          padding: EdgeInsets.symmetric(vertical: vert, horizontal: hori),
          primary: buttonColor, // Button color
          onPrimary: textColor, // Text color
          textStyle: TextStyle(fontSize: 16),
        ),
      ),
    );
  }

  static Widget buildZadaci() {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        child: Container(
            padding: EdgeInsets.all(20),
            height: 225,
            width: 400,
            decoration: BoxDecoration(
                color: Colors.amber,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      spreadRadius: 2,
                      blurRadius: 7,
                      offset: Offset(0, 3))
                ],
                borderRadius: BorderRadius.circular(15.0)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "ZADACI",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.25),
                                spreadRadius: 2,
                                blurRadius: 7,
                                offset: Offset(0, 3))
                          ],
                          color: Colors.white,
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Text(
                            "MAT",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Divider(
                            thickness:
                                2, // Specify the thickness of the Divider
                            color: Colors.black,
                          ),
                          Text("- Napisati dz"),
                          Text("- Proći skriptu")
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.25),
                                  spreadRadius: 2,
                                  blurRadius: 7,
                                  offset: Offset(0, 3))
                            ],
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Text("ASBP",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Divider(
                              thickness:
                                  2, // Specify the thickness of the Divider
                              color: Colors.black,
                            ),
                            Text("- učiti teoriju"),
                            Text("- izvještaj")
                          ],
                        ))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                buildButton("Vidi sve", 10, 30, Color(0xFF6c73a6), Colors.white)
              ],
            )));
  }

  static Widget vremenskaCard(String vrijeme, String kolegij, String tip,
      String opis, String textButton) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(75, 15, 75, 0),
      child: Container(
        padding: EdgeInsets.all(15),
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(30)),
        child: Row(
          children: [
            Icon(Icons.task),
            SizedBox(
              width: 20,
            ),
            Text(vrijeme, style: TextStyle(color: Colors.grey)),
            SizedBox(
              width: 40,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    kolegij,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  Text(
                    tip,
                    style: TextStyle(fontStyle: FontStyle.italic, fontSize: 20),
                  ),
                  Text(opis)
                ],
              ),
            ),
            Spacer(),
            buildButton(textButton, 10, 30, Color(0xFF6c73a6), Colors.white)
          ],
        ),
      ),
    );
  }

  static Widget ucenjeCard(
      String ime_prezime, String kolegij, String datoteka, String opis) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(75, 15, 75, 0),
      child: Container(
          padding: EdgeInsets.all(15),
          height: 130,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(30)),
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/matko.png"),
                    radius: 30,
                  ),
                ],
              ),
              SizedBox(
                width: 75,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${ime_prezime}: ${kolegij}",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Divider(),
                  Text(opis),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [Icon(Icons.file_copy), Text(datoteka)],
                  ),
                ],
              ),
            ],
          )),
    );
  }

  static Widget oglasCard(String slika, String predmet, String Ime_prezime,
      String opis, String e_mail, String tel) {
    return SizedBox(
      width: 400,
      height: 400,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        clipBehavior: Clip
            .none, // Allows the child to render outside of the card's boundaries
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.topCenter,
            children: <Widget>[
              Positioned(
                top: -50,
                left:
                    -50, // Adjust these values to position the image correctly
                child: CircleAvatar(
                  radius: 50, // Adjust the size of the avatar
                  backgroundImage: AssetImage(
                      'assets/${slika}.png'), // Replace with your image
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: 10), // Adjust value to match the avatar radius
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      predmet,
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF6c73a6)),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          Ime_prezime,
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        )),
                    SizedBox(
                      height: 30,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        opis,
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(height: 75),
                    Text("E-mail: ${e_mail}",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text("Tel: ${tel}",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
