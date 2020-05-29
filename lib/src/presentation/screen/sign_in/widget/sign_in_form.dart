import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:own_it/src/presentation/router/router.gr.dart';

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        child: Column(
          children: [
            emailInput(),
            passwordInput(),
            SizedBox(height: 20,),
            signInButton(),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () => ExtendedNavigator.ofRouter<Router>().pushReplacementNamed(Routes.personalDeatail),
                  child: Text('Forgotten Password?')
                ),
                InkWell(
                  onTap: () => ExtendedNavigator.ofRouter<Router>().pushNamed(Routes.personalDeatail),
                  child: Text('Create an account with us')
                ),
              ],
            )

          ],
        )
      ),
    );
  }

  Widget emailInput(){
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Username',
        //contentPadding: const EdgeInsets.all(6)
      ),
    );
  }
  Widget passwordInput(){
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Password',
        
        //contentPadding: const EdgeInsets.all(6)
      ),
    );
  }

  Widget signInButton(){
    return MaterialButton(
      //elevation: 4,
      minWidth: double.infinity,
      height: 40,
      color: Colors.red[900],
      child: Text('Sign In', style: TextStyle(
        color: Colors.white
      ),),
      onPressed: (){},
      
    );
  }
}