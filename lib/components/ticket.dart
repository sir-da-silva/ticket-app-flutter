import 'package:flutter/material.dart';

class TicketCard extends StatelessWidget {
  // Legacy fields (kept for backward compatibility)
  final String ticketNumber;
  final String title; // Nom de l'evenement
  final String status;
  final String date; // legacy display date
  final Color statusColor;

  // New optional fields
  final DateTime? eventDateTime; // pour countdown/counted-up
  final bool? isUsed; // si utilisé ou non
  final String? imageUrl; // optionnel

  const TicketCard({
    super.key,
    required this.ticketNumber,
    required this.title,
    required this.status,
    required this.date,
    required this.statusColor,
    this.eventDateTime,
    this.isUsed,
    this.imageUrl,
  });

  Duration? get _timeDiff {
    if (eventDateTime == null) return null;
    return eventDateTime!.difference(DateTime.now());
  }

  String _formatCountdown(Duration d) {
    final bool isPast = d.isNegative;
    final Duration abs = d.abs();
    final int days = abs.inDays;
    final int hours = abs.inHours % 24;
    final int minutes = abs.inMinutes % 60;
    final String formatted = '${days}j ${hours}h ${minutes}m';
    return isPast ? '+ $formatted' : '- $formatted';
  }

  @override
  Widget build(BuildContext context) {
    final Duration? diff = _timeDiff;
    final String? countdown = diff != null ? _formatCountdown(diff) : null;
    final bool used = isUsed ?? false;

    return Card(
      margin: const EdgeInsets.symmetric(vertical: 4),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // Optional header image
          if (imageUrl != null)
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Image.network(
                imageUrl!,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stack) {
                  return Container(
                    color: Theme.of(context).colorScheme.surfaceContainerHighest,
                    child: Icon(
                      Icons.image_not_supported,
                      color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5),
                    ),
                  );
                },
              ),
            ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.blue.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Icon(Icons.confirmation_number, color: Colors.blue, size: 24),
                    ),
                    const Spacer(),
                    // Used badge
                    if (used)
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.green.withValues(alpha: 0.15),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Text(
                          'Utilisé',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.green,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )
                    else
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: statusColor.withValues(alpha: 0.1),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          status,
                          style: TextStyle(
                            fontSize: 12,
                            color: statusColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                  ],
                ),
                const SizedBox(height: 12),
                Text(
                  'Ticket #$ticketNumber',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  title,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Icon(Icons.schedule, size: 14, color: Colors.grey[600]),
                    const SizedBox(width: 6),
                    if (countdown != null)
                      Text(
                        countdown,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    else
                      Text(date, style: TextStyle(fontSize: 12, color: Colors.grey[600])),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
