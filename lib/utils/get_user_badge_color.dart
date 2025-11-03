import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/generated/graphql/schema.graphql.dart';

MaterialColor getUserBadgeColor(Enum$UserBadge badge) {
  switch (toJson$Enum$UserBadge(badge)) {
    case "GOLD":
      return Colors.orange;
    case "SILVER":
      return Colors.grey;
    default:
      return Colors.brown;
  }
}
