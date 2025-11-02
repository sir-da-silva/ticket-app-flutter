import 'package:flutter/material.dart';
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

  const _SelectEventModal({required this.callback, super.key});

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
      body: Padding(
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
                        Icons.backspace_outlined,
                        size: 20,
                        color: Theme.of(context).colorScheme.primary,
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
                        return GestureDetector(
                          onTap: () {
                            widget.callback(filteredData![index].id);
                          },
                          child: Card(
                            margin: EdgeInsets.symmetric(vertical: 4, horizontal: 1),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Stack(
                                children: [
                                  Positioned.fill(
                                    child: Image.network(
                                      filteredData![index].picture,
                                      fit: BoxFit.cover,
                                      errorBuilder: (context, error, stackTrace) {
                                        return Icon(
                                          Icons.image,
                                          color: Colors.grey.withValues(alpha: 0.5),
                                        );
                                      },
                                    ),
                                  ),
                                  Positioned.fill(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Colors.black.withValues(alpha: 0.5),
                                            Colors.black.withValues(alpha: 0.75),
                                          ],
                                          stops: const [0.4, 1.0],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsGeometry.symmetric(
                                      vertical: 10,
                                      horizontal: 10,
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          filteredData[index].title,
                                          maxLines: 2,
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Row(
                                          spacing: 5,
                                          children: [
                                            Icon(
                                              Icons.location_on_rounded,
                                              color: Colors.white,
                                              size: 14,
                                            ),
                                            Text(
                                              filteredData[index].location,
                                              style: TextStyle(color: Colors.white),
                                            ),
                                          ],
                                        ),

                                        Row(
                                          spacing: 5,
                                          children: [
                                            Icon(
                                              Icons.calendar_month_rounded,
                                              color: Colors.white,
                                              size: 14,
                                            ),
                                            Text(
                                              filteredData[index].date.toString(),
                                              style: TextStyle(color: Colors.white),
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
    );
  }
}
