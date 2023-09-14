import 'package:flutter/material.dart';
import 'package:furniture_app/components/constants.dart';

class SearchBarWidget extends StatefulWidget {
  const SearchBarWidget({
    super.key,
  });

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.search,
      controller: _searchController,
      decoration: InputDecoration(
          hintText: 'Search your products....',
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: kSecondaryColor),
            gapPadding: 10,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: kSecondaryColor),
            gapPadding: 10,
          ),
          prefixIcon: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Image.asset('assets/icons/search_23.png')),
          border: InputBorder.none),
      onChanged: (value) {
        // perform search operations based on the entered value.
      },
    );
  }
}

var AppBar_Header = const TextStyle(fontSize: 18, color: Colors.blueAccent);
