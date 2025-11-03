class CustomDateParser {
  final DateTime date;

  CustomDateParser({required this.date});

  String _getWeekDayName({bool full = true}) {
    switch (date.weekday) {
      case DateTime.monday:
        return "Lun${full ? "di" : ""}";
      case DateTime.tuesday:
        return "Mar${full ? "di" : ""}";
      case DateTime.wednesday:
        return "Mer${full ? "credi" : ""}";
      case DateTime.thursday:
        return "Jeu${full ? "di" : ""}";
      case DateTime.friday:
        return "Ven${full ? "dredi" : ""}";
      case DateTime.saturday:
        return "Sam${full ? "edi" : ""}";
      default:
        return "Dim${full ? "anche" : ""}";
    }
  }

  String _getMonth({bool full = true}) {
    switch (date.month) {
      case DateTime.january:
        return "Jan${full ? "vier" : ""}";
      case DateTime.february:
        return "Fév${full ? "rier" : ""}";
      case DateTime.march:
        return "Mars";
      case DateTime.april:
        return "Avr${full ? "il" : ""}";
      case DateTime.may:
        return "Mai";
      case DateTime.june:
        return "Juin${full ? "di" : ""}";
      case DateTime.july:
        return "Juil${full ? "let" : ""}";
      case DateTime.august:
        return "Août";
      case DateTime.september:
        return "Sep${full ? "tembre" : ""}";
      case DateTime.october:
        return "Oct${full ? "obre" : ""}";
      case DateTime.november:
        return "Nov${full ? "embre" : ""}";
      default:
        return "Déc${full ? "embre" : ""}";
    }
  }

  String get monthDayNumber {
    return date.day.toString();
  }

  String get weekDayName {
    return _getWeekDayName();
  }

  String get weekDayNameShort {
    return _getWeekDayName(full: false);
  }

  String get monthNumber {
    return date.month.toString();
  }

  String get monthName {
    return _getMonth();
  }

  String get monthNameShort {
    return _getMonth(full: false);
  }

  String get yearFull {
    return date.year.toString();
  }

  String get yearShort {
    return date.year.toString().replaceFirst(RegExp(r'19|20'), "");
  }

  String get hour24 {
    return date.hour.toString();
  }

  String get hour12 {
    return date.hour < 13 ? date.hour.toString() : (date.hour - 12).toString();
  }

  String get minute {
    return date.minute.toString().padLeft(2, '0');
  }

  String get meridiem {
    return date.hour < 13 ? "AM" : "PM";
  }

  // String format(String string) {
  //   return string
  //       .replaceAll(RegExp('\d'), monthDayNumber)
  //       .replaceAll(RegExp('\m'), monthNumber)
  //       .replaceAll(RegExp('\y'), yearFull)
  //       .replaceAll(RegExp('\Y'), yearShort)
  //       .replaceAll(RegExp('\h'), hour24)
  //       .replaceAll(RegExp('\H'), hour12)
  //       .replaceAll(RegExp('\i'), minute)
  //       .replaceAll(RegExp('\p'), meridiem)
  //       .replaceAll(RegExp('\D'), weekDayName)
  //       .replaceAll(RegExp('\M'), monthName);
  // }
}
