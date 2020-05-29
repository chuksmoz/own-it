import 'package:flutter/material.dart';
import 'package:own_it/src/presentation/screen/sign_in/widget/sign_in_form.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    print(screenHeight);
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: screenHeight * 0.15),
              child: Center(
                child: CircleAvatar(
                  backgroundColor: Colors.red[900],
                  radius: screenWidth * 0.12,
                  child: Icon(
                    Icons.access_alarm,
                    size: 60,
                  ),
                )
              ),
            ),
            SizedBox(height: screenHeight* 0.1,),
            SignInForm()
          ],
        ),
      ),
    );
  }
}