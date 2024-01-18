import 'package:flutter/material.dart';

class EventWidget extends StatelessWidget {
  final String title;
  final String eventDate;
  final String description;
  final String imageUrl; // Assuming you have a URL for the event image

  EventWidget({
    required this.title,
    required this.eventDate,
    required this.description,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Image at the top half
            ClipRRect(
              borderRadius:
                  BorderRadius.circular(30), // Rounded corners for the image
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
                width: double.infinity,
                height: 500, // Fixed height for the image
              ),
            ),
            SizedBox(height: 8.0),
            // Title
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            SizedBox(height: 4.0),
            // Event Date
            Text(
              eventDate,
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            SizedBox(height: 8.0),
            // Description
            Text(
              description,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
