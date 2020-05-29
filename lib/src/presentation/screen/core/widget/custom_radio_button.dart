import 'package:flutter/material.dart';

class CustomRodioButton extends StatefulWidget {

  final List<RadioModel> _radioItem;
  CustomRodioButton(this._radioItem);
  @override
  _CustomRodioButtonState createState() => _CustomRodioButtonState();
}

class _CustomRodioButtonState extends State<CustomRodioButton> {


  @override
  Widget build(BuildContext context) {
    return Row(
      children: buildListOfRadioButtonItem(widget._radioItem)
    );
  }

  List<Widget> buildListOfRadioButtonItem(List<RadioModel> item){
    List<Widget> rowWidget = [];
    for (var i = 0; i < item.length; i++) {
      
      if (i == 0) {
        rowWidget.add(
          InkWell(
            onTap: (){
              setState(() {
                widget._radioItem.forEach((element) => element.isSelected = false);
                widget._radioItem[i].isSelected= true;
              });
            },
            child: RadioItem(item[i])
          ),
        );
      }else{
        rowWidget.add(
          InkWell(
            onTap: (){
              setState(() {
                widget._radioItem.forEach((element) => element.isSelected = false);
                widget._radioItem[i].isSelected= true;
              });
            },
            child: RadioItem(item[i], buttonMargin: const EdgeInsets.only(left: 15),),
          )
        );
      }
    }
    return rowWidget;
  }
}

class RadioModel<T>{
  bool isSelected;
  String label;
  T value;
  RadioModel(this.label, this.value, this.isSelected);
}

class RadioItem extends StatelessWidget {
  final double buttonHeight;
  final double buttonWidth;
  EdgeInsetsGeometry buttonMargin;
  final RadioModel _buttonModel;

  RadioItem(this._buttonModel, {this.buttonHeight=40, this.buttonWidth=70, this.buttonMargin});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: buttonMargin,
      height: buttonHeight,
      width: buttonWidth,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.redAccent
        ),
        color: _buttonModel.isSelected ? Colors.red[900] : Colors.white 
      ),
      child: Center(
        child: Text(_buttonModel.label, style: TextStyle(
          color: _buttonModel.isSelected ? Colors.white : Colors.red[900]
        ),)
        ),
    );
  }
}