class Article {
  String title;
  String content;
  List<String> categories;
  String? cover;
  String creator;
  DateTime createdAt;
  DateTime updatedAt;
  Article(
      {required this.title,
      required this.content,
      required this.categories,
      this.cover,
      required this.creator,
      required this.createdAt,
      required this.updatedAt});
}

List<Article> staticArticles = [
  Article(
    title: "Pencemaran Lingkungan, Lihat Penyebab dan Akibatnya",
    content:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sollicitudin accumsan tortor, at dictum ex. Nullam neque tortor, faucibus a volutpat nec, placerat non leo. Vestibulum dignissim dapibus arcu at posuere. Proin tristique urna nunc, \n\n in faucibus ante ullamcorper ac. Mauris eu imperdiet urna, eget egestas felis. Nulla non nibh ut lacus dignissim consequat scelerisque id mauris. Sed sed vestibulum magna. Maecenas hendrerit odio sed velit bibendum, a vehicula est tempor. Quisque finibus sodales ex, eget condimentum odio imperdiet in. Vivamus rutrum leo justo, eu viverra nisl tempus ut. Mauris in magna lectus. Nunc blandit neque dapibus, posuere odio at, aliquam nunc.Integer purus nisl, blandit a aliquam quis, tristique ut sem. Cras ac sem vitae lacus elementum scelerisque. Integer tincidunt felis quis felis molestie, eget consectetur ipsum ornare. Curabitur porta commodo dui quis lobortis. In dignissim eu dui ut congue. Aenean dictum dolor rhoncus lorem condimentum vehicula. Phasellus ut dolor a odio ornare imperdiet. Praesent porta est feugiat magna pellentesque, at commodo est ultricies.",
    categories: ["Gaya Hidup", "Lingkungan", "Kesehatan"],
    cover: "assets/images/articles/article_1.jpg",
    creator: "Hafizh",
    createdAt: DateTime(2023, 11, 29, 5, 30),
    updatedAt: DateTime(2023, 11, 30, 10, 30),
  ),
  Article(
    title: "Digitalisasi Game Board di era sekarang",
    content:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sollicitudin accumsan tortor, at dictum ex. Nullam neque tortor, faucibus a volutpat nec, placerat non leo. Vestibulum dignissim dapibus arcu at posuere. Proin tristique urna nunc, \n\n in faucibus ante ullamcorper ac. Mauris eu imperdiet urna, eget egestas felis. Nulla non nibh ut lacus dignissim consequat scelerisque id mauris. Sed sed vestibulum magna. Maecenas hendrerit odio sed velit bibendum, a vehicula est tempor. Quisque finibus sodales ex, eget condimentum odio imperdiet in. Vivamus rutrum leo justo, eu viverra nisl tempus ut. Mauris in magna lectus. Nunc blandit neque dapibus, posuere odio at, aliquam nunc.Integer purus nisl, blandit a aliquam quis, tristique ut sem. Cras ac sem vitae lacus elementum scelerisque. Integer tincidunt felis quis felis molestie, eget consectetur ipsum ornare. Curabitur porta commodo dui quis lobortis. In dignissim eu dui ut congue. Aenean dictum dolor rhoncus lorem condimentum vehicula. Phasellus ut dolor a odio ornare imperdiet. Praesent porta est feugiat magna pellentesque, at commodo est ultricies.",
    categories: ["Game", "Teknologi", "Entertainment"],
    cover: "assets/images/articles/article_2.jpg",
    creator: "Hafizh",
    createdAt: DateTime(2023, 11, 29, 5, 30),
    updatedAt: DateTime(2023, 11, 30, 10, 30),
  ),
  Article(
    title: "Meningkatnya Pemuda Muslim di Amerika pada tahun 2023",
    content:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sollicitudin accumsan tortor, at dictum ex. Nullam neque tortor, faucibus a volutpat nec, placerat non leo. Vestibulum dignissim dapibus arcu at posuere. Proin tristique urna nunc, \n\n in faucibus ante ullamcorper ac. Mauris eu imperdiet urna, eget egestas felis. Nulla non nibh ut lacus dignissim consequat scelerisque id mauris. Sed sed vestibulum magna. Maecenas hendrerit odio sed velit bibendum, a vehicula est tempor. Quisque finibus sodales ex, eget condimentum odio imperdiet in. Vivamus rutrum leo justo, eu viverra nisl tempus ut. Mauris in magna lectus. Nunc blandit neque dapibus, posuere odio at, aliquam nunc.Integer purus nisl, blandit a aliquam quis, tristique ut sem. Cras ac sem vitae lacus elementum scelerisque. Integer tincidunt felis quis felis molestie, eget consectetur ipsum ornare. Curabitur porta commodo dui quis lobortis. In dignissim eu dui ut congue. Aenean dictum dolor rhoncus lorem condimentum vehicula. Phasellus ut dolor a odio ornare imperdiet. Praesent porta est feugiat magna pellentesque, at commodo est ultricies.",
    categories: ["Gaya Hidup", "Lingkungan", "Berita"],
    cover: "assets/images/articles/article_3.jpg",
    creator: "Hafizh",
    createdAt: DateTime(2023, 11, 29, 5, 30),
    updatedAt: DateTime(2023, 11, 30, 10, 30),
  ),
];
List<String> listCategory = [
  "Kesahatan",
  "Gaya Hidup",
  "Makanan & Minuman",
  "Olahraga",
  "Teknologi",
  "Politik",
  "Berita",
  "Entertainment",
  "Game",
  "Lingkungan"
];
