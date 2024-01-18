// Example data model for a post
class Event {
  final String title;
  final String eventDate;
  final String description;
  final String imageUrl;
  Event({
    required this.title,
    required this.eventDate,
    required this.description,
    required this.imageUrl,
  });
}

// Example list of posts
List<Event> events = [
  Event(
      title: "BRUCOŠIJADA FIDIT",
      eventDate: "22.2.2022.",
      description: "Description",
      imageUrl: "assets/event_brucosijada.png"),
  // Add more posts as needed
];
