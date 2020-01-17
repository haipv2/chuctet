import 'package:chuctet/common/const.dart';
import 'package:flutter/material.dart';

class FontDropDownList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context)
          .copyWith(canvasColor: Colors.yellow.withOpacity(0.4)),
      child: DropdownButton<String>(
          value: 'Kiểu 1',
          onChanged: (String newFont) {
            print(newFont);
          },
          items: [
            DropdownMenuItem<String>(
              value: 'Kiểu 1',
              child: Text(
                'Kiểu 1',
                style: textStyle1,
              ),
            ),
            DropdownMenuItem<String>(
              value: 'Kiểu 2',
              child: Text(
                'Kiểu 2',
                style: textStyle2,
              ),
            ),
            DropdownMenuItem<String>(
              value: 'Kiểu 3',
              child: Text(
                'Kiểu 3',
                style: textStyle3,
              ),
            ),
            DropdownMenuItem<String>(
              value: 'Kiểu 4',
              child: Text(
                'Kiểu 4',
                style: textStyle4,
              ),
            ),
          ]
//        items: <String>['Font 1', 'Font 2', 'Font 3', 'Font 4']
//            .map<DropdownMenuItem<String>>((String value) {
//          return DropdownMenuItem<String>(
//            value: value,
//            child: Text(value),
//          );
//        }).toList(),
          ),
    );

//    return Container(
//      color: Colors.yellow,
////      decoration: BoxDecoration(color: Colors.red),
//      child: DropdownButtonHideUnderline(
//        child: ButtonTheme(
//          alignedDropdown: true,
//          child: DropdownButton<String>(
//            value: 'One',
//            onChanged: (String newFont) {
//              print(newFont);
//            },
//            items: <String>['One', 'Two', 'Free', 'Four']
//                .map<DropdownMenuItem<String>>((String value) {
//              return DropdownMenuItem<String>(
//                value: value,
//                child: Text(value),
//              );
//            }).toList(),
//          ),
//        ),
//      ),
//    );
  }
}
