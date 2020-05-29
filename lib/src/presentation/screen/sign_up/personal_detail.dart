import 'package:flutter/material.dart';
import 'package:own_it/src/presentation/screen/sign_up/widget/personal_detail_form.dart';
import 'package:own_it/src/presentation/screen/sign_up/widget/sign_up_form_step.dart';

class PersonalDeatail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: screenHeight * 0.08),
              child: Center(
                child: CircleAvatar(
                  child: Icon(Icons.person),
                ),
              ),
            ),
            SizedBox(height: 40,),
            
            FormSteps(),
            SizedBox(height: 20,),
            Text('Personal Information', style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.redAccent,
              fontSize: 16
            ),),
            SizedBox(height: 10,),
            PersonalDetailForm()
          ],
        ),
      ),
      
    );
  }
}