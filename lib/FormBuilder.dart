import 'package:flutter/material.dart';
import 'Components/CheckBoxBuilder.dart';
import 'Components/DropDownComponent.dart';
import 'Components/EndPageButton.dart';
import 'Components/RadioListBuilder.dart';
import 'Components/TextFieldContainer.dart';

class FormBuilder extends StatefulWidget {
  String title;
  String description;
  String messageBoxtitle;
  String messageBox;
  String confirmationText;

  FormBuilder({
    this.title,
    this.messageBox,
    this.messageBoxtitle,
    this.description,
    this.confirmationText,
  });

  @override
  _FormBuilderState createState() => _FormBuilderState();
}

class _FormBuilderState extends State<FormBuilder> {
  bool accepting = false;
  double SliderRating = 50;
  String dropdownValue;
  List RadioList = ['یک', 'دو', 'سه'];
  Map<String, bool> CheckBoxList = {
    'یک': false,
    'دو': false,
    'سه': false,
  };
  bool checkboxValue = false;
  List<Widget> ButtonList = [
    EndPageButton(
      title: 'Cancel',
      buttonColor: Color(0xFFEb5151),
    ),
    EndPageButton(
      title: 'Add',
      buttonColor: Colors.grey[500],
    ),
    EndPageButton(
      title: 'Edit',
      buttonColor: Color(0xFFEb5151),
    ),
    EndPageButton(
      title: 'Delete',
      buttonColor: Colors.grey[500],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(child: Text(widget.title ?? 'عنوان')),
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.all(10.0),
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Text(widget.description ??
                'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: accepting == true
                    ? MediaQuery.of(context).size.width - 60
                    : MediaQuery.of(context).size.width - 20,
                margin: EdgeInsets.all(10.0),
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.messageBoxtitle ?? 'باکس پیام',
                          style: TextStyle(fontSize: 10),
                        ),
                        Text(widget.messageBox ?? 'باکس پیام'),
                      ],
                    ),
                    Icon(
                      Icons.close,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
              Visibility(
                visible: accepting == true ? true : false,
                child: Container(
                        width: 35.0,
                        height: 35.0,
                        child: CircularProgressIndicator(),
                      ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width - 20,
                margin: EdgeInsets.all(10.0),
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.confirmationText ??
                          'َآیا مطمئنید میخواهید اطلاعات زیر را ارسال کنید؟',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 40,
                        decoration: BoxDecoration(
                          color: Color(0xFFEB5151),
                          borderRadius: BorderRadius.circular(7.0),
                        ),
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text(
                            'خیر',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        )),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.green[400],
                          borderRadius: BorderRadius.circular(7.0),
                        ),
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text(
                            'بله',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          TextFieldContainer(
            textDescript: 'پاساژ',
          ),
          TextFieldContainer(
            textDescript: 'طبقه',
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width - 20,
            padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: DropDownRow(
              rowTitle: 'پاساژ',
              dropdownValue: dropdownValue,
              itemsList: ['1', '2', '3'],
            ),
          ),
          Slider(
            value: SliderRating,
            onChanged: (newRating) {
              setState(() {
                SliderRating = newRating;
              });
            },
            min: 0.0,
            max: 100.0,
          ),
          SizedBox(
            height: 20,
          ),
          RadioListBuilder(
            RadioList: RadioList,
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
              height: 150,
              width: MediaQuery.of(context).size.width - 20,
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: CheckBoxListBuilder(
                values: CheckBoxList,
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: ButtonList,
          )
        ],
      ),
    );
  }
}
