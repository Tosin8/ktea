import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'constants.dart';


class SearchBarWidget extends StatefulWidget {
  const SearchBarWidget({
    super.key,
  });

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
  
    super.dispose();
    _searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 6, right: 10),
      child: FadeIn(
        child: TextFormField(
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.search,
          controller: _searchController,
          decoration: InputDecoration(
              hintText: 'Search for products...',
              hintStyle: TextStyle(color: Colors.grey.shade500),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Colors.black),
                gapPadding: 10,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color:Colors.orange),
                gapPadding: 10,
              ),
              prefixIcon: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Icon(Icons.search)),
              border: InputBorder.none),
          onChanged: (value) {
            // perform search operations based on the entered value.
          },
        ),
      ),
    );
  }
}

var AppBar_Header = const TextStyle(fontSize: 18, color: Colors.blueAccent);
