import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/components/event_minimal.dart';
import 'package:my_first_flutter_app/generated/graphql/operations/event.graphql.dart';

Future<void> selectEvent(BuildContext context, void Function(String eventId) callback) async {
  await showModalBottomSheet<String>(
    context: context,
    isScrollControlled: true,
    builder: (context) {
      return FractionallySizedBox(
        //
        heightFactor: 0.8,
        child: _SelectEventModal(callback: callback),
      );
    },
  );
}

class _SelectEventModal extends StatefulWidget {
  final void Function(String eventId) callback;

  const _SelectEventModal({required this.callback});

  @override
  State<_SelectEventModal> createState() => _SelectEventModalState();
}

class _SelectEventModalState extends State<_SelectEventModal> {
  final searchController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        title: Text("Selectionner un evenement", style: TextStyle(fontSize: 20)),
        titleSpacing: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
        ),
      ),
      body: Container(
        color: Theme.of(context).colorScheme.surface,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
          child: Query$GetMyEvents$Widget(
            options: Options$Query$GetMyEvents(
              variables: Variables$Query$GetMyEvents(fetchAll: true),
            ),
            builder: (result, {refetch, fetchMore}) {
              List<Query$GetMyEvents$myEvents>? filteredData;

              if (result.data != null) {
                Query$GetMyEvents data = Query$GetMyEvents.fromJson(result.data!);

                filteredData = [
                  for (var event in data.myEvents)
                    if (event.title.toLowerCase().contains(searchController.text.toLowerCase()))
                      event,
                ];
              }

              return Column(
                children: [
                  SizedBox(height: 4),
                  TextFormField(
                    controller: searchController,
                    onChanged: (value) {
                      setState(() {});
                    },
                    decoration: InputDecoration(
                      hintText: "Recherchez ...",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                      contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: IconButton(
                        icon: Icon(
                          Icons.close_rounded,
                          size: 20,
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.bold,
                        ),
                        onPressed: () {
                          searchController.clear();
                          setState(() {});
                        },
                      ),
                    ),
                  ),

                  SizedBox(height: 4),

                  if (result.isLoading)
                    Expanded(child: Center(child: CircularProgressIndicator()))
                  else if (filteredData == null)
                    Expanded(
                      child: Center(
                        child: Column(
                          spacing: 8,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.error_outline,
                              size: 50,
                              color: Colors.grey.withValues(alpha: 0.5),
                              weight: 1,
                            ),
                            Text(
                              "Erreur lors de la récuperation \n des données",
                              style: TextStyle(fontSize: 16, color: Colors.grey),
                              textAlign: TextAlign.center,
                            ),
                            TextButton(onPressed: refetch, child: Text("Réessayer")),
                          ],
                        ),
                      ),
                    )
                  else if (filteredData.isEmpty && searchController.text.isEmpty)
                    Expanded(
                      child: Center(
                        child: Column(
                          spacing: 8,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.inbox_outlined,
                              size: 50,
                              color: Colors.grey.withValues(alpha: 0.5),
                              weight: 1,
                            ),
                            Text(
                              "Aucun évenement",
                              style: TextStyle(fontSize: 16, color: Colors.grey),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    )
                  else if (filteredData.isEmpty && searchController.text.isNotEmpty)
                    Expanded(
                      child: Center(
                        child: Column(
                          spacing: 8,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.manage_search_rounded,
                              size: 50,
                              color: Colors.grey.withValues(alpha: 0.5),
                              weight: 1,
                            ),
                            Text(
                              "Aucun résultat",
                              style: TextStyle(fontSize: 16, color: Colors.grey),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    )
                  else
                    Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: filteredData.length,
                        itemBuilder: (context, index) {
                          return eventMinimal(
                            context,
                            onTap: () {
                              widget.callback(filteredData![index].id);
                            },
                            picture: filteredData![index].picture,
                            title: filteredData[index].title,
                            location: filteredData[index].location,
                            date: filteredData[index].date,
                          );
                        },
                      ),
                    ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
