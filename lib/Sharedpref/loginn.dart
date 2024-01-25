import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.darT';

void main (){
  runApp(DevicePreview(builder: (BuildContext context)=>MaterialApp(
    useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,
    home: sharedprefloginpage(),
  )));
}
class sharedprefloginpage extends StatefulWidget {
  @override
  State<sharedprefloginpage> createState() => _sharedprefloginpageState();
}

class _sharedprefloginpageState extends State<sharedprefloginpage> {
  GlobalKey<FormState>  formkey=GlobalKey();
  bool showpass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.white,),
        body: SingleChildScrollView(child:Column(children: [Center(
          child: Image(image: AssetImage("images/cat.png"
          ),height:320,),
        ),Padding(
          padding: const EdgeInsets.only(right: 30,left: 30,top: 30),
          child: TextFormField(obscureText:showpass ,
            obscuringCharacter: "*",
            decoration: InputDecoration(prefixIcon: Icon(Icons.person),
                suffixIcon: IconButton(onPressed: () {
                  setState(() {
                    if (showpass) {
                      var showpass = false;
                    }
                    else {
                      showpass = true;
                    }
                  }
                  );
                },
                  icon: Icon(
                      showpass == true ? Icons.visibility_off : Icons
                          .visibility),
                ),
                labelText: "Username",
                hintText: "Username",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(100))),
            validator: (uname){
              if(uname!.isEmpty||!uname.contains('@')||!uname.contains('.')){
                return"please enter valid username";
              }
              else{
                return null;
              }
            },
          ),),
          Padding(padding: EdgeInsets.only(top:20,right: 30,left: 30),child: TextFormField(
            obscureText: showpass,
            obscuringCharacter: "*",
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.password),
                suffixIcon: IconButton(onPressed: () {
                  setState(() {
                    if (showpass) {
                      showpass = false;
                    }
                    else {
                      showpass = true;}});},
                  icon: Icon(
                      showpass == true ? Icons.visibility_off : Icons
                          .visibility),
                ),
                labelText: "Password",
                hintText: "Password",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(100))
            ),validator:(password) {
            if(password!.isEmpty|| password.length<6){
              return "please enter valid password";
            }
            else{
              return null;
            }
          },
          ),),Padding(
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(onPressed: (){}, child:Text("Login")),
          )
        ]),
        )
      /* appBar: AppBar(backgroundColor: Colors.white,),
        body: SingleChildScrollView(
          child: Center(
            child: Form(
              key: formkey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50, right: 6),

                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        labelText: "username",
                        hintText: "username",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100)),
                      ),
                      validator: (uname){
                        if(uname!.isEmpty||!uname.contains('@')||!uname.contains('.')){
                          return"please enter valid username";
                        }
                        else{
                          return null;
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      obscuringCharacter: "*",
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.password),
                          suffixIcon: IconButton(onPressed: () {
                            setState(() {
                              if (showpass) {
                                var showpass = false;
                              }
                              else {
                                showpass = true;
                              }
                            }
                            );
                          },
                            icon: Icon(
                                showpass == true ? Icons.visibility_off : Icons
                                    .visibility),
                          ),
                          labelText: "password",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)
                          )
                      ),
                      validator:(password) {
                        if(password!.isEmpty|| password.length<6){
                          return "please enter valid password";
                        }
                        else{
                          return null;
                        }
                      },
                    ),
                  ),
                 // ElevatedButton(onPressed: () {
                    final valid=formkey.currentState!.validate();
                    if (valid){
                      Navigator.push(context,MaterialPageRoute(builder:(context)=>Homepage()));
                    }
                    else{
                      return null;
                    }
                  },
                    child: Text("Login"),
                  ),
                  TextButton(onPressed: () {},
                      child:Text("create a new user")
                  )//
                ],
              ),
            ),
          ),
        )*/
    );
  }
}