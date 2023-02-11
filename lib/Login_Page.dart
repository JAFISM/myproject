import 'package:flutter/material.dart';
import 'package:myproject/color_palette.dart';

void main() => runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
);

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              //end: Alignment.topRight,
                begin: Alignment.topCenter,
                colors: [
                  //green,
                  teal,
                  teal,
                ]
            )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 80,),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Login", style: TextStyle(color: dark, fontSize: 40),),
                  SizedBox(height: 10,),
                   Text("Welcome Back", style: TextStyle(color: dark, fontSize: 18),),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60))
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 60,),
                         Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [BoxShadow(
                                  color: teal,
                                  blurRadius: 5,
                                  offset: Offset(0, 0.5)
                              )]
                          ),
                          child: Column(
                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: black10))
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Email or Phone number",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: black10))
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Password",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 40,),
                        TextButton(onPressed: (){}, child: Text("Forgot password",style: TextStyle(color: black10),)),
                        //Text("Forgot Password?", style: TextStyle(color: Colors.grey),),
                        SizedBox(height: 40,),
                        SizedBox(
                          height: 50,
                          width: MediaQuery.of(context).size.width/2,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Login",
                              style: TextStyle(color: black10),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: teal,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 50,),
                        TextButton(onPressed: (){}, child: Text("Don't have an account? Sign UP",style: TextStyle(color: black10),))
                        // Text("Don't have an account", style: TextStyle(color: Colors.grey),),
                        //SizedBox(height: 30,),
                        // Row(
                        //   children: <Widget>[
                        //     Expanded(
                        //       child: Container(
                        //         height: 50,
                        //         decoration: BoxDecoration(
                        //             borderRadius: BorderRadius.circular(50),
                        //             color: Colors.blue
                        //         ),
                        //         child: Center(
                        //           child: Text("Facebook", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                        //         ),
                        //       ),
                        //     ),
                        //     SizedBox(width: 30,),
                        //     Expanded(
                        //       child: Container(
                        //         height: 50,
                        //         decoration: BoxDecoration(
                        //             borderRadius: BorderRadius.circular(50),
                        //             color: Colors.red
                        //         ),
                        //         child: Center(
                        //           child: Text("Google", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                        //         ),
                        //       ),
                        //     )
                        //   ],
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}