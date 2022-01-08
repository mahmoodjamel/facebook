import 'package:facebook/Models/user_model.dart';
import 'package:flutter/material.dart';

class UserWidget extends StatelessWidget {
  UserModel userModel;

  UserWidget(this.userModel);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          width: 100,
          height: 150,
          child: Image.network(userModel.imageStory,fit: BoxFit.cover,),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
         child: Align(
           alignment: Alignment.topLeft,
          child: CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(userModel.imageUrl),
          ),
         ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
          width: 100,
          height: 150,
          child:Align(
          alignment: Alignment.bottomCenter,
            child: Text(
            userModel.name,style: TextStyle(
              color: Colors.white,fontWeight: FontWeight.bold
            ),
          ),
        )
        ),
      ],
    );
  }
}
