import 'package:astrum/models/event.dart';
import 'package:astrum/widgets/eventWidget.dart';
import 'package:astrum/widgets/postWidget.dart';
import 'package:flutter/material.dart';
import '../models/post.dart';

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
                Image.asset(
                  'assets/prozirno_logo.png',
                  height: 75.0,
                  width: 125,
                ), // Logo
                SizedBox(width: 50),
                // Horizontal navigation
                _navItem('NASLOVNICA'),
                _navItem('KOLEGIJI I AKTIVNOSTI'),
                _navItem('FORUM STUDENATA'),
                _navItem('OGLASNIK INSTRUKCIJA'),
                _navItem('ANTISTRES KUTAK'),
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
                              padding: EdgeInsets.fromLTRB(8, 20, 8, 8),
                              child: Text(
                                "GRUPE",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            _buildButton("Button 1", 30, 60),
                            _buildButton("Button 1", 30, 60),
                            _buildButton("Button 1", 30, 60),
                            SizedBox(
                              height: 20,
                            ),
                            _buildButton("Prikazi sve", 10, 20)
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
                      _buildZadaci(),
                      _buildCalendar("rect"),
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

  Widget _navItem(String title) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: TextButton(
        onPressed: () {},
        child: Text(title, style: TextStyle(color: Colors.white)),
      ),
    );
  }

  Widget _buildButton(String text, double vert, double hori) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(text),
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          padding: EdgeInsets.symmetric(vertical: vert, horizontal: hori),
          primary: Colors.white, // Button color
          onPrimary: Colors.black, // Text color
          textStyle: TextStyle(fontSize: 16),
        ),
      ),
    );
  }

  Widget _buildZadaci() {
    return Container(
      color: Colors.blue,
    );
  }

  Widget _buildCalendar(String text) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
      child: Container(
        height: 260.0, // Visina pravokutnika
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
                  height: 200,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 7,
                        childAspectRatio: 1.0,
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
                              style: TextStyle(fontSize: 18),
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
}
