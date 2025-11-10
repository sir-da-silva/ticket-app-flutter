import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<StatefulWidget> createState() => _SeaarchPageState();
}

class _SeaarchPageState extends State<SearchPage> {
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //
        leading: SizedBox(),
        leadingWidth: 16,
        actions: [SizedBox()],
        actionsPadding: EdgeInsets.only(right: 16),
        titleSpacing: 0,
        title: TextField(
          //
          controller: searchController,
          autofocus: true,
          decoration: InputDecoration(
            //
            contentPadding: EdgeInsets.symmetric(vertical: 12),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
            hintText: "Recherchez...",
            prefixIcon: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(Icons.arrow_back_rounded),
            ),
            suffixIcon: IconButton(
              onPressed: () => searchController.clear(),
              icon: Icon(
                Icons.close_rounded,
                size: 20,
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      body: Column(
        //
        children: [
          Expanded(
            child: Center(
              //
              child: Text("Aucun resultats", textAlign: TextAlign.center),
            ),
          ),
        ],
      ),
    );
  }
}
