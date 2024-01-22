import 'package:astrum/models/event.dart';
import 'package:astrum/widgets/eventWidget.dart';
import 'package:astrum/widgets/nav_utils.dart';
import 'package:astrum/widgets/postWidget.dart';
import 'package:flutter/material.dart';
import '../models/post.dart';
import 'antistres_kutak.dart';
import 'forum_studenata.dart';
import 'oglasnik.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isShowingPosts = false;
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
        body: Row(
          children: <Widget>[
            //prvi stupac
            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(50, 0, 50, 300),
                  child: AspectRatio(
                    aspectRatio: 250 / 350,
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
                              padding: EdgeInsets.fromLTRB(50, 20, 8, 8),
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
                            NavUtils.buildButton("Prikaži sve", 10, 20,
                                Colors.white, Colors.black)
                          ]),
                    ),
                  ),
                )),
            //drugi stupac
            Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),
                      child: Container(
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(15, 8, 0, 8),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Image.asset('assets/pfp.png'),
                                    ),
                                  )),
                              Expanded(
                                  flex: 10,
                                  child: Container(
                                    color: Colors.white,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    padding: EdgeInsets.fromLTRB(8, 8, 100, 8),
                                    child: Container(
                                      height: 60,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.black
                                                    .withOpacity(0.25),
                                                spreadRadius: 2,
                                                blurRadius: 7,
                                                offset: Offset(0, 3))
                                          ]),
                                      child: Padding(
                                        padding: const EdgeInsets.all(20),
                                        child: TextField(
                                          decoration: InputDecoration(
                                              hintText: "Napiši novu objavu"),
                                        ),
                                      ),
                                    ),
                                  )),
                            ],
                          ),
                          height: 100,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.25),
                                    spreadRadius: 2,
                                    blurRadius: 7,
                                    offset: Offset(0, 3))
                              ],
                              borderRadius: BorderRadius.circular(30))),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "OBJAVE",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: isShowingPosts
                                  ? FontWeight.normal
                                  : FontWeight.bold),
                        ),
                        Switch(
                          value: isShowingPosts,
                          onChanged: (bool value) {
                            setState(() {
                              isShowingPosts = value;
                            });
                          },
                        ),
                        Text(
                          "DOGAĐAJI",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: isShowingPosts
                                  ? FontWeight.bold
                                  : FontWeight.normal),
                        )
                      ],
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.25),
                                  spreadRadius: 2,
                                  blurRadius: 7,
                                  offset: Offset(0, 3))
                            ],
                            borderRadius: BorderRadius.circular(30)),
                        child: isShowingPosts
                            ? _buildEventsList()
                            : _buildPostsList(),
                      ),
                    )
                  ],
                )),
            // Inside the third 'Expanded', replace the 'GridView.builder' with this:
            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 100, 8, 0),
                  child: Column(
                    children: [
                      NavUtils.buildVremenskaCrta(context),
                      NavUtils.buildCalendar(),
                      NavUtils.buildZadaci(),
                    ],
                  ),
                ))
          ],
        ));
  }

  Widget _buildEventsList() {
    return ListView.builder(
        itemCount: events.length,
        itemBuilder: ((context, index) {
          return EventWidget(
              title: events[index].title,
              eventDate: events[index].eventDate,
              description: events[index].description,
              imageUrl: events[index].imageUrl);
        }));
  }

  Widget _buildPostsList() {
    return ListView.builder(
        itemCount: posts.length,
        itemBuilder: ((context, index) {
          return PostWidget(
              userName: posts[index].userName,
              userImage: posts[index].userImage,
              content: posts[index].content,
              postTime: posts[index].postTime);
        }));
  }
}
