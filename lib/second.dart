import 'package:exam1/third.dart';
import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  const Second({Key? key}) : super(key: key);

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
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
              child: Text("Sing in",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 45,
                      fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 75),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffFF4A85), width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffFF4A85), width: 2),
                  ),
                  hintText: "E-mail",
                  hintStyle: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffFF4A85), width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffFF4A85), width: 2),
                  ),
                  hintText: "Password",
                  hintStyle: TextStyle(fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.yellow,width: 2)),
                              child: Icon(Icons.done,color: Color(0xffFF4A85),)),
                          Text("Remeber", style: TextStyle(fontSize: 25)),
                          Expanded(
                              child: SizedBox(
                            width: 150,
                          )),
                          Text("Forget Password?",
                              style: TextStyle(fontSize: 25)),
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Third(),
                                ));
                          });
                        },
                        child: Container(
                          height: 75,
                          width: 250,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Color(0xffFF4A85),
                              borderRadius: BorderRadius.circular(8)),
                          child: Text("Sing Up",
                              style: TextStyle(
                                  fontSize: 40,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Row(
                        children: [
                          Text("Don't hve Account?",
                              style: TextStyle(fontSize: 20)),
                          Expanded(
                              child: SizedBox(
                            width: 10,
                          )),
                          Text("Create Account",
                              style: TextStyle(
                                  fontSize: 20, color: Color(0xffFF4A85))),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
