import 'package:flutter/material.dart';
import 'package:game1/home.dart';
void main(){
  runApp(
      MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Gamer()

      )
  );
}

class Gamer extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    final urlImage=
        'https://initiate.alphacoders.com/images/114/cropped-1080-2400-1149459.jpg?3271';
    return Scaffold(
      body:SingleChildScrollView(
        child: Container(
          height: 770,
          width: 600,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(urlImage),
                fit: BoxFit.cover,
              )
          ),
          child: Column(
              children: [
                Padding(padding: EdgeInsets.only(top:80 )),
                Text('VALORANT',
                  style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color:Colors.black),),
                SizedBox(
                  height: 380,
                ),
                Row(
                  children: [
                    Padding(padding:EdgeInsets.only(left:80)),
                    Container(
                      height: 35,
                      width: 110,
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        elevation: 7.0,
                        child: FlatButton(
                          onPressed: (){
                            showDialog(context: context,
                                builder: (context)
                                {
                                  return SingleChildScrollView(
                                    child: AlertDialog(
                                      backgroundColor: Colors.redAccent.shade100,
                                      title: Text('Log In',style: TextStyle(fontSize:25,fontWeight: FontWeight.bold,color: Colors.white),),
                                      content: Container(
                                        height: 260,
                                        width: 280,
                                        child: Column(
                                          children: [
                                            Container(
                                              child: TextField(
                                                decoration: InputDecoration(
                                                    icon: Icon(Icons.email,color: Colors.black,),
                                                    hintText: 'Email',
                                                    border: InputBorder.none
                                                ),
                                              ),
                                              margin: EdgeInsets.symmetric(vertical: 10),
                                              padding: EdgeInsets.symmetric(horizontal: 10),
                                              width: 350,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(29),
                                                  color: Colors.white60
                                              ),
                                            ),
                                            Text('Required',style: TextStyle(fontSize: 15,color: Colors.white),),
                                            Container(
                                              child: TextField(
                                                decoration: InputDecoration(
                                                    icon: Icon(Icons.lock,color: Colors.black,),
                                                    hintText: 'Password',
                                                    border: InputBorder.none
                                                ),
                                              ),
                                              margin: EdgeInsets.symmetric(vertical: 10),
                                              padding: EdgeInsets.symmetric(horizontal: 10),
                                              width: 350,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(29),
                                                  color: Colors.white60
                                              ),
                                            ),
                                            Text('Required',style: TextStyle(fontSize: 15,color: Colors.white),),
                                            Padding(padding: EdgeInsets.only(top:30 )),
                                            RaisedButton(
                                              onPressed: (){
                                              Navigator.pushReplacement(context,
                                                MaterialPageRoute(builder: (context)=>Valo()),
                                              );
                                            },
                                              child: Text('Sign In',style: TextStyle(fontSize: 20,color: Colors.red),),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                }
                            );
                          },
                          child: Text('Log In',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 15)),
                    Container(
                      height: 35,
                      width: 110,
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey,
                        elevation: 7.0,
                        child: FlatButton(
                          onPressed: () {
                            showDialog(context: context,
                                builder: (context) {
                                  return SingleChildScrollView(
                                    child: AlertDialog(
                                      backgroundColor: Colors.redAccent.shade100,
                                      title: Text('Sign Up', style: TextStyle(fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),),
                                      content: Container(
                                        height: 350,
                                        width: 280,
                                        child: Column(
                                          children: [
                                            Container(
                                              child: TextField(
                                                decoration: InputDecoration(
                                                    icon: Icon(Icons.account_circle, color: Colors.black,),
                                                    hintText: 'User Name',
                                                    border: InputBorder.none
                                                ),
                                              ),
                                              margin: EdgeInsets.symmetric(vertical: 10),
                                              padding: EdgeInsets.symmetric(horizontal: 10),
                                              width: 350,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(29),
                                                  color: Colors.white60
                                              ),
                                            ),
                                            Text('Required',
                                              style: TextStyle(fontSize: 15, color: Colors.white),),

                                            Container(
                                              child: TextField(
                                                decoration: InputDecoration(
                                                    icon: Icon(Icons.email, color: Colors.black,),
                                                    hintText: 'Email',
                                                    border: InputBorder.none
                                                ),
                                              ),
                                              margin: EdgeInsets.symmetric(vertical: 10),
                                              padding: EdgeInsets.symmetric(horizontal: 10),
                                              width: 350,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(29),
                                                  color: Colors.white60
                                              ),
                                            ),
                                            Text('Required',
                                              style: TextStyle(fontSize: 15, color: Colors.white),),

                                            Container(
                                              child: TextField(
                                                decoration: InputDecoration(
                                                    icon: Icon(Icons.lock, color: Colors.black,),
                                                    hintText: 'Password',
                                                    border: InputBorder.none
                                                ),
                                              ),
                                              margin: EdgeInsets.symmetric(vertical: 10),
                                              padding: EdgeInsets.symmetric(horizontal: 10),
                                              width: 350,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(29),
                                                  color: Colors.white60
                                              ),
                                            ),
                                            Text('Required',
                                              style: TextStyle(fontSize: 15, color: Colors.white),),
                                            Padding(padding: EdgeInsets.only(top: 30)),
                                            RaisedButton(onPressed: (){
                                              Navigator.pushReplacement(context,
                                                MaterialPageRoute(builder: (context)=>Valo()),
                                              );
                                            },
                                              child: Text('Sign Up',
                                                style: TextStyle(fontSize: 20, color: Colors.red),),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                }
                            );
                          },
                          child: Text('Sign Up',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 50)),
                Container(
                  height: 40,
                  width: 230,
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.red,
                    elevation: 7.0,
                    child: FlatButton(
                      onPressed: (){},
                      child: Text('Continue With Google',style: TextStyle(fontSize: 20,color: Colors.white),),
                    ),
                  ),
                ),
              ]
          ),
        ),
      ),
    );
  }
}