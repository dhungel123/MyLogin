
import 'package:flutter/material.dart';
import 'package:untitled/ui_helper/util.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  var emailText=TextEditingController();
  var passText=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 50),
          child: Container(
            width: 300,
            child: Center(child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Login',style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),

                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: emailText,
                  enabled: true,
                  decoration:InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide(
                        color: Colors.deepOrange,
                      )
                    ),
                    enabledBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21,),
                      borderSide: BorderSide(
                        color: Colors.blueAccent,
                      )
                    ),
                      disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21),
                          borderSide: BorderSide(
                            color: Colors.black,
                          )
                      ),
                      prefixIcon: Icon(
                        Icons.email,color: Colors.deepOrange,
                      ),
                    hintText: "Enter Email"

                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: passText,
                  obscureText: true,
                  obscuringCharacter: '*',
                  decoration:InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide(
                        color: Colors.deepOrange,
                      )
                        
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide(
                        color: Colors.blueAccent,
                      )
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide(
                        color: Colors.black,
                      )
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        Icons.remove_red_eye,color: Colors.deepOrange,
                      ), onPressed: () {
                        print("icon pressed");
                    },
                    ),


                      )

                  ),
                ElevatedButton(onPressed:(){
                  String email= emailText.text;
                  String password= passText.text;
                  print("Email = $email, Password = $password");
                  
                } , child: Text('Login'))
              ],
            )),
          ),
        ),
      ),
    );
  }

}