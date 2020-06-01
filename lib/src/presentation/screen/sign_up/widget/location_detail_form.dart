import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:own_it/src/presentation/router/router.gr.dart';

class LocationDetailForm extends StatefulWidget {
  @override
  _LocationDetailFormState createState() => _LocationDetailFormState();
}

class _LocationDetailFormState extends State<LocationDetailForm> {
  String currentValue = 'Please select your state';
  @override
  Widget build(BuildContext context) {

    return Column(
      //mainAxisSize: MainAxisSize.max,
      children: [
        stateDropdown(),
        stateDropdown(),
        TextField(
          maxLines: 4,
          decoration: InputDecoration(
            hintText: 'Home address',
            border: OutlineInputBorder(
              borderSide: BorderSide(width: 1)
            )
          ),
        ),

        Container(
          margin: EdgeInsets.only(top: 100),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OutlineButton(
                borderSide: BorderSide(color: Colors.red[900]),
                color: Colors.white,
                child: Text('Back', style: TextStyle(
                  color: Colors.red[900]
                ),),
                onPressed: () => ExtendedNavigator.ofRouter<Router>().pushReplacementNamed(Routes.personalDeatail),
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
        )
      ],
    );
  }

  Widget stateDropdown(){
    double screenWidgth = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      width: double.infinity,
      child: DropdownButton<String>(
        hint: Text('Please select your state'),
        value: currentValue,
        //itemHeight: 2,
        icon: Padding(
          padding: EdgeInsets.only(left: screenWidgth - 260),
          child: Icon(Icons.arrow_drop_down),
        ),
        underline: Container(
          height: 1,
          //margin: const EdgeInsets.only(top: 5),
          color: Colors.black87,
          margin: const EdgeInsets.only(top:20),
        ),
        onChanged: (String value){
          setState(() {
            currentValue = value;
          });
        },
        items: <String>['Please select your state', 'Lagos', 'Anambra'].map<DropdownMenuItem<String>>(
          (String value) => DropdownMenuItem<String>(
            child: Text(value),
            value: value,
          )
        ).toList(), 
        
      ),
    );
  }
}