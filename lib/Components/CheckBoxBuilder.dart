import 'package:flutter/material.dart';


class CheckBoxListBuilder extends StatefulWidget {
  Map<String, bool> values = {};

  CheckBoxListBuilder({@required this.values});

  @override
  CheckBoxListBuilderState createState() => new CheckBoxListBuilderState();
}

class CheckBoxListBuilderState extends State<CheckBoxListBuilder> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: widget.values.keys.map((String key) {
        return  SizedBox(
          height: 30,
          child: CheckboxListTile(
            dense: true,
            activeColor: Color(0xFF8F111D),
            title: Text(key , style: TextStyle(fontSize: 15.0),),
            value: widget.values[key],
            onChanged: (bool value) {
              setState(() {
                widget.values[key] = value;
              });
            },
          ),
        );
      }).toList(),
    );
  }
}
