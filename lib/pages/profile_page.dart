import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_first_flutter_app/components/build_section_header.dart';
import 'package:my_first_flutter_app/components/login_required.dart';
import 'package:my_first_flutter_app/components/ticket.dart';
import 'package:my_first_flutter_app/navigation/route_names.dart';
import 'package:my_first_flutter_app/services/jwt_service.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isAuthenticated = false;

  @override
  void initState() {
    super.initState();
    checkAuthentication();
  }

  void checkAuthentication() async {
    final test = await JWTService.isAuthenticated();
    setState(() {
      isAuthenticated = test;
    });
  }

  Widget _buildSocialButton(
    BuildContext context,
    IconData icon,
    String tooltip,
    Color color,
  ) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(12),
      ),
      child: IconButton(
        onPressed: () {},
        icon: Icon(icon, size: 24, color: color),
        tooltip: tooltip,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: isAuthenticated
          ? AppBar(
              title: const Text('Mon Compte'),
              actionsPadding: const EdgeInsets.only(right: 16),
              backgroundColor: Theme.of(
                context,
              ).colorScheme.primary.withOpacity(0.1),
              actions: [
                IconButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, RouteNames.profileEdit),
                  icon: const Icon(Icons.edit_outlined, size: 28),
                  tooltip: 'Modifier le profil',
                ),
                const SizedBox(width: 4),
                IconButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, RouteNames.settings),
                  icon: const Icon(Icons.settings_outlined, size: 28),
                  tooltip: 'Paramètres',
                ),
              ],
            )
          : null,
      body: !isAuthenticated
          ? LoginRequired(
              icon: Icons.person,
              title: "Mon profil",
              message: "Gérer vos données personels.",
            )
          : SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Profile Header Section
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Theme.of(
                            context,
                          ).colorScheme.primary.withOpacity(0.1),
                          Theme.of(
                            context,
                          ).colorScheme.secondary.withOpacity(0.05),
                        ],
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        children: [
                          // Profile Avatar with enhanced styling
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 3,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Theme.of(
                                    context,
                                  ).colorScheme.primary.withOpacity(0.3),
                                  blurRadius: 20,
                                  offset: const Offset(0, 8),
                                ),
                              ],
                            ),
                            child: CircleAvatar(
                              radius: 50,
                              backgroundColor: Theme.of(
                                context,
                              ).colorScheme.surface,
                              backgroundImage: const NetworkImage(
                                'https://avatar.iran.liara.run/public/21',
                              ),
                              onBackgroundImageError: (exception, stackTrace) {
                                // Fallback to icon if image fails to load
                              },
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            spacing: 8,
                            children: [
                              Text(
                                'John Doe',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(
                                    context,
                                  ).colorScheme.onSurface,
                                ),
                              ),
                              Icon(
                                Icons.verified_rounded,
                                size: 20,
                                color: Colors.green,
                              ),
                            ],
                          ),
                          // User Name
                          const SizedBox(height: 2),
                          // Email
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              'john.doe@example.com',
                              style: TextStyle(
                                fontSize: 16,
                                color: Theme.of(
                                  context,
                                ).colorScheme.onSurface.withOpacity(0.7),
                              ),
                            ),
                          ),
                          const SizedBox(height: 15),
                          // Social Links
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _buildSocialButton(
                                context,
                                FontAwesomeIcons.whatsapp,
                                'WhatsApp',
                                const Color(0xFF25D366),
                              ),
                              const SizedBox(width: 16),
                              _buildSocialButton(
                                context,
                                FontAwesomeIcons.facebook,
                                'Facebook',
                                const Color(0xFF1877F2),
                              ),
                              const SizedBox(width: 16),
                              _buildSocialButton(
                                context,
                                FontAwesomeIcons.instagram,
                                'Instagram',
                                const Color(0xFFE4405F),
                              ),
                              const SizedBox(width: 16),
                              _buildSocialButton(
                                context,
                                FontAwesomeIcons.tiktok,
                                'TikTok',
                                const Color(0xFF000000),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(height: 0),
                  // Activités Suivies Section
                  buildSectionHeader(
                    context,
                    'Activités Suivies',
                    Icons.calendar_month_outlined,
                    () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Voir toutes les activités'),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 300,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 12),
                          // child: SizedBox(width: 300, child: _getEvents(index)),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 15),
                  // Tickets Achetés Section
                  buildSectionHeader(
                    context,
                    'Tickets Achetés',
                    Icons.confirmation_number_outlined,
                    () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Voir tous les tickets')),
                      );
                    },
                  ),
                  SizedBox(
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 12),
                          child: SizedBox(
                            width: 300,
                            child: TicketCard(
                              ticketNumber: '${1000 + index}',
                              title: 'Ticket ${index + 1}',
                              // status: _getTicketStatus(index),
                              status: "",
                              date:
                                  '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                              // statusColor: _getTicketStatusColor(index),
                              statusColor: Colors.amber,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
    );
  }
}
