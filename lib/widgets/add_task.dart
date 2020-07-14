import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoapp/constants.dart';

class AddTaskView extends StatelessWidget {
  final Function onAdd;

  AddTaskView({this.onAdd});
  @override
  Widget build(BuildContext context) {
    String taskTitle;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        SizedBox(
          height: 10.0,
        ),
        Row(
          children: <Widget>[
            Expanded(
              flex: 6,
              child: TextField(
                onChanged: (newValue) {
                  taskTitle = newValue;
                },
                cursorColor: kBlackColor,
                decoration: InputDecoration(
                  hintText: 'Enter Task',
                  hintStyle: TextStyle(
                    color: Color(0xFFD7D7D7),
                  ),
                  focusColor: kPrimaryAccentColor,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
                autofocus: true,
                autocorrect: true,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: FlatButton(
                  onPressed: () {
                    onAdd(taskTitle);
                  },
                  color: kPrimaryAccentColor,
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
