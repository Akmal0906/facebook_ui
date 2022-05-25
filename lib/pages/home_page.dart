import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String id = 'home_page';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: const Text(
          'Facebook',
          style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.grey,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.camera_alt,
              color: Colors.grey,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          //# post create
          Container(
            color: Colors.black,
            height: 120,
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Container(
                        height: 55,
                        width: 50,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/images/user_5.jpeg'))),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: Container(
                        height: 46,
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        decoration: BoxDecoration(
                          border:
                              Border.all(width: 1, color: Colors.grey.shade800),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                              hintText: 'What is your mind ?',
                              hintStyle: TextStyle(color: Colors.grey),
                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.search,color: Colors.grey,)),
                        ),
                      ),),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            IconButton(
                              icon: const Icon(
                                Icons.live_tv,
                                color: Colors.red,
                              ),
                              onPressed: () {},
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text('Live',style: TextStyle(color: Colors.grey),),
                          ],
                        ),
                      ),
                      Container(
                        width: 1,
                        color: Colors.grey,
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            IconButton(
                              icon: const Icon(
                                Icons.photo,
                                color: Colors.green,
                              ),
                              onPressed: () {},
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text('Photo',style: TextStyle(color: Colors.grey),),
                          ],
                        ),
                      ),
                      Container(
                        width: 1,
                        color: Colors.grey,
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            IconButton(
                              icon: const Icon(
                                Icons.location_on,
                                color: Colors.red,
                              ),
                              onPressed: () {},
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text('check in',style: TextStyle(color: Colors.grey),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5,),
          //#stories
          Container(
            padding: const EdgeInsets.only(right: 10),
            margin: const EdgeInsets.only(
              top: 5,
            ),
            height: 140,
            color: Colors.black,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                makeItem(
                  'assets/images/story_1.jpeg',
                  'assets/images/user_1.jpeg',
                  'User 1',
                ),
                makeItem(
                  'assets/images/story_2.jpeg',
                  'assets/images/user_2.jpeg',
                  'User 2',
                ),
                makeItem(
                  'assets/images/story_3.jpeg',
                  'assets/images/user_3.jpeg',
                  'User 3',
                ),
                makeItem(
                  'assets/images/story_4.jpeg',
                  'assets/images/user_4.jpeg',
                  'User 4',
                ),
                makeItem(
                  'assets/images/story_5.jpeg',
                  'assets/images/user_5.jpeg',
                  'User 5',
                ),
              ],
            ),
          ),
              const SizedBox(height: 5,),
          makeFeed(
              userImage: 'assets/images/user_1.jpeg',
              userName: 'User 1',
              feedTime: '1 hr ago',
              feedText: 'Hi everybody,i wish to nice mood to all,Life is very nice',
              feedImage: 'assets/images/feed_1.jpeg',
            feedImage2: 'assets/images/feed_2.jpeg',

          ),
          makeFeed(
            userImage: 'assets/images/user_1.jpeg',
            userName: 'User 1',
            feedTime: '1 hr ago',
            feedText: 'Hi everybody,i wish to nice mood to all,Life is very nice',
            feedImage: 'assets/images/feed_1.jpeg',
            feedImage2: 'assets/images/feed_2.jpeg',

          ),




        ],
      ),
    );
  }

  Widget makeItem(
    String storyImage,
    String userImage,
    String userName,
  ) {
    return AspectRatio(
      aspectRatio: 2.2/3,
      child: Container(
        margin: const EdgeInsets.only(left: 10, top: 5, bottom: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage(storyImage),
              fit: BoxFit.cover,
            ),
        ),
        child: Container(
          padding: const EdgeInsets.only(left: 5,bottom: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(23),
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.1),
              ])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Container(
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(23),
                 border: Border.all(color: Colors.blue,width: 2),
               ),
               child:  Container(

                 height: 46,
                 width: 46,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(23),
                   image: DecorationImage(
                     fit: BoxFit.cover,
                     image: AssetImage(userImage),
                   ),
                 ),
               ),
             ),
              Text(userName,style: const TextStyle(color: Colors.white,fontSize: 17),),
            ],
          ),
        ),
      ),
    );
  }

  Widget makeFeed({userName, userImage, feedTime, feedText, feedImage,feedImage2}) {
    return Container(
      margin: const EdgeInsets.only(top: 10),

      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //#header
          Container(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 10, top: 10),
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(userImage),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text(
                              userName,
                              style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            Text(
                              feedTime,
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                              ),
                            ),

                          ],
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 20),
                      child: const Icon(
                        Icons.more_horiz,
                        color: Colors.grey,
                        size: 30,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  feedText,
                  style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 17,
                      letterSpacing: .7,
                      height: 1.5),
                ),
              ],
            ),
          ),
          const SizedBox( height:20),
         Row(
           children: [
             Expanded(child:  Container(
               height: 250,
               decoration: BoxDecoration(
                 image: DecorationImage(
                   image: AssetImage(feedImage),
                   fit: BoxFit.cover,
                 ),),
             ),),
             Expanded(child:  Container(
               height: 250,
               decoration: BoxDecoration(
                 image: DecorationImage(
                   image: AssetImage(feedImage2),
                   fit: BoxFit.cover,
                 ),),
             ),),
           ],
         ),
          //Likes
          Container(
              padding: const EdgeInsets.only(top: 10,left: 5),
              color: Colors.black,
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(

                    children: [
                      makeLike(),
                      Transform.translate(offset: const Offset(-5,0),
                        child: makeLove(),
                      ),
                      const SizedBox(width: 5,),
                      const Text('2.5K',style: TextStyle(color: Colors.grey,fontSize: 17),),

                    ],
                  ),
                  const Text('400 comment',style: TextStyle(color: Colors.grey,fontSize: 15),),
                ],
              )
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              makeLikeButton(isActive: true),
              makeCommentButton(),
              makeShareButton(),
            ],
          ),

        ],
      ),
    );
  }
  Widget makeLove(){
    return Container(
      height: 25,
      width: 25,
      decoration: const BoxDecoration(
         shape: BoxShape.circle,
        color: Colors.blueAccent,
      ),
      child:const Center(
        child:  Icon(Icons.thumb_up,color: Colors.white,size: 15,),
      ),
    );
  }
  Widget makeLike(){
    return Container(
      height: 25,
      width: 25,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.red,
      ),
      child:const Center(
        child:  Icon(Icons.favorite,color: Colors.white,size: 15,),
      ),
    );
  }
  Widget makeLikeButton({isActive}){
   return  Container(
     padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 5),


     child: Row(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Icon(Icons.thumb_up,color:isActive? Colors.blue:Colors.grey,size: 23,),
         const SizedBox(width: 10,),
         const Text('Like',style: TextStyle(color: Colors.grey),)
       ],
     ),
    );
  }
  Widget makeCommentButton(){
    return  Container(
      padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 5),


      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.comment,color:Colors.grey,size: 23,),
          SizedBox(width: 10,),
          Text('comment',style: TextStyle(color: Colors.grey,fontSize: 15),)
        ],
      ),
    );
  }
  Widget makeShareButton(){
    return  Container(
      padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 5),


      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.share,color:Colors.grey,size: 23,),
          SizedBox(width: 10,),
          Text('share',style: TextStyle(color: Colors.grey,fontSize: 15),)
        ],
      ),
    );
  }
}
