import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sds/Model/user.dart';
import 'package:sds/View/home.dart';
import 'package:url_launcher/url_launcher.dart';

const _url = 'https://sds.com.sa';


class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  Color mainColor=Colors.lightGreen[900];

  List<User> users = [
    User('omar@gmail.com', 'password1'),
    User('ali@gmail.com', 'password2'),
    User('tamer@gmail.com', 'password3'),
    User('khaled@gmail.com', 'password4'),
    User('ahmad@gmail.com', 'password5'),
    User('mohammad@gmail.com', 'password6'),
  ];

  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/back2.png'),
          fit: BoxFit.cover,
        )),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [


                      SizedBox(
                        height: 20,
                      ),
                      Image.asset('assets/images/sho3a3.png',width: 200,),
                       SizedBox(
                         height: 50,
                       ),
                       Column(
                            children: [
                              Form(
                                key: _formKey,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(

                                        validator: (val) {
                                          if (val.isEmpty)
                                            return 'Fill your Email';
                                          else
                                            return null;
                                        },
                                        onSaved: (val) {
                                          setState(() {
                                            email = val;
                                          });
                                        },
                                        decoration: InputDecoration(
                                          labelText: 'Email',
                                          prefixIcon: Icon(Icons.email),
                                          hintText: 'example@demo.com',
                                         fillColor: Colors.white,
                                          focusColor: Colors.white,
                                          hoverColor: Colors.white,
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(25)),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(25)),
                                          )

                                        ),
                                      ),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(
                                        validator: (val) {
                                          if (val.isEmpty)
                                            return 'Fill your Password';
                                          else
                                            return null;
                                        },
                                        onSaved: (val) {
                                          setState(() {
                                            password = val;
                                          });
                                        },
                                        obscureText: true,
                                        maxLength: 20,
                                        decoration: InputDecoration(
                                          hintText: 'Example123*',

                                          labelText: 'Password',
                                          prefixIcon: Icon(Icons.lock),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(25)),

                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(25)),

                                          )
                                        ),
                                      ),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 100, vertical: 10),
                                      child: Container(
                                        width: 300,
                                        height: 40,
                                        child: RaisedButton(

                                          onPressed: () {
                                            if (_formKey.currentState.validate()) {
                                              _formKey.currentState.save();
                                              print(email + '  ' + password);
                                            }
                                            ;
                                            user = User(email, password);
                                            for (int i = 0; i < users.length; i++) {
                                              if (users[i].email == user.email &&
                                                  users[i].password == user.password)
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            Home()));
                                            }
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              'Login',
                                              style: TextStyle(
                                                  color: Colors.white,fontSize: 20),
                                            ),
                                          ),
                                          color: mainColor,
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            width:150,
                                            child: RaisedButton(
                                              onPressed:  _launchURL,


                                              child: Text('Sign Up',style: TextStyle(color: mainColor,),),
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(

                                            child: RaisedButton(
                                              onPressed: _launchURL,

                                              child: Text('Forgot Password?',style: TextStyle(color: mainColor,)),
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                      SizedBox(
                        height: 50,
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


}
void _launchURL() async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';
