import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/models/project.dart';
import 'package:todoapp/models/todo_data.dart';

import '../constants.dart';

class AddProjectView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String _title;
    return Column(
      children: <Widget>[
        SizedBox(
          height: 10.0,
        ),
        Text(
          'New List',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24.0,
          ),
        ),
        TextField(
          onChanged: (newValue) {
            _title = newValue;
          },
          cursorColor: kBlackColor,
          decoration: InputDecoration(
            hintText: 'title',
            hintStyle: TextStyle(
              color: Color(0xFFD7D7D7),
              fontWeight: FontWeight.w300,
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 2.0),
            focusColor: kPrimaryAccentColor,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
            ),
          ),
          autofocus: true,
          autocorrect: true,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Text(
            'Add',
            style: TextStyle(color: Colors.white),
          ),
          color: kPrimaryAccentColor,
          onPressed: () {
            bool wasSuccessful = context.read<ToDoData>().addProject(
                  Project(
                    title: _title,
                  ),
                );
            Navigator.pop(context, wasSuccessful);
          },
        ),
      ],
    );
  }
}
