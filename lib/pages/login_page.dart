import 'package:career_start/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if (_formKey.currentState.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoutes);
      setState(() {
        changeButton = false;
      });
    }
    }


  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset("assets/images/login_page.png", fit: BoxFit.cover,),
              SizedBox(
                height:  20.0,
              ),
              Text("Welcome $name",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.amber
              ),
              ),
              SizedBox(
                height:  20.0,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter Username",
                          labelText: "Username",),
                      validator: (value){
                        if(value.isEmpty){
                          return "username cannot be empty";
                        }
                        return null;
                      },
                      onChanged: (value){
                        name = value;
                        setState(() {

                        });
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter Password",
                          labelText: "password"
                      ),
                      validator: (value){
                        if(value.isEmpty){
                          return "password cannot be empty";
                        }
                        else if(value.length<6){
                          return "password length should be 6";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height:  20.0,
                    ),
                    InkWell(
                      onTap: ()=>moveToHome(context),
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: changeButton ? 50 :150,
                        height: 50,
                        alignment: Alignment.center,
                        child: changeButton ? Icon(Icons.done,color: Colors.white,): Text(
                          "Login",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                              ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.deepOrange,
                          //shape: changeButton? BoxShape.circle : BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(changeButton ? 50:8),
                        ),
                      ),
                    ),
                    // ElevatedButton(
                    //   child: Text("Login"),
                    //   style: TextButton.styleFrom(minimumSize: Size(150,40)),
                    //   onPressed: (){
                    //    Navigator.pushNamed(context, MyRoutes.homeRoutes);
                    //   },
                    // ),
                  ],
                ),
              ),

            ],
          ),
        ),
      )
    );
  }
}
