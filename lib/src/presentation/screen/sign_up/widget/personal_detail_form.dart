import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:own_it/src/presentation/router/router.gr.dart';
import 'package:own_it/src/presentation/screen/core/widget/custom_radio_button.dart';


class PersonalDetailForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          firstNameInput(),
          SizedBox(height: 3,),
          lastNameInput(),
          SizedBox(height: 3,),
          emailInput(),
          SizedBox(height: 3,),
          phoneNumberInput(),
          SizedBox(height: 3,),
          genderInput(),
          SizedBox(height: 3,),
          passwordInput(),
          SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text('Already have an account?, Login'),
                  Padding(
                    padding: const EdgeInsets.only(left:4.0),
                    child: InkWell(
                      onTap: () => ExtendedNavigator.ofRouter<Router>().pushReplacementNamed(Routes.signInScreen),
                      child: Text('Here', style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.redAccent
                      ),),
                    ),
                  ),
                ],
              ),
              
              FlatButton(
                color: Colors.red[900],
                child: Text('NEXT', style: TextStyle(
                  color: Colors.white
                ),),
                onPressed: (){
                  ExtendedNavigator.ofRouter<Router>().pushReplacementNamed(Routes.locationDeatail);
                },
              )
              ],
          )
        ],
      ),
    );
  }

  Widget stateDropdown(){
    return DropdownButton<String>(
      hint: Text('Please select your state'),
      value: '-------',
      items: <String>['Lagos', 'Anambra'].map(
        (e) => DropdownMenuItem<String>(
          child: Text(e),
          value: e,
        )
      ).toList(), 
      onChanged: null
    );
  }
  Widget firstNameInput(){
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'First Name'
      ),
    );
  }
  Widget lastNameInput(){
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Last Name'
      ),
    );
  }
  Widget emailInput(){
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Email'
      ),
    );
  }
  Widget passwordInput(){
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Password'
      ),
    );
  }
  Widget phoneNumberInput(){
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Phone Number'
      ),
    );
  }
  Widget genderInput(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Gender'),
        SizedBox(height: 3,),
        CustomRodioButton(gender),
        
      ]
    );
  }

  List<RadioModel> gender = [
    RadioModel('Male', 'M', false),
    RadioModel('Female', 'F', false),
  ];
}