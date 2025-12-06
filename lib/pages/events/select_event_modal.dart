import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/generated/graphql/operations/event.graphql.dart';
import 'package:my_first_flutter_app/utils/date_parser.dart';

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
          padding: EdgeInsetsGeometry.symmetric(horizontal: 16, vertical: 0),
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
                      child: Column(
                        spacing: 10,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Erreur lors de la récuperation des données. Cliquez sur réessayer ou tapez un mot a rechercher.",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.grey),
                          ),
                          ElevatedButton(onPressed: refetch, child: Text("Reessayer")),
                        ],
                      ),
                    )
                  else if (filteredData.isEmpty && searchController.text.isEmpty)
                    Expanded(
                      child: Center(
                        child: Text(
                          "Vous n'organisez aucun évenement pour les dates à venir.",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    )
                  else if (filteredData.isEmpty && searchController.text.isNotEmpty)
                    Expanded(
                      child: Center(
                        child: Text(
                          "Aucun resultats.",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    )
                  else
                    Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: filteredData.length,
                        itemBuilder: (context, index) {
                          CustomDateParser date = CustomDateParser(date: filteredData![index].date);

                          return InkWell(
                            onTap: () => widget.callback(filteredData![index].id),
                            overlayColor: WidgetStatePropertyAll(Colors.transparent),
                            child: Card(
                              margin: EdgeInsets.symmetric(vertical: 4, horizontal: 1),
                              color: Theme.of(context).colorScheme.surfaceContainer,
                              child: Padding(
                                padding: EdgeInsetsGeometry.all(8),
                                child: Row(
                                  spacing: 8,
                                  children: [
                                    SizedBox(
                                      width: 70,
                                      height: 70,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(6),
                                        child: Image.network(
                                          filteredData[index].picture,
                                          fit: BoxFit.cover,
                                          errorBuilder: (context, error, stackTrace) {
                                            return Icon(
                                              Icons.image,
                                              color: Colors.grey.withValues(alpha: 0.5),
                                            );
                                          },
                                        ),
                                      ),
                                    ),

                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        spacing: 3,
                                        children: [
                                          Text(
                                            filteredData[index].title,
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                          Row(
                                            spacing: 5,
                                            children: [
                                              DecoratedBox(
                                                decoration: BoxDecoration(
                                                  color: Theme.of(
                                                    context,
                                                  ).colorScheme.primary.withValues(alpha: 0.1),
                                                  borderRadius: BorderRadius.circular(4),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.all(2),
                                                  child: Icon(
                                                    Icons.location_on_rounded,
                                                    size: 14,
                                                    color: Theme.of(
                                                      context,
                                                    ).colorScheme.onPrimaryFixed,
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Text(
                                                  filteredData[index].location,
                                                  style: TextStyle(overflow: TextOverflow.ellipsis),
                                                ),
                                              ),
                                            ],
                                          ),

                                          Row(
                                            spacing: 5,
                                            children: [
                                              DecoratedBox(
                                                decoration: BoxDecoration(
                                                  color: Theme.of(
                                                    context,
                                                  ).colorScheme.primary.withValues(alpha: 0.1),
                                                  borderRadius: BorderRadius.circular(4),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.all(2),
                                                  child: Icon(
                                                    Icons.calendar_month_rounded,
                                                    size: 14,
                                                    color: Theme.of(
                                                      context,
                                                    ).colorScheme.onPrimaryFixed,
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Text(
                                                  "${date.monthDayNumber} ${date.monthNameShort}  •  ${date.hour12}:${date.minute} ${date.meridiem}",
                                                  style: TextStyle(overflow: TextOverflow.ellipsis),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
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
