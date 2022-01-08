import 'package:facebook/Models/post_model.dart';
import 'package:facebook/Models/user_model.dart';
import 'package:facebook/Widget/post_widget.dart';
import 'package:flutter/material.dart';

import 'Widget/user_widget.dart';
import 'dummy_data/dummy_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FaceBook'),
        actions: [Icon(Icons.search), Icon(Icons.chat_bubble_outline)],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                        'https://www.slazzer.com/static/images/home-page/banner-orignal-image.jpg'),
                  ),
                ),
                Container(
                  width: 300,
                  child: Expanded(
                      child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 5),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50)),
                      hintText: '     what are you thinking about?',
                      hintStyle: TextStyle(color: Colors.black),
                    ),
                  )),
                ),
              ],
            ),
            Divider(
              color: Colors.black12,
              height: 20,
              thickness: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal:15,vertical: 10 ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Stories'),
                Spacer(),
                Text('SeeActive',style: TextStyle(
                  color: Colors.black45
                ),),
                Icon(Icons.arrow_forward_ios,color: Colors.black45,size: 10),
              ],
              ),
            ),

            Container(
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: users.map((e) => UserWidget(e)).toList(),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Divider(
                    color: Colors.black12,
                    height: 20,
                    thickness: 10,
                  ),
                  Container(
                    child: Column(
                      children: posts.map((e) => PostWiget(e)).toList(),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
