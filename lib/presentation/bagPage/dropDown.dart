import 'package:flutter/material.dart';
import 'package:happyshop/services/provider.dart';
import 'package:provider/provider.dart';


class DropDownBox extends StatefulWidget {
  String dropDownValue;
  List<String> sizeOfItem;

  DropDownBox({
    required this.dropDownValue,
    required this.sizeOfItem,
  });

  @override
  State<DropDownBox> createState() => _DropDownBoxState();
}

class _DropDownBoxState extends State<DropDownBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: 60,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1),
      ),
      child: Consumer<SMProvider>(
        builder: (context, provider, child) {
          return Center(
            child: DropdownButton<String>(
              borderRadius: BorderRadius.circular(10),
              value: widget.dropDownValue,
              icon: const Icon(Icons.arrow_drop_down_sharp),

              style: const TextStyle(color: Colors.black),
              onChanged: (String? value) {
                // This is called when the user selects an item.
                setState(() {
                  widget.dropDownValue = value!;
                });
              },
              items: widget.sizeOfItem.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          );
        },
      ),
    );
  }
}
