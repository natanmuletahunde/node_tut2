import 'package:amazon_clone/common/widgets/custom_textfield.dart';
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
  final _signupFormKey = GlobalKey<FormState>();
  final _signinFormKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  
  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
  }
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
               if(_auth == Auth.signup)
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: GlobalVariables.backgroundColor,
                    child: Form(key:_signupFormKey,child:Column(
                         children: [
                        
                           CustomTextfield(
                            controller: _nameController,
                              hintText: 'Name',
                          ),
                        const SizedBox(height: 10),
                          CustomTextfield(
                            controller: _emailController,
                              hintText: 'Email',
                          ),
                            const SizedBox(height: 10)
                          ,   CustomTextfield(
                            controller: _passwordController,
                              hintText: ' Password',
                          ),
                         ],     
                    ), ),
                  ),
            ListTile(
            title: const Text('Sign-In',
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),
            ),
            leading: Radio(value: Auth.signin, groupValue:_auth, onChanged: (Auth? value){
              setState(() {
                _auth = value!;//  this ! symbozl indicate us it can't be null 
              });
            },
            activeColor: GlobalVariables.secondaryColor,),
            )

          ],
        )),
    );
    
  }
}