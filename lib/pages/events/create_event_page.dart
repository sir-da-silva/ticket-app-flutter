import 'dart:io';

import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/generated/graphql/operations/event.graphql.dart';
import 'package:my_first_flutter_app/generated/graphql/schema.graphql.dart';
import 'package:my_first_flutter_app/navigation/route_names.dart';
import 'package:my_first_flutter_app/services/graphql_service.dart';
import 'package:image_picker/image_picker.dart';

const List<String> _categories = <String>[
  'Concert',
  'Bal',
  'Pool Party',
  'Birthday',
  'Festival',
  'Conference',
  'Meetup',
];

class CreateEventPage extends StatefulWidget {
  const CreateEventPage({super.key});

  @override
  State<CreateEventPage> createState() => _CreateEventPageState();
}

class _CreateEventPageState extends State<CreateEventPage> {
  final ImagePicker picker = ImagePicker();

  final _formKey = GlobalKey<FormState>();

  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _locationController = TextEditingController();
  final _categoryController = TextEditingController();
  final _priceController = TextEditingController();
  final _priceCurrencyController = TextEditingController();
  XFile? _image;
  DateTime? _selectedDate;
  TimeOfDay? _selectedTime;

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    _locationController.dispose();
    super.dispose();
  }

  Future<void> _selctImage() async {
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
      appBar: AppBar(title: const Text('Créer un événement')),
      body: Mutation$CreateEvent$Widget(
        options: WidgetOptions$Mutation$CreateEvent(
          onCompleted: (_, data) {
            if (data?.createEvent != null) {
              Navigator.pushReplacementNamed(
                context,
                RouteNames.eventDetail,
                arguments: data?.createEvent,
              );
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
                        onTap: _selctImage,
                        child: _image == null
                            ? Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                spacing: 8,
                                children: [
                                  Icon(
                                    Icons.add_photo_alternate,
                                    size: 42,
                                    color: Colors.grey.withValues(alpha: 0.5),
                                  ),
                                  Text(
                                    'Cliquer pour sélectionner \n une image depuis la galerie',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.grey, fontSize: 16),
                                  ),
                                ],
                              )
                            : Stack(
                                children: [
                                  Positioned.fill(
                                    child: Image.file(File(_image!.path), fit: BoxFit.cover),
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
                  // Titre
                  TextFormField(
                    controller: _titleController,
                    decoration: const InputDecoration(
                      labelText: "Titre",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      hintText: "Entrez le nom de l'événement",
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Veuillez entrer un titre';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),

                  // Catégorie
                  FormField(
                    builder: (field) => DropdownMenu<String>(
                      controller: _categoryController,
                      label: const Text('Catégorie'),
                      expandedInsets: const EdgeInsets.symmetric(horizontal: 0),
                      errorText: field.errorText,
                      inputDecorationTheme: InputDecorationTheme(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                      ),
                      dropdownMenuEntries: _categories
                          .map<DropdownMenuEntry<String>>(
                            (String value) => DropdownMenuEntry<String>(value: value, label: value),
                          )
                          .toList(),
                    ),
                    validator: (value) {
                      if (_categoryController.text.isEmpty) {
                        return 'Veuillez sélectionner une catégorie';
                      }
                      return null;
                    },
                  ),

                  const SizedBox(height: 16),
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

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 16,
                    children: [
                      Expanded(
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          controller: _priceController,
                          decoration: const InputDecoration(
                            labelText: 'Prix',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(12)),
                            ),

                            hintText: "Prix du billet",
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty || double.tryParse(value) == null) {
                              return 'Veuillez entrer un nombre';
                            }
                            return null;
                          },
                        ),
                      ),

                      Expanded(
                        child: FormField(
                          builder: (field) => DropdownMenu<String>(
                            controller: _priceCurrencyController,
                            label: const Text('Devise'),
                            expandedInsets: const EdgeInsets.symmetric(horizontal: 0),
                            errorText: field.errorText,
                            inputDecorationTheme: InputDecorationTheme(
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                            ),
                            dropdownMenuEntries: ["HTG", "USD", "EUR"]
                                .map<DropdownMenuEntry<String>>(
                                  (String value) =>
                                      DropdownMenuEntry<String>(value: value, label: value),
                                )
                                .toList(),
                          ),
                          validator: (value) {
                            if (_priceCurrencyController.text.isEmpty) {
                              return 'Veuillez sélectionner une devise monetaire';
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  // Bouton de soumission
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate() && (result?.isNotLoading ?? false)) {
                          DateTime dateWithTime = DateTime.utc(
                            _selectedDate!.year,
                            _selectedDate!.month,
                            _selectedDate!.day,
                            _selectedTime!.hour,
                            _selectedTime!.minute,
                          );

                          runMutation(
                            Variables$Mutation$CreateEvent(
                              input: Input$CreateEventInput(
                                picture: "image-00000.png",
                                title: _titleController.text,
                                category: _categoryController.text,
                                description: _descriptionController.text,
                                date: dateWithTime,
                                location: _locationController.text,
                                price: double.parse(_priceController.text),
                                priceCurrency: _priceCurrencyController.text,
                              ),
                            ),
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        backgroundColor: (result?.isLoading ?? false)
                            ? Colors.grey
                            : Theme.of(context).colorScheme.primary,
                      ),
                      child: (result?.isLoading ?? false)
                          ? const SizedBox(
                              height: 24,
                              width: 24,
                              child: CircularProgressIndicator(color: Colors.white),
                            )
                          : const Text(
                              'Créer l\'événement',
                              style: TextStyle(fontSize: 18, color: Colors.white),
                            ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
