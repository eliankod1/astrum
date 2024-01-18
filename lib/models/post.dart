// Example data model for a post
class Post {
  final String userName;
  final String userImage;
  final String content;
  final String postTime;

  Post({
    required this.userName,
    required this.userImage,
    required this.content,
    required this.postTime,
  });
}

// Example list of posts
List<Post> posts = [
  Post(
      userName: "Elian Kodelja",
      userImage: "assets/pfp.png",
      content:
          "orem ipsum dolor sit amet, consectetur adipiscing elit. Proin urna nibh, ultricies nec ultrices nec, maximus nec enim. In at enim magna. Morbi venenatis venenatis urna, nec dictum ante mollis sed. Morbi nec ultrices urna. Praesent commodo, enim eu tincidunt lacinia, lacus sem tempor lectus, eget hendrerit eros mauris ac libero. In orci orci, blandit eget tortor ac, ornare placerat odio. Curabitur consectetur, lacus vel scelerisque egestas, velit dolor bibendum tortor, id elementum nisl turpis id erat.",
      postTime: "1h ago"),
  Post(
      userName: "User 2",
      userImage: "assets/pfp.png",
      content: "Post content 2",
      postTime: "2h ago"),
  Post(
      userName: "User 2",
      userImage: "assets/pfp.png",
      content: "Post content 2",
      postTime: "2h ago"),
  Post(
      userName: "User 2",
      userImage: "assets/pfp.png",
      content: "Post content 2",
      postTime: "2h ago"),
  Post(
      userName: "User 2",
      userImage: "assets/pfp.png",
      content: "Post content 2",
      postTime: "2h ago"),
  Post(
      userName: "User 2",
      userImage: "assets/pfp.png",
      content: "Post content 2",
      postTime: "2h ago"),
  Post(
      userName: "User 2",
      userImage: "assets/pfp.png",
      content: "Post content 2",
      postTime: "2h ago"),
  // Add more posts as needed
];
