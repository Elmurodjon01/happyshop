import 'package:flutter/material.dart';



class DropDownBox extends StatelessWidget {
String dropDownValue;
List<String> sizeOfItem;
DropDownBox({
  required this.dropDownValue,
  required this.sizeOfItem,
});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 25,
      width: 60,
      decoration:BoxDecoration(
        border: Border.all(color: Colors.black, width: 1),
      ),
      child: Center(
        child: DropdownButton<String>(
          borderRadius: BorderRadius.circular(10),
          value: dropDownValue,
          icon: const Icon(Icons.arrow_drop_down_sharp),

          style: const TextStyle(color: Colors.black),
          onChanged: (String? value) {
            // This is called when the user selects an item.
            // setState(() {
              dropDownValue = value!;
            // });
          },
          items: sizeOfItem.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}
