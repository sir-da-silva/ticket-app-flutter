import 'dart:io';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_first_flutter_app/generated/graphql/operations/user.graphql.dart';
import 'package:my_first_flutter_app/generated/graphql/schema.graphql.dart';
import 'package:my_first_flutter_app/services/graphql_service.dart';
import 'package:my_first_flutter_app/services/string_validators.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final ImagePicker picker = ImagePicker();

  final _formKey = GlobalKey<FormState>();

  XFile? _image;
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _whatsappController = TextEditingController();
  final _facebookController = TextEditingController();
  final _instagramController = TextEditingController();
  final _tiktokController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _whatsappController.dispose();
    _facebookController.dispose();
    _instagramController.dispose();
    _tiktokController.dispose();
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Modifier votre profile")),
      body: Query$GetMe$Widget(
        builder: (result, {fetchMore, refetch}) {
          Query$GetMe? data;

          if (result.data != null) {
            data = Query$GetMe.fromJson(result.data!);

            _nameController.text = data.me?.name ?? "";
            _phoneController.text = data.me?.phone ?? "";
            _whatsappController.text = data.me?.whatsapp ?? "";
            _instagramController.text = data.me?.instagram ?? "";
            _facebookController.text = data.me?.facebook ?? "";
            _tiktokController.text = data.me?.tiktok ?? "";
          }

          return result.isLoading
              ? Center(child: CircularProgressIndicator())
              : data?.me == null
              ? Center(
                  child: Text(
                    "Erreur lors de la récuperation \n des données.",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                )
              : SingleChildScrollView(
                  padding: EdgeInsets.all(16),
                  child: Mutation$UpdateUser$Widget(
                    options: WidgetOptions$Mutation$UpdateUser(
                      onCompleted: (_, data) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Mise a jour du profile effectuée avec succès."),
                            behavior: SnackBarBehavior.floating,
                            backgroundColor: Colors.green,
                          ),
                        );

                        Navigator.pop(context);
                        refetch?.call();
                      },
                      onError: (error) {
                        GraphQLService.operationExceptionHandler(context, error);
                      },
                    ),
                    builder: (runMutation, result) {
                      return Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: InkWell(
                                overlayColor: WidgetStatePropertyAll(Colors.transparent),
                                onTap: _selectImage,
                                child: CircleAvatar(
                                  radius: 50,
                                  child: Stack(
                                    children: [
                                      Positioned.fill(
                                        child: ClipOval(
                                          child: _image != null
                                              ? Image.file(
                                                  File(_image!.path),
                                                  fit: BoxFit.cover,
                                                  errorBuilder: (context, error, stackTrace) {
                                                    return Icon(
                                                      Icons.image,
                                                      color: Theme.of(context).colorScheme.primary,
                                                    );
                                                  },
                                                )
                                              : Image.network(
                                                  data?.me?.picture != null
                                                      ? data!.me!.picture!
                                                      : "",
                                                  fit: BoxFit.cover,
                                                  errorBuilder: (context, error, stackTrace) {
                                                    return Icon(
                                                      Icons.image,
                                                      color: Theme.of(context).colorScheme.primary,
                                                    );
                                                  },
                                                ),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 0,
                                        right: 0,
                                        child: CircleAvatar(
                                          radius: 16,
                                          backgroundColor: Theme.of(context).colorScheme.primary,
                                          child: Icon(
                                            Icons.camera_alt,
                                            size: 18,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            const SizedBox(height: 25),

                            Center(
                              child: IntrinsicWidth(
                                child: Container(
                                  padding: EdgeInsetsGeometry.symmetric(
                                    horizontal: 10,
                                    vertical: 5,
                                  ),
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
                                        Icons.mail_outline,
                                        size: 18,
                                        color: Theme.of(context).colorScheme.onPrimaryFixedVariant,
                                      ),
                                      Text(
                                        data!.me!.email,
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Theme.of(
                                            context,
                                          ).colorScheme.onPrimaryFixedVariant,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            const SizedBox(height: 25),

                            TextFormField(
                              controller: _nameController,
                              decoration: const InputDecoration(
                                labelText: "Nom",
                                prefixIcon: Icon(Icons.person),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(12)),
                                ),
                                hintText: "Entrez votre nom complet",
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Le nom est requis";
                                }
                                if (isName(value) == false) {
                                  return "Nom invalide";
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 16),

                            TextFormField(
                              controller: _phoneController,
                              keyboardType: TextInputType.phone,
                              decoration: const InputDecoration(
                                labelText: "Telephone",
                                prefixIcon: Icon(Icons.phone),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(12)),
                                ),
                                hintText: "Entrez votre numero de contact",
                              ),
                              validator: (value) {
                                if (value != null && value.isNotEmpty) {
                                  if (isPhoneNumber(value) == false) {
                                    return "Numero de telephone invalide";
                                  }
                                  return null;
                                }
                                return null;
                              },
                            ),

                            const SizedBox(height: 16),
                            Text("Réseaux sociaux", style: TextStyle(fontWeight: FontWeight.bold)),
                            const SizedBox(height: 12),

                            TextFormField(
                              controller: _whatsappController,
                              keyboardType: TextInputType.phone,
                              decoration: const InputDecoration(
                                labelText: "Whatsapp",
                                prefixIcon: Icon(FontAwesomeIcons.whatsapp),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(12)),
                                ),
                                hintText: "Numero Whatsapp",
                              ),
                              validator: (value) {
                                if (value != null && value.isNotEmpty) {
                                  if (isPhoneNumber(value) == false) {
                                    return "Numero Whatsapp invalide";
                                  }
                                  return null;
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 16),

                            TextFormField(
                              controller: _instagramController,
                              decoration: const InputDecoration(
                                labelText: "Instagram",
                                prefixIcon: Icon(FontAwesomeIcons.instagram),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(12)),
                                ),
                                hintText: "Nom d'utilisateur Instagram",
                              ),
                              validator: (value) {
                                if (value != null && value.isNotEmpty) {
                                  if (isInstagramUsername(value) == false) {
                                    return "Nom d'utilisateur Instagram invalide";
                                  }
                                  return null;
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 16),

                            TextFormField(
                              controller: _facebookController,

                              decoration: const InputDecoration(
                                labelText: "Facebook",
                                prefixIcon: Icon(Icons.facebook),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(12)),
                                ),
                                hintText: "Lien profile Facebook",
                              ),
                              validator: (value) {
                                if (value != null && value.isNotEmpty) {
                                  if (isFacebookUsername(value) == false) {
                                    return "Lien profile Facebook invalide";
                                  }
                                  return null;
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 16),

                            TextFormField(
                              controller: _tiktokController,
                              decoration: const InputDecoration(
                                labelText: "TikTok",
                                prefixIcon: Icon(FontAwesomeIcons.tiktok),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(12)),
                                ),
                                hintText: "Nom d'utilisateur TikTok",
                              ),
                              validator: (value) {
                                if (value != null && value.isNotEmpty) {
                                  if (isTikTokUsername(value) == false) {
                                    return "Nom d'utilisateur TikTok invalide";
                                  }
                                  return null;
                                }
                                return null;
                              },
                            ),

                            const SizedBox(height: 25),
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {
                                  if (result?.isNotLoading ?? false) {
                                    if (_formKey.currentState?.validate() ?? false) {
                                      runMutation(
                                        Variables$Mutation$UpdateUser(
                                          input: Input$UpdateUserInput(
                                            name: _nameController.text,
                                            phone: _phoneController.text,
                                            whatsapp: _whatsappController.text,
                                            instagram: _instagramController.text,
                                            facebook: _facebookController.text,
                                            tiktok: _tiktokController.text,
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
                                        'Terminer',
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
                      );
                    },
                  ),
                );
        },
      ),
    );
  }
}
