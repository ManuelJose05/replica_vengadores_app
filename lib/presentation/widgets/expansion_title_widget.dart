import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:vengadores_app/constants.dart';
import 'package:vengadores_app/presentation/screens/character_screen.dart';

class ExpansionTitleWidget extends StatefulWidget {
  const ExpansionTitleWidget({super.key});

  @override
  State<ExpansionTitleWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ExpansionTitleWidget> {
  String selectedValue = '';
  List<String> heroNames = characterList.map((character) => character['hero_name']!).toList();
  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2<String>(
        isExpanded: true,
        hint: const Row(
          children: [
            Icon(
              Icons.format_list_bulleted,
              size: 30,
              color: Colors.white,
            ),
          ],
        ),
        items: heroNames
            .map((String element) =>
                DropdownMenuItem(value: element, child: Text(element)))
            .toList(),
        onChanged: (value) {
          Navigator.push(context, MaterialPageRoute(builder: (context) => CharacterScreen(index: heroNames.indexOf(value!))));
        },
        buttonStyleData: ButtonStyleData(
          height: 60,
          width: 90,
          padding: const EdgeInsets.only(left: 14, right: 14),
          elevation: 2,
        ),
        dropdownStyleData: DropdownStyleData(
          maxHeight: 200,
          width: 160,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: Colors.white,
          ),
          offset: const Offset(-20, 0),
        ),
      ),
    );
  }
}
