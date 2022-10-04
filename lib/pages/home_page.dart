import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "facebook",
          style: TextStyle(color: Colors.lightBlue, fontSize: 24),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            iconSize: 24,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.camera_alt,
              color: Colors.black,
            ),
            iconSize: 24,
          ),
        ],
      ),
      body: ListView(
        children: [
          //post create
          Container(
            height: 120,
            color: Colors.white,
            padding: EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Column(
              children: [
                Expanded(
                    child: Row(
                  children: [
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("assets/images/user_5.jpeg"))),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        height: 46,
                        padding: EdgeInsets.only(left: 15, right: 15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(23),
                            border: Border.all(
                              width: 1,
                              color: Colors.grey[500]!,
                            )),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "What's on your mind?",
                              border: InputBorder.none,
                              hintStyle: TextStyle(color: Colors.grey[700])),
                        ),
                      ),
                    )
                  ],
                )),
                Expanded(
                    child: Row(
                  children: [
                    Expanded(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const[
                        Icon(
                          Icons.video_call,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Live")
                      ],
                    )),
                    Container(
                      width: 1,
                      color: Colors.grey[300],
                      margin: EdgeInsets.only(top: 14, bottom: 14),
                    ),
                    Expanded(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const[
                        Icon(
                          Icons.photo,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Photo")
                      ],
                    )),
                    Container(
                      width: 1,
                      color: Colors.grey[300],
                      margin: EdgeInsets.only(top: 14, bottom: 14),
                    ),
                    Expanded(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.location_on,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Chek in")
                      ],
                    )),
                  ],
                )),
              ],
            ),
          ),

          //post stories
          Container(
            margin: EdgeInsets.only(top: 10),
            height: 200,
            color: Colors.white,
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(width: 10,),

                makeStory(
                    storyImage: "assets/images/story_5.jpeg",
                    userImage: "assets/images/user_5.jpeg",
                    userName: "John"
                ),

                makeStory(
                    storyImage: "assets/images/story_4.jpeg",
                    userImage: "assets/images/user_4.jpeg",
                    userName: "Amanda"
                ),

                makeStory(
                    storyImage: "assets/images/story_3.jpeg",
                    userImage: "assets/images/user_3.jpeg",
                    userName: "Stave"
                ),

                makeStory(
                    storyImage: "assets/images/story_2.jpeg",
                    userImage: "assets/images/user_2.jpeg",
                    userName: "Mark"
                ),

                makeStory(
                    storyImage: "assets/images/story_1.jpeg",
                    userImage: "assets/images/user_1.jpeg",
                    userName: "Luxury"
                ),
              ],
            ),
          ),

          //post feed
          makeFeed(
            userName: "Harry Potter",
            userImage: "assets/images/user_2.jpeg",
            feedTime: "1 hr ago",
            feedText: "All the Lorem Ipsum generation on the Internet tend to repeat predefined.",
            feedImage: "assets/images/story_3.jpeg",
            feedImage1: "assets/images/story_1.jpeg",
          ),

          makeFeed(
              userName: "Amanda",
              userImage: "assets/images/user_4.jpeg",
              feedTime: "1 hr ago",
              feedText: "All the Lorem Ipsum generation on the Internet tend to repeat predefined.",
              feedImage: "assets/images/story_2.jpeg",
              feedImage1: "assets/images/story_5.jpeg",
          ),
        ],
      ),
    );
  }

  Widget makeFeed({userName,userImage,feedTime, feedImage1, feedText,feedImage}){
    return  Container(
      margin: EdgeInsets.only(top: 10),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //#header
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: [
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(userImage),
                                fit: BoxFit.cover,
                              )
                          ),
                        ),
                        SizedBox(width: 10,),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(userName, style: TextStyle(color: Colors.grey[900], fontSize: 18, fontWeight: FontWeight.bold, ),),
                            SizedBox(height: 3,),
                            Text(feedTime, style: TextStyle(fontSize: 15, color: Colors.grey),)
                          ],
                        )
                      ],
                    ),

                    IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz, size: 30, color: Colors.grey[600],))
                  ],
                ),
                SizedBox(height: 20,),
                Text(feedText, style: TextStyle(fontSize: 15, color: Colors.grey[800], height: 1.5, letterSpacing: 0.7),),
                SizedBox(height: 20,),
              ],
            ),
          ),

          //#photo
          Row(
            children: [
              Expanded(child: Container(
                height: 240,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(feedImage, ),
                        fit: BoxFit.cover
                    )
                ),
              ),),

              Expanded(child: Container(
                height: 240,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(feedImage1, ),
                        fit: BoxFit.cover
                    )
                ),
              ),),
            ],
          ),

          //#likes
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    makeLike(),
                    Transform.translate(
                        offset: Offset(-5, 0),
                      child: makeLove(),
                    ),
                    SizedBox(width: 5,),
                    Text("9.5k", style: TextStyle(fontSize: 15, color: Colors.grey[800]),)
                  ],
                ),
                Text("400 comment", style: TextStyle(color: Colors.grey[800], fontSize: 13),)
              ],
            ),
          ),

          //#like, comment, share
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              makeLikeButton(true),
              makeCommentButton(),
              makeShareButton()
            ],
          ),
          SizedBox(height: 10,),
        ],
      ),

    );
  }

  Widget makeStory({storyImage, userImage, userName}) {
    return AspectRatio(
      aspectRatio: 1.3 / 2,
      child: Container(
        margin: EdgeInsets.only(
          right: 10,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                image: AssetImage(storyImage),
                fit: BoxFit.cover
            )
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                colors: [
                  Colors.black.withOpacity(.9),
                  Colors.black.withOpacity(.1),
                ]
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.blue, width: 2),
                    image: DecorationImage(
                        image: AssetImage(userImage),
                        fit: BoxFit.cover
                    )
                ),
              ),

              Text(userName, style: TextStyle(color: Colors.white),),
            ],
          ),
        ),
      ),
    );
  }

  Widget makeLikeButton(bool isActive){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.thumb_up, color: isActive? Colors.blue: Colors.grey, size: 18,),
            SizedBox(width: 5,),
            Text("Like", style: TextStyle(color: isActive? Colors.blue: Colors.grey),)
          ],
        ),
      ),
    );
  }

  Widget makeCommentButton(){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.chat, color: Colors.grey, size: 18,),
            SizedBox(width: 5,),
            Text("Comment", style: TextStyle(color:Colors.grey),)
          ],
        ),
      ),
    );
  }

  Widget makeShareButton(){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.share, color: Colors.grey, size: 18,),
            SizedBox(width: 5,),
            Text("Share", style: TextStyle(color:Colors.grey),)
          ],
        ),
      ),
    );
  }

  Widget makeLike(){
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white)
      ),
      child: Center(
        child: Icon(Icons.thumb_up, size: 12, color: Colors.white,),
      ),
    );
  }

  Widget makeLove(){
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: Colors.red,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white)
      ),
      child: Center(
        child: Icon(Icons.favorite, size: 12, color: Colors.white,),
      ),
    );
  }
}
