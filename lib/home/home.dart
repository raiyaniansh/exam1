import 'package:exam1/second.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffFF4A85),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              Icon(Icons.shopping_bag_outlined, size: 250, color: Colors.white),
              Column(
                children: [
                  Text("The store of your",
                      style: TextStyle(color: Colors.white, fontSize: 30)),
                  Text("dreams. You will find",
                      style: TextStyle(color: Colors.white, fontSize: 30)),
                  Text("here what you need",
                      style: TextStyle(color: Colors.white, fontSize: 30)),
                ],
              ),
              // SizedBox(
              //   height: 50,
              // ),
              InkWell(
                onTap: (){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Second(),));
                  });
                },
                child: Container(
                  height: 75,
                  width: 250,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: Text("Start Shopping",
                      style: TextStyle(fontSize: 40, color: Color(0xffFF4A85),fontWeight: FontWeight.bold)),
                ),
              ),
              // SizedBox(height: 50,),
              Column(
                children: [
                  Text("Don't have an account?",style: TextStyle(color: Colors.white,fontSize: 25),),
                  Text("Sing in here",style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold),),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
