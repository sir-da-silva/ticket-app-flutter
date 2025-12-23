import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:my_first_flutter_app/generated/graphql/operations/search.graphql.dart';
import 'package:my_first_flutter_app/generated/graphql/schema.graphql.dart';

Future<void> selectUser(BuildContext context, void Function(String userId) callback) async {
  await showModalBottomSheet<String>(
    context: context,
    isScrollControlled: true,
    builder: (context) {
      return FractionallySizedBox(
        //
        heightFactor: 0.8,
        child: _SelectUserModal(callback: callback),
      );
    },
  );
}

class _SelectUserModal extends StatefulHookWidget {
  final void Function(String userId) callback;

  const _SelectUserModal({required this.callback});

  @override
  State<_SelectUserModal> createState() => _SelectUserModalState();
}

class _SelectUserModalState extends State<_SelectUserModal> {
  final searchController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Query$Search? data;

    final searchQuery = useQuery$Search(
      Options$Query$Search(
        variables: Variables$Query$Search(
          input: Input$SearchInput(
            search: searchController.text,
            include: Input$SearchInputIncludes(events: false, users: true, actualities: false),
          ),
        ),
        onComplete: (_, result) {
          data = result;
        },
      ),
    );

    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        title: Text("Selectionner une personne", style: TextStyle(fontSize: 20)),
        titleSpacing: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
        ),
      ),
      body: Container(
        color: Theme.of(context).colorScheme.surface,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
          child: Column(
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

              if (searchQuery.result.isLoading)
                Expanded(child: Center(child: CircularProgressIndicator()))
              else if (data?.search == null)
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
                        TextButton(onPressed: searchQuery.refetch, child: Text("Réessayer")),
                      ],
                    ),
                  ),
                )
              else if (data!.search.users.isEmpty && searchController.text.isEmpty)
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
                          "Aucun utilisateur trouvé",
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                )
              else if (data!.search.users.isEmpty && searchController.text.isNotEmpty)
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
                    itemCount: data?.search.users.length,
                    itemBuilder: (context, index) {
                      return Card(child: Text("Hello"));
                    },
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
