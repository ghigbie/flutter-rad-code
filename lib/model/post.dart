import 'dart:convert';
import 'package:http/http.dart';

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

  static Future<List<Post>> fetchPosts() async{
    //ANDROID EMULATOR URL= http://10.0.2.2:8080/posts
    final url = 'http://localhost:8080/posts';
    final response = await get(url);
    //Everything below is completed after the response is done
    if (response.statusCode == 200){
      List<dynamic> jsonPostList = jsonDecode(response.body);
    }else{
      throw Exception('Failed to load post');
    }
  }
}