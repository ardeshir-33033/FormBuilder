import 'package:flutter/material.dart';


class TextFieldContainer extends StatelessWidget {
  String hint;
  TextEditingController controller1;
  String textDescript;

  TextFieldContainer({
    this.hint,
    this.controller1,
    @required this.textDescript,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 20,
      margin: EdgeInsets.all(5.0),
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(5.0),
            child: Text(
              textDescript,
            ),
          ),
          SizedBox(width: 15,),
          CustomTextField(
            hint: hint,
            controller1: controller1,
          ),
        ],
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  String hint;
  TextEditingController controller1;
  TextInputType TextFieldType;

  CustomTextField({this.hint, @required this.controller1 , this.TextFieldType});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Center(
        child: TextField(
          controller: controller1,
          cursorColor: Colors.grey,
          keyboardType: TextFieldType,
          cursorRadius: Radius.circular(5),
          onChanged: (value) {},
          decoration: InputDecoration(
            hintText: hint,
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
