import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String Text;

  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
            child:Text ('signUp'),
            onPressed:() {
            },
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 50)
            ),
    );
  }
}