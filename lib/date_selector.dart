import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DateSelector extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DateSelectorState();
}

class DateSelectorState extends State<DateSelector> {
  String _date = '17.11.2020 at 11:00';

  _onTapDate() async {
    DateTime date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2019),
      lastDate: DateTime(2021),
    );

    setState(() {
      if (date != null) {
        _date = date.toString();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.transparent,
      child: InkWell(
        onTap: () => _onTapDate(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Select a date',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                _date,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
