import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({Key? key}) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 10,20, 0),
      child: TextFormField(
        keyboardType: TextInputType.number,
        cursorColor: Theme.of(context).accentColor,
        maxLength: 20,
        decoration: InputDecoration(
            icon: Icon(
              Icons.calendar_today,
              color: Colors.white,
            ),
            filled: true,
            fillColor: Colors.white,
            contentPadding: EdgeInsets.symmetric(horizontal: 20),
            labelText: 'Enter Track Number',
            labelStyle: TextStyle(
              color: Colors.black,
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(12),
            )
            // enabledBorder: UnderlineInputBorder(
            //   borderRadius: BorderRadius.circular(25),
            //   borderSide: BorderSide(color: Colors.white),
            // ),
            ),
        onTap: () => _selectDate(context),
      ),
    );
  }
}
