import 'package:amazon_clone/constants/global_variables.dart';
import 'package:flutter/material.dart';


enum Auth {
signup, 
signin}

class AuthScreen extends StatefulWidget {
  static const String routeName = '/auth-screen';
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  Auth _auth = Auth.signup;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalVariables.greyBackgroundCOlor,
        body: SafeArea(child: 
        Column(
          children: [
            const Text('Welcome',style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500
            ),
            ),
            ListTile(
            title: const Text('Create Account',
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),
            ),
            leading: Radio(value: Auth.signup, groupValue:_auth, onChanged: (Auth? value){
              setState(() {
                _auth = value!;//  this ! symbol indicate us it can't be null 
              });
            },
            activeColor: GlobalVariables.secondaryColor,),
            ),
            ListTile(
            title: const Text('Create Account',
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),
            ),
            leading: Radio(value: Auth.signup, groupValue:_auth, onChanged: (Auth? value){
              setState(() {
                _auth = value!;//  this ! symbol indicate us it can't be null 
              });
            },
            activeColor: GlobalVariables.secondaryColor,),
            )
          ],
        )),
    );
    
  }
}