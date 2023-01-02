import 'package:flutter/material.dart';

class Third extends StatefulWidget {
  const Third({Key? key}) : super(key: key);

  @override
  State<Third> createState() => _ThirdState();
}

class _ThirdState extends State<Third> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 75,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Color(0xffFF4A85),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25))),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: Icon(
                    Icons.person,
                    size: 30,
                    color: Color(0xffFF4A85),
                  ),
                ),
                Text("Reviews",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 45,
                        fontWeight: FontWeight.bold)),
                Icon(Icons.shopping_bag_outlined,
                    color: Colors.white, size: 40),
              ],
            ),
          ),
          Container(
            height: 620,
            child: SingleChildScrollView(
                child: Column(
                  children: [
                    Reviews(),
                    Reviews(),
                    Reviews(),
                    Reviews(),
                    Reviews(),
                  ],
                ),
              ),
          ),
          Container(
            height: 75,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.black26,blurRadius: 2)
                ],
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    topLeft: Radius.circular(25))),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.home_outlined,
                  size: 30,
                  color: Colors.black26,
                ),
                Icon(
                  Icons.shopping_bag,
                  size: 30,
                  color: Colors.black26,
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.yellow, shape: BoxShape.circle),
                  child: Icon(
                    Icons.person,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                Icon(
                  Icons.settings,
                  size: 30,
                  color: Colors.black26,
                ),
                Icon(
                  Icons.more_horiz,
                  size: 30,
                  color: Colors.black26,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    );
  }
  Widget Reviews()
  {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 125,
        alignment: Alignment.center,
        decoration: BoxDecoration(color: Colors.white,boxShadow: [
          BoxShadow(color: Colors.black26,blurRadius: 1),
        ],
            borderRadius: BorderRadius.circular(5)),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.black26),
                    child: Icon(
                      Icons.person,
                      size: 25,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 5,),
                  Text("Name Name"),
                  Expanded(
                      child: SizedBox(
                        width: 100,
                      )),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.orangeAccent,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.orangeAccent,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.orangeAccent,
                      ),
                      Icon(Icons.star_border,color: Colors.black26),
                      Icon(Icons.star_border,color: Colors.black26),
                      Icon(Icons.star_border,color: Colors.black26),
                    ],
                  )
                ],
              ),
              SizedBox(height: 10),
              Container(height: 1,width: 325,color: Colors.black26),
              SizedBox(height: 10,),
              Text("orem Ipsum has been the industry's standard dummy text ever since the 1500s,"),
            ],
          ),
        ),
      ),
    );
  }
}
