import 'package:flutter/material.dart';
import 'package:radcode/model/dummy_data.dart';
import 'package:radcode/widgets/post_card.dart';
import 'post_card.dart';

class PostList extends StatelessWidget{
  PostList(): super();
  
  @override
  Widget build(BuildContext context) {
    return FutureBuilder <List<Post>>(
      future: Post.fetchPosts(){
      builder: (context, snapshot){
          if (snapshot.connectionState == ConnectonState.done){
            return Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(16.0),
                itemBuilder: (BuildContext _context, int i){
                  if(i < posts.length){
                    return buildPostCard(posts[i]);
                  }
                },
              )
            );
          }else if (snapshot.hasError) {
            throw Exception(snapshot.error);
          }else {
            return Container(
              padding: EdgeInsets.all(15),
              child: CircularProgessIndicator()
            );
          }
        },
      }
    );
  }
}