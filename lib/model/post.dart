import 'dart:convert';

class Post {
  final String title;
  final String url;
  final List<String> tags;

  Post(this.title, this.url, this.tags); //This is a shorthand constructor
  
  Post.fromJSON(Map<String, dynamic> json)
    : title = json['title'] ?? '',
      url = json['url'] ?? '',
      tags = json['tags'].cast<String>() ?? [];

  Map<String, dynamic> toJSON() => {'title': title, 'url': url, 'tags': tags };
}