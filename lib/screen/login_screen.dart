import 'package:flutter/material.dart';
import 'package:flutter_social_ui/widget/curve_clipper.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final max_height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
          height: max_height,
          child: Column(
            children: [
              ClipPath(
                clipper: CurveCipper(),
                child: Image(
                  image: AssetImage('assets/images/login_background.jpg'),
                  height: max_height / 2.5,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),

              Text(
                "Frenzy",
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 34,
                    letterSpacing: 1),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: Icon(Icons.account_box),
                      contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                      hintText: 'Username'),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: Icon(Icons.account_box),
                      contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                      hintText: 'Password'),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 70, vertical: 40),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 50,
                    alignment: Alignment.center,
                    child: Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          letterSpacing: 1),
                    ),
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                ),
              )
            ],
          )),
      bottomNavigationBar: Container(color: Theme.of(context).primaryColor,
      alignment: Alignment.center,
        height: max_height*0.1,
        child: Text("Don\'t have account? Sign up",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 20),),
      ),
    );
  }
}
