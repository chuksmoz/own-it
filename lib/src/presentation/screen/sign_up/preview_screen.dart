import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:own_it/src/presentation/router/router.gr.dart';
import 'package:own_it/src/presentation/screen/sign_up/widget/sign_up_form_step.dart';

class PreviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      
      body: Container(
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
            Text('Preview', style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.redAccent,
              fontSize: 16
              ),
            ),
            SizedBox(height: 20,),
            Text('First Name', style: TextStyle(
              fontWeight: FontWeight.w400,
              //color: Colors.redAccent,
              fontSize: 16
              ),
            ),
            SizedBox(height: 5,),
            Text('Moses', style: TextStyle(
              fontWeight: FontWeight.w300,
              //color: Colors.redAccent,
              fontSize: 16
              ),
            ),
            SizedBox(height: 20,),
            Text('Last Name', style: TextStyle(
              fontWeight: FontWeight.w400,
              //color: Colors.redAccent,
              fontSize: 16
              ),
            ),
            SizedBox(height: 5,),
            Text('Obika', style: TextStyle(
              fontWeight: FontWeight.w300,
              //color: Colors.redAccent,
              fontSize: 16
              ),
            ),
            SizedBox(height: 20,),
            Text('Email', style: TextStyle(
              fontWeight: FontWeight.w400,
              //color: Colors.redAccent,
              fontSize: 16
              ),
            ),
            SizedBox(height: 5,),
            Text('obikamoses@gmail.com', style: TextStyle(
              fontWeight: FontWeight.w300,
              //color: Colors.redAccent,
              fontSize: 16
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Phone Number', style: TextStyle(
                      fontWeight: FontWeight.w400,
                      //color: Colors.redAccent,
                      fontSize: 16
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text('08064318298', style: TextStyle(
                      fontWeight: FontWeight.w300,
                      //color: Colors.redAccent,
                      fontSize: 16
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Gender', style: TextStyle(
                      fontWeight: FontWeight.w400,
                      //color: Colors.redAccent,
                      fontSize: 16
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text('Male', style: TextStyle(
                      fontWeight: FontWeight.w300,
                      //color: Colors.redAccent,
                      fontSize: 16
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Phone Number', style: TextStyle(
                      fontWeight: FontWeight.w400,
                      //color: Colors.redAccent,
                      fontSize: 16
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text('08064318298', style: TextStyle(
                      fontWeight: FontWeight.w300,
                      //color: Colors.redAccent,
                      fontSize: 16
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Gender', style: TextStyle(
                      fontWeight: FontWeight.w400,
                      //color: Colors.redAccent,
                      fontSize: 16
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text('Male', style: TextStyle(
                      fontWeight: FontWeight.w300,
                      //color: Colors.redAccent,
                      fontSize: 16
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 20,),
            Text('Email', style: TextStyle(
              fontWeight: FontWeight.w400,
              //color: Colors.redAccent,
              fontSize: 16
              ),
            ),
            SizedBox(height: 5,),
            Text('obikamoses@gmail.com', style: TextStyle(
              fontWeight: FontWeight.w300,
              //color: Colors.redAccent,
              fontSize: 16
              ),
            ),

            Container(
          margin: EdgeInsets.only(top: 70),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OutlineButton(
                borderSide: BorderSide(color: Colors.red[900]),
                color: Colors.white,
                child: Text('Back', style: TextStyle(
                  color: Colors.red[900]
                ),),
                onPressed: () => ExtendedNavigator.ofRouter<Router>().pushReplacementNamed(Routes.locationDeatail),
              ),
              FlatButton(
                color: Colors.red[900],
                child: Text('Next', style: TextStyle(
                  color: Colors.white
                ),),
                onPressed: () => ExtendedNavigator.ofRouter<Router>().pushReplacementNamed(Routes.previewScreen)
              ),
            ],
          ),
        ),
        Stepper(steps: null)

          ],
        ),
      ),
    );
  }
}