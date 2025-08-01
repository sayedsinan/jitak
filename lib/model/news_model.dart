class NewsArticle {
  final String? title;
  final String? description;
  final String? author;
  final String? url;
  final String? urlToImage;
  final String? publishedAt;
  final String? content;
  final Source? source;

  NewsArticle({
    this.title,
    this.description,
    this.author,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,
    this.source,
  });

  factory NewsArticle.fromJson(Map<String, dynamic> json) {
    return NewsArticle(
      title: json['title'],
      description: json['description'],
      author: json['author'],
      url: json['url'],
      urlToImage: json['urlToImage'],
      publishedAt: json['publishedAt'],
      content: json['content'],
      source: json['source'] != null ? Source.fromJson(json['source']) : null,
    );
  }
}

class Source {
  final String? id;
  final String? name;

  Source({this.id, this.name});

  factory Source.fromJson(Map<String, dynamic> json) {
    return Source(
      id: json['id'],
      name: json['name'],
    );
  }
}
