import 'package:flutter/material.dart';
import 'create_account.dart';

class LoginScreen extends StatelessWidget
{
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home: Scaffold(
        body: new PageView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
              LoginForm()
          ] ),
          resizeToAvoidBottomPadding: false,
      ),
    );
  }
}

class LoginForm extends StatelessWidget
{
  Widget build(BuildContext context) {

        final emailField = TextField(
          obscureText: false,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              hintText: "Email",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
        );

        final passwordField = TextField(
          obscureText: true,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              hintText: "Password",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
        );

        final createAccount = new GestureDetector(
          child: new Text(
            "Create Account",
            style: TextStyle(decoration: TextDecoration.underline, color: Colors.blue)
            ),
          onTap: (){
            CreateAccount();
          },
        );

        final loginButon = Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.redAccent.shade100,
          child: MaterialButton(
            minWidth: MediaQuery.of(context).size.width,
            padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            onPressed: () {},
            child: Text("Login",
                textAlign: TextAlign.center,
              ),
          ),
        );

        return Scaffold(
          body:  ListView(
            shrinkWrap: false,
            padding: const EdgeInsets.all(20.0),
            children: <Widget>[
               SizedBox(
                      height: 200.0,
                      child: Image.asset(
                        "assets/images/my_company.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(height: 15.0),
                    emailField,
                    SizedBox(height: 15.0),
                    passwordField,
                    SizedBox(
                      height: 15.0,
                    ),
                    SizedBox(height: 15.0,),
                    createAccount,
                    loginButon,
                    SizedBox(
                      height: 15.0,
                    ),
            ],
            ),
        );
      }
}