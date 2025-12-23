import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/components/event_minimal.dart';
import 'package:my_first_flutter_app/pages/users/select_user_page.dart';

class EditManagers extends StatefulWidget {
  final String eventId;

  const EditManagers({super.key, required this.eventId});

  @override
  State<EditManagers> createState() => _EditManagersState();
}

class _EditManagersState extends State<EditManagers> {
  final searchController = TextEditingController();

  Widget _manager(BuildContext context) {
    accesIcon(IconData icon, Color color) {
      return DecoratedBox(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 3, horizontal: 3),
          child: Icon(icon, color: color, size: 18),
        ),
      );
    }

    return Card(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        child: Column(
          spacing: 8,
          children: [
            Row(
              spacing: 16,
              children: [
                CircleAvatar(radius: 25),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nom Du User",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Text("email@gmail.com"),
                  ],
                ),
              ],
            ),
            Row(
              spacing: 8,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DecoratedBox(
                  decoration: BoxDecoration(
                    // color: Theme.of(context).colorScheme.primaryFixed.withValues(alpha: 0.5),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 3, horizontal: 3),
                    child: Row(
                      spacing: 4,
                      children: [
                        // SizedBox(width: 4),
                        Icon(
                          Icons.vpn_key,
                          size: 16,
                          color: Theme.of(context).colorScheme.onPrimaryFixedVariant,
                        ),
                        // SizedBox(width: 4),
                        Text(
                          "Accès : ",
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 12,
                            color: Theme.of(context).colorScheme.onPrimaryFixedVariant,
                          ),
                        ),
                        // SizedBox(width: 4),
                      ],
                    ),
                  ),
                ),
                Row(
                  spacing: 16,
                  children: [
                    accesIcon(Icons.crop_free, Colors.blue),
                    accesIcon(Icons.confirmation_num_outlined, Colors.green),
                    accesIcon(Icons.edit_calendar_outlined, Colors.purple),
                    accesIcon(Icons.money_off, Colors.orange),
                    accesIcon(Icons.delete_outline, Color(0xFFC62828)),
                  ],
                ),
              ],
            ),
            Row(
              spacing: 16,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      padding: WidgetStatePropertyAll(EdgeInsets.all(0)),
                      foregroundColor: WidgetStatePropertyAll(Theme.of(context).colorScheme.error),
                    ),
                    child: Text("Supprimer"),
                  ),
                ),
                Text(" | "),
                Expanded(
                  child: TextButton(onPressed: () {}, child: Text("Modifier")),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Gerer vos managers")),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          spacing: 8,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Evénement', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
            eventMinimal(
              context,
              picture: "https://picsum.photos/200/300",
              title: "Titre",
              location: "Localisation",
              date: DateTime.now(),
            ),
            SizedBox(height: 4),

            const Text('Managers', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),

            _manager(context),
            _manager(context),
            _manager(context),
            _manager(context),

            SizedBox(height: 75),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            //
            border: BoxBorder.all(color: Colors.white.withValues(alpha: 0.75), width: 2),
            borderRadius: BorderRadius.circular(50),
          ),
          child: ElevatedButton.icon(
            onPressed: () {
              selectUser(context, (userId){});
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 14),
              backgroundColor: Theme.of(context).colorScheme.primary,
              foregroundColor: Theme.of(context).colorScheme.surface,
            ),
            icon: Icon(Icons.add),
            label: Text('Ajouter un manager', style: TextStyle(fontSize: 16)),
          ),
        ),
      ),
    );
  }
}
