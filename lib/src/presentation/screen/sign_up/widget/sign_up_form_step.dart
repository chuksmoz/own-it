import 'package:flutter/material.dart';

class FormSteps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          child: Icon(Icons.person),
          backgroundColor: Colors.red[900],
          radius: 30,
        ),
        CircleAvatar(
          child: Icon(Icons.person_pin_circle),
          backgroundColor: Colors.black54,
          radius: 30,
        ),
        CircleAvatar(
          child: Icon(Icons.remove_red_eye),
          backgroundColor: Colors.black54,
          radius: 30,
        ),
        CircleAvatar(
          child: Icon(Icons.spellcheck),
          backgroundColor: Colors.black54,
          radius: 30,
        ),
      ],
    );
  }
}