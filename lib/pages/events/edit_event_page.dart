import 'dart:io';

import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/generated/graphql/operations/event.graphql.dart';
import 'package:my_first_flutter_app/generated/graphql/schema.graphql.dart';
import 'package:my_first_flutter_app/navigation/route_names.dart';
import 'package:my_first_flutter_app/services/graphql_service.dart';
import 'package:image_picker/image_picker.dart';

class EditEventPage extends StatefulWidget {
  final String eventId;

  const EditEventPage({required this.eventId, super.key});

  @override
  State<EditEventPage> createState() => _EditEventPageState();
}

class _EditEventPageState extends State<EditEventPage> {
  final ImagePicker picker = ImagePicker();

  final _formKey = GlobalKey<FormState>();

  final _descriptionController = TextEditingController();
  final _locationController = TextEditingController();
  final _priceController = TextEditingController();
  final _priceCurrencyController = TextEditingController();
  XFile? _image;
  DateTime? _selectedDate;
  TimeOfDay? _selectedTime;

  @override
  void dispose() {
    _descriptionController.dispose();
    _locationController.dispose();
    _priceController.dispose();
    _priceCurrencyController.dispose();
    super.dispose();
  }

  Future<void> _selectImage() async {
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        _image = image;
      });
    }
  }

  Future<void> _selectDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365)),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  Future<void> _selectTime() async {
    final TimeOfDay? picked = await showTimePicker(context: context, initialTime: TimeOfDay.now());
    if (picked != null && picked != _selectedTime) {
      setState(() {
        _selectedTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Modifier un l'événement")),
      body: Query$GetEvent$Widget(
        options: Options$Query$GetEvent(variables: Variables$Query$GetEvent(id: widget.eventId)),
        builder: (result, {fetchMore, refetch}) {
          Query$GetEvent? data;

          if (result.data != null) {
            data = Query$GetEvent.fromJson(result.data!);

            _descriptionController.text = data.event?.description ?? "";
            _locationController.text = data.event?.location ?? "";
            _priceController.text = data.event?.price.toString() ?? "";
            _selectedDate = data.event?.date;
            _selectedTime = TimeOfDay(
              hour: data.event?.date.hour ?? 0,
              minute: data.event?.date.minute ?? 0,
            );
          }

          return result.isLoading
              ? Center(child: CircularProgressIndicator())
              : data?.event == null
              ? Center(
                  child: Text(
                    "Erreur lors de la récuperation \n des données. Glissez vers les bas \n pour réactualiser.",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                )
              : Mutation$UpdateEvent$Widget(
                  options: WidgetOptions$Mutation$UpdateEvent(
                    onCompleted: (_, result) {
                      if (result?.updateEvent != null) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Mise a jour de l'événement effectuée avec succès."),
                            dismissDirection: DismissDirection.horizontal,
                            behavior: SnackBarBehavior.floating,
                          ),
                        );

                        Navigator.pushReplacementNamed(
                          context,
                          RouteNames.eventDetail,
                          arguments: widget.eventId,
                        );

                        refetch?.call();
                      }
                    },
                    onError: (error) {
                      GraphQLService.operationExceptionHandler(context, error);
                    },
                  ),
                  builder: (runMutation, result) {
                    return SingleChildScrollView(
                      padding: const EdgeInsets.all(16.0),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: double.infinity,
                              height: 200,
                              decoration: BoxDecoration(
                                // border: Border.all(color: Colors.grey.withValues(alpha: 0.5)),
                                borderRadius: BorderRadius.circular(12),
                                color: Theme.of(context).colorScheme.surfaceContainer,
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: InkWell(
                                  onTap: _selectImage,
                                  child: Stack(
                                    children: [
                                      Positioned.fill(
                                        child: _image != null
                                            ? Image.file(File(_image!.path), fit: BoxFit.cover)
                                            : Image.network(
                                                data!.event!.picture,
                                                fit: BoxFit.cover,
                                                errorBuilder: (context, error, stackTrace) {
                                                  return Icon(
                                                    Icons.image,
                                                    size: 32,
                                                    color: Colors.grey.withValues(alpha: 0.5),
                                                  );
                                                },
                                              ),
                                      ),
                                      Positioned(
                                        top: 8,
                                        right: 8,
                                        child: Container(
                                          padding: const EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                            color: Colors.black.withValues(alpha: 0.5),
                                            shape: BoxShape.circle,
                                          ),
                                          child: Icon(Icons.edit, color: Colors.white, size: 20),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            const SizedBox(height: 16),
                            Text(
                              data!.event!.title,
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            ),

                            const SizedBox(height: 16),
                            IntrinsicWidth(
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                decoration: BoxDecoration(
                                  color: Theme.of(
                                    context,
                                  ).colorScheme.primaryFixedDim.withValues(alpha: 0.25),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Row(
                                  spacing: 8,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.color_lens,
                                      size: 18,
                                      color: Theme.of(context).colorScheme.onPrimaryFixedVariant,
                                    ),
                                    Text(
                                      data.event!.category,
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Theme.of(context).colorScheme.onPrimaryFixedVariant,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            const SizedBox(height: 25),
                            // Description
                            TextFormField(
                              keyboardType: TextInputType.multiline,
                              controller: _descriptionController,
                              decoration: const InputDecoration(
                                labelText: 'Description',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(12)),
                                ),
                                hintText: "Decrivez votre événement",
                              ),
                              maxLines: 4,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Veuillez entrer une description';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 16),
                            // Date et heure
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              spacing: 16,
                              children: [
                                Expanded(
                                  child: FormField(
                                    builder: (field) => InkWell(
                                      onTap: _selectDate,
                                      child: InputDecorator(
                                        decoration: InputDecoration(
                                          labelText: 'Date',
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(12)),
                                          ),
                                          errorText: field.errorText,
                                        ),
                                        child: Text(
                                          _selectedDate != null
                                              ? '${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}'
                                              : 'Sélectionner',
                                        ),
                                      ),
                                    ),
                                    validator: (value) {
                                      if (_selectedDate == null) {
                                        return 'Veuillez sélectionner une date';
                                      }
                                      return null;
                                    },
                                  ),
                                ),

                                Expanded(
                                  child: FormField(
                                    builder: (field) => InkWell(
                                      onTap: _selectTime,
                                      child: InputDecorator(
                                        decoration: InputDecoration(
                                          labelText: 'Heure',
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(12)),
                                          ),

                                          errorText: field.errorText,
                                        ),
                                        child: Text(
                                          _selectedTime != null
                                              ? _selectedTime!.format(context)
                                              : 'Sélectionner',
                                        ),
                                      ),
                                    ),
                                    validator: (value) {
                                      if (_selectedTime == null) {
                                        return 'Veuillez sélectionner une heure';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 16),
                            // Lieu
                            TextFormField(
                              keyboardType: TextInputType.streetAddress,
                              controller: _locationController,
                              decoration: const InputDecoration(
                                labelText: 'Lieu',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(12)),
                                ),

                                hintText: "Ou aura lieu l'événement ?",
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Veuillez entrer un lieu';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 24),

                            TextFormField(
                              keyboardType: TextInputType.number,
                              controller: _priceController,
                              decoration: InputDecoration(
                                labelText: 'Prix',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(12)),
                                ),
                                hintText: "Prix du billet",
                                suffix: Text(
                                  data.event!.priceCurrency,
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                              ),
                              validator: (value) {
                                if (value == null ||
                                    value.isEmpty ||
                                    double.tryParse(value) == null) {
                                  return 'Veuillez entrer un nombre';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 24),
                            // Bouton de soumission
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {
                                  if (result?.isNotLoading ?? false) {
                                    if (_formKey.currentState?.validate() ?? false) {
                                      DateTime dateWithTime = DateTime.utc(
                                        _selectedDate!.year,
                                        _selectedDate!.month,
                                        _selectedDate!.day,
                                        _selectedTime!.hour,
                                        _selectedTime!.minute,
                                      );

                                      runMutation(
                                        Variables$Mutation$UpdateEvent(
                                          input: Input$UpdateEventInput(
                                            id: "widget.eventId",
                                            description: _descriptionController.text,
                                            date: dateWithTime,
                                            location: _locationController.text,
                                            price: double.parse(_priceController.text),
                                          ),
                                        ),
                                      );
                                    }
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(vertical: 16),
                                  backgroundColor: (result?.isLoading ?? false)
                                      ? Theme.of(context).colorScheme.surfaceContainerHighest
                                      : Theme.of(context).colorScheme.primary,
                                ),
                                child: (result?.isLoading ?? false)
                                    ? SizedBox(
                                        height: 24,
                                        width: 24,
                                        child: CircularProgressIndicator(),
                                      )
                                    : Text(
                                        "Modifier l'événement",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Theme.of(context).colorScheme.surface,
                                        ),
                                      ),
                              ),
                            ),

                            SizedBox(height: 16),
                          ],
                        ),
                      ),
                    );
                  },
                );
        },
      ),
    );
  }
}
