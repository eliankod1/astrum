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
      userName: "Marko Petrović",
      userImage: "assets/post1.png",
      content:
          "Ovaj tjedan posebno ističemo impresivne projekte naših učenika predstavljene na okružnom znanstvenom sajmu! Učenici su istraživali alternativne izvore energije u projektu 'Eko Energija Budućnosti', otkrivali čuda mikrobiologije u svakodnevnom životu i kreirali vlastite robote u projektu 'Robotika i Mi'.\n\nČestitamo našim mladim znanstvenicima na kreativnosti i trudu koji inspiriraju sve nas. #Znanost #MladiZnanstvenici #BudućnostJeOvdje",
      postTime: "1h ago"),
  Post(
      userName: "Ivan Horvat",
      userImage: "assets/post2.png",
      content:
          "Ove godine naši sportaši postižu nevjerojatne rezultate! Od osvajanja košarkaškog turnira do izvanrednih nogometnih pobjeda, naši učenici pokazuju pravu sportsku izvrsnost. Hvala trenerima i navijačima za podršku! #SportskiDuh #Pobjednici",
      postTime: "5h ago"),
  Post(
      userName: "Luka Kovačić",
      userImage: "assets/post3.png",
      content:
          "Ne propustite našu godišnju izložbu umjetnosti i školsku predstavu! Učenici su uložili srce u svako djelo i predstavu, pokazujući nevjerojatan talent. Pridružite nam se u slavljenju umjetnosti! #Umjetnost#MladiUmjetnici",
      postTime: "7h ago"),
  Post(
      userName: "Josip Novak",
      userImage: "assets/post4.png",
      content:
          "Naši učenici predvode ekološke inicijative - od recikliranja do sadnje drveća! Pridružite se njihovim naporima za očuvanje okoliša i učenje o održivosti. Svaka mala akcija čini razliku! #Zeleni#Ekologij",
      postTime: "12h ago"),
  // Add more posts as needed
];
