class LatestNews {
  final String imgUrl;
  final String category;
  final String title;
  final String author;
  final String content;

  LatestNews(
      {required this.imgUrl,
      required this.category,
      required this.title,
      required this.author,
      required this.content});
}

List<LatestNews> latestNewsList = [
  LatestNews(
      imgUrl: 'assets/tour.png',
      category: 'BIG DATA',
      title: 'Why Big Data Needs Thick Data?',
      author: "Trianurdin, B",
      content: """
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."""),
  LatestNews(
      imgUrl: 'assets/tour.png',
      category: 'WEB DEVELOPER',
      title: 'Basic Data Structures for a beginner web developer',
      author: "Alexander Timonty",
      content: """
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."""),
];


// *********************FROM BACKEND
// Future<List<LatestNews>> fetchLatestNews() async {
//   final res = await http.get(Uri.parse('your_backend_url_here'));

//   if (res .....) {
//     
//     List<dynamic> jsonList = json.decode(response.body);
//     List<LatestNews> latestNewsList = [];

//     for (var json in jsonList) {
//       latestNewsList.add(LatestNews.fromJson(json));
//     }

//     return latestNewsList;
//   } else {
//     // If the server did not return a 200 OK response, throw an error.
//     throw Exception('Failed to load latest news');
//   }
// }

// **********NEW LIST USING THE DATA FETCHED
// List<LatestNews> latestNewsList = await fetchLatestNews();

