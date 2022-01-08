import 'package:facebook/Models/post_model.dart';
import 'package:flutter/material.dart';

class PostWiget extends StatelessWidget {
  PostModel postModel;

  PostWiget(this.postModel);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage:
                          NetworkImage(postModel.postCreator.imageUrl),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(postModel.postCreator.name),
                    Spacer(),
                    Icon(Icons.more_horiz),
                    Icon(Icons.clear_rounded),
                  ],
                ),
              ),

              Container(

                width: 250,

                  child: Text(postModel.postCreator.timepost)
              ),
              SizedBox(height: 10),
              Container(
                width: 350,
                child: Text(postModel.postContent),
              ),
              SizedBox(height: 10,),
              Container(
                height: 250,
                width: double.infinity,
                child: Image.network(postModel.imageUrl,fit: BoxFit.cover,),
              ),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(

                  children: [
                    Icon(Icons.thumb_up),
                    Text(' ${postModel.numLike}'),
                    Spacer(),
                    Text('${postModel.numComment} Comment .'),
                    Text('${postModel.numShare} Share  '),
                  ],
                ),
              ),
              Divider(
                color: Colors.black,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      child: IconButton(onPressed: () {}, icon: Icon(Icons.thumb_up_alt_outlined))),
                  Text('Like                       '),
                  IconButton(onPressed: () {}, icon: Icon(Icons.chat_bubble_outline)),
                  Text('Comment'),

                ],

              ),
              Divider(
                color: Colors.black12,
                height: 20,
                thickness: 10,
              ),

            ],
          ),
        )
      ],
    );
  }
}
