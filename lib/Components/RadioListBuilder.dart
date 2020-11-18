import 'package:flutter/material.dart';


class RadioListBuilder extends StatefulWidget {
  List RadioList;

  RadioListBuilder({@required this.RadioList});

  @override
  _RadioListBuilderState createState() => _RadioListBuilderState();
}

class _RadioListBuilderState extends State<RadioListBuilder> {
  int checkedValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
        itemExtent: 41,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Row(
                children: [
                  Radio(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    activeColor: Color(0xFF8F111D),
                    value: index,
                    groupValue: checkedValue,
                    onChanged: (newValue) {
                      setState(() {
                        checkedValue = newValue;
                      });
                    },
                  ),
                  Text(widget.RadioList[index], style: TextStyle(fontSize: 15),),
                ],
              ),
              Divider(
                height: 1,
                thickness: 1,
              )
            ],
          );
        },
        itemCount: widget.RadioList.length,
      ),
    );
  }
}
