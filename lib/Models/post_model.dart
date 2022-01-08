import 'package:facebook/Models/user_model.dart';

class PostModel{
  UserModel postCreator;
  String postContent;
  String imageUrl;
  int numLike;
  int numComment;
  int numShare;
  PostModel(this.postCreator,this.postContent,this.imageUrl,this.numComment,this.numLike,this.numShare);
}