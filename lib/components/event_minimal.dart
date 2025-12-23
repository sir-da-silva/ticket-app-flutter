import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/utils/date_parser.dart';

Widget eventMinimal(
  BuildContext context, {
  void Function()? onTap,
  required String picture,
  required String title,
  required String location,
  required DateTime date,
}) {
  final customDate = CustomDateParser(date: date);

  return InkWell(
    onTap: onTap,
    overlayColor: WidgetStatePropertyAll(Colors.transparent),
    child: Card(
      margin: EdgeInsets.symmetric(vertical: 4, horizontal: 1),
      color: Theme.of(context).colorScheme.surfaceContainer,
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Row(
          spacing: 8,
          children: [
            SizedBox(
              width: 70,
              height: 70,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.network(
                  picture,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Icon(Icons.image, color: Colors.grey.withValues(alpha: 0.5));
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
                    title,
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
                          color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.2),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(2),
                          child: Icon(
                            Icons.location_on_rounded,
                            size: 14,
                            color: Theme.of(context).colorScheme.onPrimaryFixed,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          location,
                          style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),

                  Row(
                    spacing: 5,
                    children: [
                      DecoratedBox(
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.2),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(2),
                          child: Icon(
                            Icons.calendar_month_rounded,
                            size: 14,
                            color: Theme.of(context).colorScheme.onPrimaryFixed,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "${customDate.monthDayNumber} ${customDate.monthNameShort}  •  ${customDate.hour12}:${customDate.minute} ${customDate.meridiem}",
                          style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            fontWeight: FontWeight.w500,
                          ),
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
}
