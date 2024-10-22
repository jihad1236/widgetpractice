// ignore_for_file: library_private_types_in_public_api, prefer_final_fields, prefer_const_constructors, use_key_in_widget_constructors, override_on_non_overriding_member

import 'package:flutter/material.dart';

class SearchFilterPage extends StatefulWidget {
  @override
  _SearchFilterPageState createState() => _SearchFilterPageState();
}

class _SearchFilterPageState extends State<SearchFilterPage> {
  // Original list of items
  final List<String> _allItems = [
    'Apple',
    'Banana',
    'Cherry',
    'Date',
    'Elderberry',
    'Fig',
    'Grape',
    'Honeydew',
    'Indian Fig',
    'Jackfruit',
    'Kiwi',
    'Lemon',
    'Mango',
    'Nectarine',
    'Orange',
    'Papaya',
    'Quince',
    'Raspberry',
    'Strawberry',
    'Tomato',
    'Ugli Fruit',
    'Vanilla',
    'Watermelon',
    'Xigua',
    'Yellow Passion Fruit',
    'Zucchini'
  ];

  // This list holds the data for the list view
  List<String> _filteredItems = [];

  // Controller for the search field
  TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // At the beginning, all items are shown
    _filteredItems = _allItems;
    // Listen to changes in the search field
    _searchController.addListener(_onSearchChanged);
  }

  @override
  // void dispose() {
  //   // Clean up the controller when the widget is disposed
  //   _searchController.removeListener(_onSearchChanged);
  //   _searchController.dispose();
  //   super.dispose();
  // }

  // Called whenever the search input changes
  void _onSearchChanged() {
    // Call setState to trigger a rebuild
    setState(() {
      _filteredItems = _allItems
          .where((item) =>
              item.toLowerCase().contains(_searchController.text.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Filter Demo'),
      ),
      body: Column(
        children: <Widget>[
          // Search bar
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                labelText: 'Search',
                hintText: 'Search items',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(25.0),
                  ),
                ),
              ),
            ),
          ),
          // Display the filtered list
          Expanded(
            child: _filteredItems.isNotEmpty
                ? ListView.builder(
                    itemCount: _filteredItems.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(_filteredItems[index]),
                      );
                    },
                  )
                : Center(
                    child: Text(
                      'No results found!',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
