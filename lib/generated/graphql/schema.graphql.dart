// GENERATED FILE
// DO NOT MODIFY
class Input$BuyTicketInput {
  factory Input$BuyTicketInput({required String eventId}) =>
      Input$BuyTicketInput._({
        r'eventId': eventId,
      });

  Input$BuyTicketInput._(this._$data);

  factory Input$BuyTicketInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$eventId = data['eventId'];
    result$data['eventId'] = (l$eventId as String);
    return Input$BuyTicketInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get eventId => (_$data['eventId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$eventId = eventId;
    result$data['eventId'] = l$eventId;
    return result$data;
  }

  CopyWith$Input$BuyTicketInput<Input$BuyTicketInput> get copyWith =>
      CopyWith$Input$BuyTicketInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$BuyTicketInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$eventId = eventId;
    final lOther$eventId = other.eventId;
    if (l$eventId != lOther$eventId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$eventId = eventId;
    return Object.hashAll([l$eventId]);
  }
}

abstract class CopyWith$Input$BuyTicketInput<TRes> {
  factory CopyWith$Input$BuyTicketInput(
    Input$BuyTicketInput instance,
    TRes Function(Input$BuyTicketInput) then,
  ) = _CopyWithImpl$Input$BuyTicketInput;

  factory CopyWith$Input$BuyTicketInput.stub(TRes res) =
      _CopyWithStubImpl$Input$BuyTicketInput;

  TRes call({String? eventId});
}

class _CopyWithImpl$Input$BuyTicketInput<TRes>
    implements CopyWith$Input$BuyTicketInput<TRes> {
  _CopyWithImpl$Input$BuyTicketInput(
    this._instance,
    this._then,
  );

  final Input$BuyTicketInput _instance;

  final TRes Function(Input$BuyTicketInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? eventId = _undefined}) => _then(Input$BuyTicketInput._({
        ..._instance._$data,
        if (eventId != _undefined && eventId != null)
          'eventId': (eventId as String),
      }));
}

class _CopyWithStubImpl$Input$BuyTicketInput<TRes>
    implements CopyWith$Input$BuyTicketInput<TRes> {
  _CopyWithStubImpl$Input$BuyTicketInput(this._res);

  TRes _res;

  call({String? eventId}) => _res;
}

class Input$ChangePasswordInput {
  factory Input$ChangePasswordInput({
    required String oldPassword,
    required String newPassword,
  }) =>
      Input$ChangePasswordInput._({
        r'oldPassword': oldPassword,
        r'newPassword': newPassword,
      });

  Input$ChangePasswordInput._(this._$data);

  factory Input$ChangePasswordInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$oldPassword = data['oldPassword'];
    result$data['oldPassword'] = (l$oldPassword as String);
    final l$newPassword = data['newPassword'];
    result$data['newPassword'] = (l$newPassword as String);
    return Input$ChangePasswordInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get oldPassword => (_$data['oldPassword'] as String);

  String get newPassword => (_$data['newPassword'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$oldPassword = oldPassword;
    result$data['oldPassword'] = l$oldPassword;
    final l$newPassword = newPassword;
    result$data['newPassword'] = l$newPassword;
    return result$data;
  }

  CopyWith$Input$ChangePasswordInput<Input$ChangePasswordInput> get copyWith =>
      CopyWith$Input$ChangePasswordInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ChangePasswordInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$oldPassword = oldPassword;
    final lOther$oldPassword = other.oldPassword;
    if (l$oldPassword != lOther$oldPassword) {
      return false;
    }
    final l$newPassword = newPassword;
    final lOther$newPassword = other.newPassword;
    if (l$newPassword != lOther$newPassword) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$oldPassword = oldPassword;
    final l$newPassword = newPassword;
    return Object.hashAll([
      l$oldPassword,
      l$newPassword,
    ]);
  }
}

abstract class CopyWith$Input$ChangePasswordInput<TRes> {
  factory CopyWith$Input$ChangePasswordInput(
    Input$ChangePasswordInput instance,
    TRes Function(Input$ChangePasswordInput) then,
  ) = _CopyWithImpl$Input$ChangePasswordInput;

  factory CopyWith$Input$ChangePasswordInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ChangePasswordInput;

  TRes call({
    String? oldPassword,
    String? newPassword,
  });
}

class _CopyWithImpl$Input$ChangePasswordInput<TRes>
    implements CopyWith$Input$ChangePasswordInput<TRes> {
  _CopyWithImpl$Input$ChangePasswordInput(
    this._instance,
    this._then,
  );

  final Input$ChangePasswordInput _instance;

  final TRes Function(Input$ChangePasswordInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? oldPassword = _undefined,
    Object? newPassword = _undefined,
  }) =>
      _then(Input$ChangePasswordInput._({
        ..._instance._$data,
        if (oldPassword != _undefined && oldPassword != null)
          'oldPassword': (oldPassword as String),
        if (newPassword != _undefined && newPassword != null)
          'newPassword': (newPassword as String),
      }));
}

class _CopyWithStubImpl$Input$ChangePasswordInput<TRes>
    implements CopyWith$Input$ChangePasswordInput<TRes> {
  _CopyWithStubImpl$Input$ChangePasswordInput(this._res);

  TRes _res;

  call({
    String? oldPassword,
    String? newPassword,
  }) =>
      _res;
}

class Input$CompleteSignUpInput {
  factory Input$CompleteSignUpInput({
    required String email,
    required String code,
  }) =>
      Input$CompleteSignUpInput._({
        r'email': email,
        r'code': code,
      });

  Input$CompleteSignUpInput._(this._$data);

  factory Input$CompleteSignUpInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$email = data['email'];
    result$data['email'] = (l$email as String);
    final l$code = data['code'];
    result$data['code'] = (l$code as String);
    return Input$CompleteSignUpInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get email => (_$data['email'] as String);

  String get code => (_$data['code'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$email = email;
    result$data['email'] = l$email;
    final l$code = code;
    result$data['code'] = l$code;
    return result$data;
  }

  CopyWith$Input$CompleteSignUpInput<Input$CompleteSignUpInput> get copyWith =>
      CopyWith$Input$CompleteSignUpInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CompleteSignUpInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$email = email;
    final l$code = code;
    return Object.hashAll([
      l$email,
      l$code,
    ]);
  }
}

abstract class CopyWith$Input$CompleteSignUpInput<TRes> {
  factory CopyWith$Input$CompleteSignUpInput(
    Input$CompleteSignUpInput instance,
    TRes Function(Input$CompleteSignUpInput) then,
  ) = _CopyWithImpl$Input$CompleteSignUpInput;

  factory CopyWith$Input$CompleteSignUpInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CompleteSignUpInput;

  TRes call({
    String? email,
    String? code,
  });
}

class _CopyWithImpl$Input$CompleteSignUpInput<TRes>
    implements CopyWith$Input$CompleteSignUpInput<TRes> {
  _CopyWithImpl$Input$CompleteSignUpInput(
    this._instance,
    this._then,
  );

  final Input$CompleteSignUpInput _instance;

  final TRes Function(Input$CompleteSignUpInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? email = _undefined,
    Object? code = _undefined,
  }) =>
      _then(Input$CompleteSignUpInput._({
        ..._instance._$data,
        if (email != _undefined && email != null) 'email': (email as String),
        if (code != _undefined && code != null) 'code': (code as String),
      }));
}

class _CopyWithStubImpl$Input$CompleteSignUpInput<TRes>
    implements CopyWith$Input$CompleteSignUpInput<TRes> {
  _CopyWithStubImpl$Input$CompleteSignUpInput(this._res);

  TRes _res;

  call({
    String? email,
    String? code,
  }) =>
      _res;
}

class Input$CreateEventInput {
  factory Input$CreateEventInput({
    required String picture,
    required String title,
    required String description,
    required String location,
    required String category,
    required DateTime date,
    required double price,
    required String priceCurrency,
  }) =>
      Input$CreateEventInput._({
        r'picture': picture,
        r'title': title,
        r'description': description,
        r'location': location,
        r'category': category,
        r'date': date,
        r'price': price,
        r'priceCurrency': priceCurrency,
      });

  Input$CreateEventInput._(this._$data);

  factory Input$CreateEventInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$picture = data['picture'];
    result$data['picture'] = (l$picture as String);
    final l$title = data['title'];
    result$data['title'] = (l$title as String);
    final l$description = data['description'];
    result$data['description'] = (l$description as String);
    final l$location = data['location'];
    result$data['location'] = (l$location as String);
    final l$category = data['category'];
    result$data['category'] = (l$category as String);
    final l$date = data['date'];
    result$data['date'] = DateTime.parse((l$date as String));
    final l$price = data['price'];
    result$data['price'] = (l$price as num).toDouble();
    final l$priceCurrency = data['priceCurrency'];
    result$data['priceCurrency'] = (l$priceCurrency as String);
    return Input$CreateEventInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get picture => (_$data['picture'] as String);

  String get title => (_$data['title'] as String);

  String get description => (_$data['description'] as String);

  String get location => (_$data['location'] as String);

  String get category => (_$data['category'] as String);

  DateTime get date => (_$data['date'] as DateTime);

  double get price => (_$data['price'] as double);

  String get priceCurrency => (_$data['priceCurrency'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$picture = picture;
    result$data['picture'] = l$picture;
    final l$title = title;
    result$data['title'] = l$title;
    final l$description = description;
    result$data['description'] = l$description;
    final l$location = location;
    result$data['location'] = l$location;
    final l$category = category;
    result$data['category'] = l$category;
    final l$date = date;
    result$data['date'] = l$date.toIso8601String();
    final l$price = price;
    result$data['price'] = l$price;
    final l$priceCurrency = priceCurrency;
    result$data['priceCurrency'] = l$priceCurrency;
    return result$data;
  }

  CopyWith$Input$CreateEventInput<Input$CreateEventInput> get copyWith =>
      CopyWith$Input$CreateEventInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CreateEventInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$picture = picture;
    final lOther$picture = other.picture;
    if (l$picture != lOther$picture) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$location = location;
    final lOther$location = other.location;
    if (l$location != lOther$location) {
      return false;
    }
    final l$category = category;
    final lOther$category = other.category;
    if (l$category != lOther$category) {
      return false;
    }
    final l$date = date;
    final lOther$date = other.date;
    if (l$date != lOther$date) {
      return false;
    }
    final l$price = price;
    final lOther$price = other.price;
    if (l$price != lOther$price) {
      return false;
    }
    final l$priceCurrency = priceCurrency;
    final lOther$priceCurrency = other.priceCurrency;
    if (l$priceCurrency != lOther$priceCurrency) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$picture = picture;
    final l$title = title;
    final l$description = description;
    final l$location = location;
    final l$category = category;
    final l$date = date;
    final l$price = price;
    final l$priceCurrency = priceCurrency;
    return Object.hashAll([
      l$picture,
      l$title,
      l$description,
      l$location,
      l$category,
      l$date,
      l$price,
      l$priceCurrency,
    ]);
  }
}

abstract class CopyWith$Input$CreateEventInput<TRes> {
  factory CopyWith$Input$CreateEventInput(
    Input$CreateEventInput instance,
    TRes Function(Input$CreateEventInput) then,
  ) = _CopyWithImpl$Input$CreateEventInput;

  factory CopyWith$Input$CreateEventInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateEventInput;

  TRes call({
    String? picture,
    String? title,
    String? description,
    String? location,
    String? category,
    DateTime? date,
    double? price,
    String? priceCurrency,
  });
}

class _CopyWithImpl$Input$CreateEventInput<TRes>
    implements CopyWith$Input$CreateEventInput<TRes> {
  _CopyWithImpl$Input$CreateEventInput(
    this._instance,
    this._then,
  );

  final Input$CreateEventInput _instance;

  final TRes Function(Input$CreateEventInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? picture = _undefined,
    Object? title = _undefined,
    Object? description = _undefined,
    Object? location = _undefined,
    Object? category = _undefined,
    Object? date = _undefined,
    Object? price = _undefined,
    Object? priceCurrency = _undefined,
  }) =>
      _then(Input$CreateEventInput._({
        ..._instance._$data,
        if (picture != _undefined && picture != null)
          'picture': (picture as String),
        if (title != _undefined && title != null) 'title': (title as String),
        if (description != _undefined && description != null)
          'description': (description as String),
        if (location != _undefined && location != null)
          'location': (location as String),
        if (category != _undefined && category != null)
          'category': (category as String),
        if (date != _undefined && date != null) 'date': (date as DateTime),
        if (price != _undefined && price != null) 'price': (price as double),
        if (priceCurrency != _undefined && priceCurrency != null)
          'priceCurrency': (priceCurrency as String),
      }));
}

class _CopyWithStubImpl$Input$CreateEventInput<TRes>
    implements CopyWith$Input$CreateEventInput<TRes> {
  _CopyWithStubImpl$Input$CreateEventInput(this._res);

  TRes _res;

  call({
    String? picture,
    String? title,
    String? description,
    String? location,
    String? category,
    DateTime? date,
    double? price,
    String? priceCurrency,
  }) =>
      _res;
}

class Input$CreateTicketInput {
  factory Input$CreateTicketInput({
    required String eventId,
    required String buyerName,
    String? buyerPhone,
    String? buyerEmail,
  }) =>
      Input$CreateTicketInput._({
        r'eventId': eventId,
        r'buyerName': buyerName,
        if (buyerPhone != null) r'buyerPhone': buyerPhone,
        if (buyerEmail != null) r'buyerEmail': buyerEmail,
      });

  Input$CreateTicketInput._(this._$data);

  factory Input$CreateTicketInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$eventId = data['eventId'];
    result$data['eventId'] = (l$eventId as String);
    final l$buyerName = data['buyerName'];
    result$data['buyerName'] = (l$buyerName as String);
    if (data.containsKey('buyerPhone')) {
      final l$buyerPhone = data['buyerPhone'];
      result$data['buyerPhone'] = (l$buyerPhone as String?);
    }
    if (data.containsKey('buyerEmail')) {
      final l$buyerEmail = data['buyerEmail'];
      result$data['buyerEmail'] = (l$buyerEmail as String?);
    }
    return Input$CreateTicketInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get eventId => (_$data['eventId'] as String);

  String get buyerName => (_$data['buyerName'] as String);

  String? get buyerPhone => (_$data['buyerPhone'] as String?);

  String? get buyerEmail => (_$data['buyerEmail'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$eventId = eventId;
    result$data['eventId'] = l$eventId;
    final l$buyerName = buyerName;
    result$data['buyerName'] = l$buyerName;
    if (_$data.containsKey('buyerPhone')) {
      final l$buyerPhone = buyerPhone;
      result$data['buyerPhone'] = l$buyerPhone;
    }
    if (_$data.containsKey('buyerEmail')) {
      final l$buyerEmail = buyerEmail;
      result$data['buyerEmail'] = l$buyerEmail;
    }
    return result$data;
  }

  CopyWith$Input$CreateTicketInput<Input$CreateTicketInput> get copyWith =>
      CopyWith$Input$CreateTicketInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CreateTicketInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$eventId = eventId;
    final lOther$eventId = other.eventId;
    if (l$eventId != lOther$eventId) {
      return false;
    }
    final l$buyerName = buyerName;
    final lOther$buyerName = other.buyerName;
    if (l$buyerName != lOther$buyerName) {
      return false;
    }
    final l$buyerPhone = buyerPhone;
    final lOther$buyerPhone = other.buyerPhone;
    if (_$data.containsKey('buyerPhone') !=
        other._$data.containsKey('buyerPhone')) {
      return false;
    }
    if (l$buyerPhone != lOther$buyerPhone) {
      return false;
    }
    final l$buyerEmail = buyerEmail;
    final lOther$buyerEmail = other.buyerEmail;
    if (_$data.containsKey('buyerEmail') !=
        other._$data.containsKey('buyerEmail')) {
      return false;
    }
    if (l$buyerEmail != lOther$buyerEmail) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$eventId = eventId;
    final l$buyerName = buyerName;
    final l$buyerPhone = buyerPhone;
    final l$buyerEmail = buyerEmail;
    return Object.hashAll([
      l$eventId,
      l$buyerName,
      _$data.containsKey('buyerPhone') ? l$buyerPhone : const {},
      _$data.containsKey('buyerEmail') ? l$buyerEmail : const {},
    ]);
  }
}

abstract class CopyWith$Input$CreateTicketInput<TRes> {
  factory CopyWith$Input$CreateTicketInput(
    Input$CreateTicketInput instance,
    TRes Function(Input$CreateTicketInput) then,
  ) = _CopyWithImpl$Input$CreateTicketInput;

  factory CopyWith$Input$CreateTicketInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateTicketInput;

  TRes call({
    String? eventId,
    String? buyerName,
    String? buyerPhone,
    String? buyerEmail,
  });
}

class _CopyWithImpl$Input$CreateTicketInput<TRes>
    implements CopyWith$Input$CreateTicketInput<TRes> {
  _CopyWithImpl$Input$CreateTicketInput(
    this._instance,
    this._then,
  );

  final Input$CreateTicketInput _instance;

  final TRes Function(Input$CreateTicketInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? eventId = _undefined,
    Object? buyerName = _undefined,
    Object? buyerPhone = _undefined,
    Object? buyerEmail = _undefined,
  }) =>
      _then(Input$CreateTicketInput._({
        ..._instance._$data,
        if (eventId != _undefined && eventId != null)
          'eventId': (eventId as String),
        if (buyerName != _undefined && buyerName != null)
          'buyerName': (buyerName as String),
        if (buyerPhone != _undefined) 'buyerPhone': (buyerPhone as String?),
        if (buyerEmail != _undefined) 'buyerEmail': (buyerEmail as String?),
      }));
}

class _CopyWithStubImpl$Input$CreateTicketInput<TRes>
    implements CopyWith$Input$CreateTicketInput<TRes> {
  _CopyWithStubImpl$Input$CreateTicketInput(this._res);

  TRes _res;

  call({
    String? eventId,
    String? buyerName,
    String? buyerPhone,
    String? buyerEmail,
  }) =>
      _res;
}

class Input$InitSignUpInput {
  factory Input$InitSignUpInput({
    required String name,
    required String email,
    required String password,
  }) =>
      Input$InitSignUpInput._({
        r'name': name,
        r'email': email,
        r'password': password,
      });

  Input$InitSignUpInput._(this._$data);

  factory Input$InitSignUpInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    final l$email = data['email'];
    result$data['email'] = (l$email as String);
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    return Input$InitSignUpInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get name => (_$data['name'] as String);

  String get email => (_$data['email'] as String);

  String get password => (_$data['password'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$name = name;
    result$data['name'] = l$name;
    final l$email = email;
    result$data['email'] = l$email;
    final l$password = password;
    result$data['password'] = l$password;
    return result$data;
  }

  CopyWith$Input$InitSignUpInput<Input$InitSignUpInput> get copyWith =>
      CopyWith$Input$InitSignUpInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$InitSignUpInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$email = email;
    final l$password = password;
    return Object.hashAll([
      l$name,
      l$email,
      l$password,
    ]);
  }
}

abstract class CopyWith$Input$InitSignUpInput<TRes> {
  factory CopyWith$Input$InitSignUpInput(
    Input$InitSignUpInput instance,
    TRes Function(Input$InitSignUpInput) then,
  ) = _CopyWithImpl$Input$InitSignUpInput;

  factory CopyWith$Input$InitSignUpInput.stub(TRes res) =
      _CopyWithStubImpl$Input$InitSignUpInput;

  TRes call({
    String? name,
    String? email,
    String? password,
  });
}

class _CopyWithImpl$Input$InitSignUpInput<TRes>
    implements CopyWith$Input$InitSignUpInput<TRes> {
  _CopyWithImpl$Input$InitSignUpInput(
    this._instance,
    this._then,
  );

  final Input$InitSignUpInput _instance;

  final TRes Function(Input$InitSignUpInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? email = _undefined,
    Object? password = _undefined,
  }) =>
      _then(Input$InitSignUpInput._({
        ..._instance._$data,
        if (name != _undefined && name != null) 'name': (name as String),
        if (email != _undefined && email != null) 'email': (email as String),
        if (password != _undefined && password != null)
          'password': (password as String),
      }));
}

class _CopyWithStubImpl$Input$InitSignUpInput<TRes>
    implements CopyWith$Input$InitSignUpInput<TRes> {
  _CopyWithStubImpl$Input$InitSignUpInput(this._res);

  TRes _res;

  call({
    String? name,
    String? email,
    String? password,
  }) =>
      _res;
}

class Input$LoginInput {
  factory Input$LoginInput({
    required String email,
    required String password,
  }) =>
      Input$LoginInput._({
        r'email': email,
        r'password': password,
      });

  Input$LoginInput._(this._$data);

  factory Input$LoginInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$email = data['email'];
    result$data['email'] = (l$email as String);
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    return Input$LoginInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get email => (_$data['email'] as String);

  String get password => (_$data['password'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$email = email;
    result$data['email'] = l$email;
    final l$password = password;
    result$data['password'] = l$password;
    return result$data;
  }

  CopyWith$Input$LoginInput<Input$LoginInput> get copyWith =>
      CopyWith$Input$LoginInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$LoginInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$email = email;
    final l$password = password;
    return Object.hashAll([
      l$email,
      l$password,
    ]);
  }
}

abstract class CopyWith$Input$LoginInput<TRes> {
  factory CopyWith$Input$LoginInput(
    Input$LoginInput instance,
    TRes Function(Input$LoginInput) then,
  ) = _CopyWithImpl$Input$LoginInput;

  factory CopyWith$Input$LoginInput.stub(TRes res) =
      _CopyWithStubImpl$Input$LoginInput;

  TRes call({
    String? email,
    String? password,
  });
}

class _CopyWithImpl$Input$LoginInput<TRes>
    implements CopyWith$Input$LoginInput<TRes> {
  _CopyWithImpl$Input$LoginInput(
    this._instance,
    this._then,
  );

  final Input$LoginInput _instance;

  final TRes Function(Input$LoginInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? email = _undefined,
    Object? password = _undefined,
  }) =>
      _then(Input$LoginInput._({
        ..._instance._$data,
        if (email != _undefined && email != null) 'email': (email as String),
        if (password != _undefined && password != null)
          'password': (password as String),
      }));
}

class _CopyWithStubImpl$Input$LoginInput<TRes>
    implements CopyWith$Input$LoginInput<TRes> {
  _CopyWithStubImpl$Input$LoginInput(this._res);

  TRes _res;

  call({
    String? email,
    String? password,
  }) =>
      _res;
}

class Input$UpdateEventInput {
  factory Input$UpdateEventInput({
    String? picture,
    String? title,
    String? description,
    String? location,
    String? category,
    DateTime? date,
    double? price,
    String? priceCurrency,
  }) =>
      Input$UpdateEventInput._({
        if (picture != null) r'picture': picture,
        if (title != null) r'title': title,
        if (description != null) r'description': description,
        if (location != null) r'location': location,
        if (category != null) r'category': category,
        if (date != null) r'date': date,
        if (price != null) r'price': price,
        if (priceCurrency != null) r'priceCurrency': priceCurrency,
      });

  Input$UpdateEventInput._(this._$data);

  factory Input$UpdateEventInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('picture')) {
      final l$picture = data['picture'];
      result$data['picture'] = (l$picture as String?);
    }
    if (data.containsKey('title')) {
      final l$title = data['title'];
      result$data['title'] = (l$title as String?);
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = (l$description as String?);
    }
    if (data.containsKey('location')) {
      final l$location = data['location'];
      result$data['location'] = (l$location as String?);
    }
    if (data.containsKey('category')) {
      final l$category = data['category'];
      result$data['category'] = (l$category as String?);
    }
    if (data.containsKey('date')) {
      final l$date = data['date'];
      result$data['date'] =
          l$date == null ? null : DateTime.parse((l$date as String));
    }
    if (data.containsKey('price')) {
      final l$price = data['price'];
      result$data['price'] = (l$price as num?)?.toDouble();
    }
    if (data.containsKey('priceCurrency')) {
      final l$priceCurrency = data['priceCurrency'];
      result$data['priceCurrency'] = (l$priceCurrency as String?);
    }
    return Input$UpdateEventInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get picture => (_$data['picture'] as String?);

  String? get title => (_$data['title'] as String?);

  String? get description => (_$data['description'] as String?);

  String? get location => (_$data['location'] as String?);

  String? get category => (_$data['category'] as String?);

  DateTime? get date => (_$data['date'] as DateTime?);

  double? get price => (_$data['price'] as double?);

  String? get priceCurrency => (_$data['priceCurrency'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('picture')) {
      final l$picture = picture;
      result$data['picture'] = l$picture;
    }
    if (_$data.containsKey('title')) {
      final l$title = title;
      result$data['title'] = l$title;
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description;
    }
    if (_$data.containsKey('location')) {
      final l$location = location;
      result$data['location'] = l$location;
    }
    if (_$data.containsKey('category')) {
      final l$category = category;
      result$data['category'] = l$category;
    }
    if (_$data.containsKey('date')) {
      final l$date = date;
      result$data['date'] = l$date?.toIso8601String();
    }
    if (_$data.containsKey('price')) {
      final l$price = price;
      result$data['price'] = l$price;
    }
    if (_$data.containsKey('priceCurrency')) {
      final l$priceCurrency = priceCurrency;
      result$data['priceCurrency'] = l$priceCurrency;
    }
    return result$data;
  }

  CopyWith$Input$UpdateEventInput<Input$UpdateEventInput> get copyWith =>
      CopyWith$Input$UpdateEventInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$UpdateEventInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$picture = picture;
    final lOther$picture = other.picture;
    if (_$data.containsKey('picture') != other._$data.containsKey('picture')) {
      return false;
    }
    if (l$picture != lOther$picture) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (_$data.containsKey('title') != other._$data.containsKey('title')) {
      return false;
    }
    if (l$title != lOther$title) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$location = location;
    final lOther$location = other.location;
    if (_$data.containsKey('location') !=
        other._$data.containsKey('location')) {
      return false;
    }
    if (l$location != lOther$location) {
      return false;
    }
    final l$category = category;
    final lOther$category = other.category;
    if (_$data.containsKey('category') !=
        other._$data.containsKey('category')) {
      return false;
    }
    if (l$category != lOther$category) {
      return false;
    }
    final l$date = date;
    final lOther$date = other.date;
    if (_$data.containsKey('date') != other._$data.containsKey('date')) {
      return false;
    }
    if (l$date != lOther$date) {
      return false;
    }
    final l$price = price;
    final lOther$price = other.price;
    if (_$data.containsKey('price') != other._$data.containsKey('price')) {
      return false;
    }
    if (l$price != lOther$price) {
      return false;
    }
    final l$priceCurrency = priceCurrency;
    final lOther$priceCurrency = other.priceCurrency;
    if (_$data.containsKey('priceCurrency') !=
        other._$data.containsKey('priceCurrency')) {
      return false;
    }
    if (l$priceCurrency != lOther$priceCurrency) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$picture = picture;
    final l$title = title;
    final l$description = description;
    final l$location = location;
    final l$category = category;
    final l$date = date;
    final l$price = price;
    final l$priceCurrency = priceCurrency;
    return Object.hashAll([
      _$data.containsKey('picture') ? l$picture : const {},
      _$data.containsKey('title') ? l$title : const {},
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('location') ? l$location : const {},
      _$data.containsKey('category') ? l$category : const {},
      _$data.containsKey('date') ? l$date : const {},
      _$data.containsKey('price') ? l$price : const {},
      _$data.containsKey('priceCurrency') ? l$priceCurrency : const {},
    ]);
  }
}

abstract class CopyWith$Input$UpdateEventInput<TRes> {
  factory CopyWith$Input$UpdateEventInput(
    Input$UpdateEventInput instance,
    TRes Function(Input$UpdateEventInput) then,
  ) = _CopyWithImpl$Input$UpdateEventInput;

  factory CopyWith$Input$UpdateEventInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateEventInput;

  TRes call({
    String? picture,
    String? title,
    String? description,
    String? location,
    String? category,
    DateTime? date,
    double? price,
    String? priceCurrency,
  });
}

class _CopyWithImpl$Input$UpdateEventInput<TRes>
    implements CopyWith$Input$UpdateEventInput<TRes> {
  _CopyWithImpl$Input$UpdateEventInput(
    this._instance,
    this._then,
  );

  final Input$UpdateEventInput _instance;

  final TRes Function(Input$UpdateEventInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? picture = _undefined,
    Object? title = _undefined,
    Object? description = _undefined,
    Object? location = _undefined,
    Object? category = _undefined,
    Object? date = _undefined,
    Object? price = _undefined,
    Object? priceCurrency = _undefined,
  }) =>
      _then(Input$UpdateEventInput._({
        ..._instance._$data,
        if (picture != _undefined) 'picture': (picture as String?),
        if (title != _undefined) 'title': (title as String?),
        if (description != _undefined) 'description': (description as String?),
        if (location != _undefined) 'location': (location as String?),
        if (category != _undefined) 'category': (category as String?),
        if (date != _undefined) 'date': (date as DateTime?),
        if (price != _undefined) 'price': (price as double?),
        if (priceCurrency != _undefined)
          'priceCurrency': (priceCurrency as String?),
      }));
}

class _CopyWithStubImpl$Input$UpdateEventInput<TRes>
    implements CopyWith$Input$UpdateEventInput<TRes> {
  _CopyWithStubImpl$Input$UpdateEventInput(this._res);

  TRes _res;

  call({
    String? picture,
    String? title,
    String? description,
    String? location,
    String? category,
    DateTime? date,
    double? price,
    String? priceCurrency,
  }) =>
      _res;
}

class Input$UpdateUserInput {
  factory Input$UpdateUserInput({
    String? name,
    String? email,
    String? phone,
    String? whatsapp,
    String? facebook,
    String? instagram,
    String? tiktok,
  }) =>
      Input$UpdateUserInput._({
        if (name != null) r'name': name,
        if (email != null) r'email': email,
        if (phone != null) r'phone': phone,
        if (whatsapp != null) r'whatsapp': whatsapp,
        if (facebook != null) r'facebook': facebook,
        if (instagram != null) r'instagram': instagram,
        if (tiktok != null) r'tiktok': tiktok,
      });

  Input$UpdateUserInput._(this._$data);

  factory Input$UpdateUserInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = (l$email as String?);
    }
    if (data.containsKey('phone')) {
      final l$phone = data['phone'];
      result$data['phone'] = (l$phone as String?);
    }
    if (data.containsKey('whatsapp')) {
      final l$whatsapp = data['whatsapp'];
      result$data['whatsapp'] = (l$whatsapp as String?);
    }
    if (data.containsKey('facebook')) {
      final l$facebook = data['facebook'];
      result$data['facebook'] = (l$facebook as String?);
    }
    if (data.containsKey('instagram')) {
      final l$instagram = data['instagram'];
      result$data['instagram'] = (l$instagram as String?);
    }
    if (data.containsKey('tiktok')) {
      final l$tiktok = data['tiktok'];
      result$data['tiktok'] = (l$tiktok as String?);
    }
    return Input$UpdateUserInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get name => (_$data['name'] as String?);

  String? get email => (_$data['email'] as String?);

  String? get phone => (_$data['phone'] as String?);

  String? get whatsapp => (_$data['whatsapp'] as String?);

  String? get facebook => (_$data['facebook'] as String?);

  String? get instagram => (_$data['instagram'] as String?);

  String? get tiktok => (_$data['tiktok'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email;
    }
    if (_$data.containsKey('phone')) {
      final l$phone = phone;
      result$data['phone'] = l$phone;
    }
    if (_$data.containsKey('whatsapp')) {
      final l$whatsapp = whatsapp;
      result$data['whatsapp'] = l$whatsapp;
    }
    if (_$data.containsKey('facebook')) {
      final l$facebook = facebook;
      result$data['facebook'] = l$facebook;
    }
    if (_$data.containsKey('instagram')) {
      final l$instagram = instagram;
      result$data['instagram'] = l$instagram;
    }
    if (_$data.containsKey('tiktok')) {
      final l$tiktok = tiktok;
      result$data['tiktok'] = l$tiktok;
    }
    return result$data;
  }

  CopyWith$Input$UpdateUserInput<Input$UpdateUserInput> get copyWith =>
      CopyWith$Input$UpdateUserInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$UpdateUserInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (_$data.containsKey('phone') != other._$data.containsKey('phone')) {
      return false;
    }
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$whatsapp = whatsapp;
    final lOther$whatsapp = other.whatsapp;
    if (_$data.containsKey('whatsapp') !=
        other._$data.containsKey('whatsapp')) {
      return false;
    }
    if (l$whatsapp != lOther$whatsapp) {
      return false;
    }
    final l$facebook = facebook;
    final lOther$facebook = other.facebook;
    if (_$data.containsKey('facebook') !=
        other._$data.containsKey('facebook')) {
      return false;
    }
    if (l$facebook != lOther$facebook) {
      return false;
    }
    final l$instagram = instagram;
    final lOther$instagram = other.instagram;
    if (_$data.containsKey('instagram') !=
        other._$data.containsKey('instagram')) {
      return false;
    }
    if (l$instagram != lOther$instagram) {
      return false;
    }
    final l$tiktok = tiktok;
    final lOther$tiktok = other.tiktok;
    if (_$data.containsKey('tiktok') != other._$data.containsKey('tiktok')) {
      return false;
    }
    if (l$tiktok != lOther$tiktok) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$email = email;
    final l$phone = phone;
    final l$whatsapp = whatsapp;
    final l$facebook = facebook;
    final l$instagram = instagram;
    final l$tiktok = tiktok;
    return Object.hashAll([
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('email') ? l$email : const {},
      _$data.containsKey('phone') ? l$phone : const {},
      _$data.containsKey('whatsapp') ? l$whatsapp : const {},
      _$data.containsKey('facebook') ? l$facebook : const {},
      _$data.containsKey('instagram') ? l$instagram : const {},
      _$data.containsKey('tiktok') ? l$tiktok : const {},
    ]);
  }
}

abstract class CopyWith$Input$UpdateUserInput<TRes> {
  factory CopyWith$Input$UpdateUserInput(
    Input$UpdateUserInput instance,
    TRes Function(Input$UpdateUserInput) then,
  ) = _CopyWithImpl$Input$UpdateUserInput;

  factory CopyWith$Input$UpdateUserInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateUserInput;

  TRes call({
    String? name,
    String? email,
    String? phone,
    String? whatsapp,
    String? facebook,
    String? instagram,
    String? tiktok,
  });
}

class _CopyWithImpl$Input$UpdateUserInput<TRes>
    implements CopyWith$Input$UpdateUserInput<TRes> {
  _CopyWithImpl$Input$UpdateUserInput(
    this._instance,
    this._then,
  );

  final Input$UpdateUserInput _instance;

  final TRes Function(Input$UpdateUserInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? email = _undefined,
    Object? phone = _undefined,
    Object? whatsapp = _undefined,
    Object? facebook = _undefined,
    Object? instagram = _undefined,
    Object? tiktok = _undefined,
  }) =>
      _then(Input$UpdateUserInput._({
        ..._instance._$data,
        if (name != _undefined) 'name': (name as String?),
        if (email != _undefined) 'email': (email as String?),
        if (phone != _undefined) 'phone': (phone as String?),
        if (whatsapp != _undefined) 'whatsapp': (whatsapp as String?),
        if (facebook != _undefined) 'facebook': (facebook as String?),
        if (instagram != _undefined) 'instagram': (instagram as String?),
        if (tiktok != _undefined) 'tiktok': (tiktok as String?),
      }));
}

class _CopyWithStubImpl$Input$UpdateUserInput<TRes>
    implements CopyWith$Input$UpdateUserInput<TRes> {
  _CopyWithStubImpl$Input$UpdateUserInput(this._res);

  TRes _res;

  call({
    String? name,
    String? email,
    String? phone,
    String? whatsapp,
    String? facebook,
    String? instagram,
    String? tiktok,
  }) =>
      _res;
}

enum Enum$Role {
  USER,
  ADMIN,
  $unknown;

  factory Enum$Role.fromJson(String value) => fromJson$Enum$Role(value);

  String toJson() => toJson$Enum$Role(this);
}

String toJson$Enum$Role(Enum$Role e) {
  switch (e) {
    case Enum$Role.USER:
      return r'USER';
    case Enum$Role.ADMIN:
      return r'ADMIN';
    case Enum$Role.$unknown:
      return r'$unknown';
  }
}

Enum$Role fromJson$Enum$Role(String value) {
  switch (value) {
    case r'USER':
      return Enum$Role.USER;
    case r'ADMIN':
      return Enum$Role.ADMIN;
    default:
      return Enum$Role.$unknown;
  }
}

enum Enum$UserBadge {
  BRONZE,
  SILVER,
  GOLD,
  $unknown;

  factory Enum$UserBadge.fromJson(String value) =>
      fromJson$Enum$UserBadge(value);

  String toJson() => toJson$Enum$UserBadge(this);
}

String toJson$Enum$UserBadge(Enum$UserBadge e) {
  switch (e) {
    case Enum$UserBadge.BRONZE:
      return r'BRONZE';
    case Enum$UserBadge.SILVER:
      return r'SILVER';
    case Enum$UserBadge.GOLD:
      return r'GOLD';
    case Enum$UserBadge.$unknown:
      return r'$unknown';
  }
}

Enum$UserBadge fromJson$Enum$UserBadge(String value) {
  switch (value) {
    case r'BRONZE':
      return Enum$UserBadge.BRONZE;
    case r'SILVER':
      return Enum$UserBadge.SILVER;
    case r'GOLD':
      return Enum$UserBadge.GOLD;
    default:
      return Enum$UserBadge.$unknown;
  }
}

enum Enum$__TypeKind {
  SCALAR,
  OBJECT,
  INTERFACE,
  UNION,
  ENUM,
  INPUT_OBJECT,
  LIST,
  NON_NULL,
  $unknown;

  factory Enum$__TypeKind.fromJson(String value) =>
      fromJson$Enum$__TypeKind(value);

  String toJson() => toJson$Enum$__TypeKind(this);
}

String toJson$Enum$__TypeKind(Enum$__TypeKind e) {
  switch (e) {
    case Enum$__TypeKind.SCALAR:
      return r'SCALAR';
    case Enum$__TypeKind.OBJECT:
      return r'OBJECT';
    case Enum$__TypeKind.INTERFACE:
      return r'INTERFACE';
    case Enum$__TypeKind.UNION:
      return r'UNION';
    case Enum$__TypeKind.ENUM:
      return r'ENUM';
    case Enum$__TypeKind.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__TypeKind.LIST:
      return r'LIST';
    case Enum$__TypeKind.NON_NULL:
      return r'NON_NULL';
    case Enum$__TypeKind.$unknown:
      return r'$unknown';
  }
}

Enum$__TypeKind fromJson$Enum$__TypeKind(String value) {
  switch (value) {
    case r'SCALAR':
      return Enum$__TypeKind.SCALAR;
    case r'OBJECT':
      return Enum$__TypeKind.OBJECT;
    case r'INTERFACE':
      return Enum$__TypeKind.INTERFACE;
    case r'UNION':
      return Enum$__TypeKind.UNION;
    case r'ENUM':
      return Enum$__TypeKind.ENUM;
    case r'INPUT_OBJECT':
      return Enum$__TypeKind.INPUT_OBJECT;
    case r'LIST':
      return Enum$__TypeKind.LIST;
    case r'NON_NULL':
      return Enum$__TypeKind.NON_NULL;
    default:
      return Enum$__TypeKind.$unknown;
  }
}

enum Enum$__DirectiveLocation {
  QUERY,
  MUTATION,
  SUBSCRIPTION,
  FIELD,
  FRAGMENT_DEFINITION,
  FRAGMENT_SPREAD,
  INLINE_FRAGMENT,
  VARIABLE_DEFINITION,
  SCHEMA,
  SCALAR,
  OBJECT,
  FIELD_DEFINITION,
  ARGUMENT_DEFINITION,
  INTERFACE,
  UNION,
  ENUM,
  ENUM_VALUE,
  INPUT_OBJECT,
  INPUT_FIELD_DEFINITION,
  $unknown;

  factory Enum$__DirectiveLocation.fromJson(String value) =>
      fromJson$Enum$__DirectiveLocation(value);

  String toJson() => toJson$Enum$__DirectiveLocation(this);
}

String toJson$Enum$__DirectiveLocation(Enum$__DirectiveLocation e) {
  switch (e) {
    case Enum$__DirectiveLocation.QUERY:
      return r'QUERY';
    case Enum$__DirectiveLocation.MUTATION:
      return r'MUTATION';
    case Enum$__DirectiveLocation.SUBSCRIPTION:
      return r'SUBSCRIPTION';
    case Enum$__DirectiveLocation.FIELD:
      return r'FIELD';
    case Enum$__DirectiveLocation.FRAGMENT_DEFINITION:
      return r'FRAGMENT_DEFINITION';
    case Enum$__DirectiveLocation.FRAGMENT_SPREAD:
      return r'FRAGMENT_SPREAD';
    case Enum$__DirectiveLocation.INLINE_FRAGMENT:
      return r'INLINE_FRAGMENT';
    case Enum$__DirectiveLocation.VARIABLE_DEFINITION:
      return r'VARIABLE_DEFINITION';
    case Enum$__DirectiveLocation.SCHEMA:
      return r'SCHEMA';
    case Enum$__DirectiveLocation.SCALAR:
      return r'SCALAR';
    case Enum$__DirectiveLocation.OBJECT:
      return r'OBJECT';
    case Enum$__DirectiveLocation.FIELD_DEFINITION:
      return r'FIELD_DEFINITION';
    case Enum$__DirectiveLocation.ARGUMENT_DEFINITION:
      return r'ARGUMENT_DEFINITION';
    case Enum$__DirectiveLocation.INTERFACE:
      return r'INTERFACE';
    case Enum$__DirectiveLocation.UNION:
      return r'UNION';
    case Enum$__DirectiveLocation.ENUM:
      return r'ENUM';
    case Enum$__DirectiveLocation.ENUM_VALUE:
      return r'ENUM_VALUE';
    case Enum$__DirectiveLocation.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION:
      return r'INPUT_FIELD_DEFINITION';
    case Enum$__DirectiveLocation.$unknown:
      return r'$unknown';
  }
}

Enum$__DirectiveLocation fromJson$Enum$__DirectiveLocation(String value) {
  switch (value) {
    case r'QUERY':
      return Enum$__DirectiveLocation.QUERY;
    case r'MUTATION':
      return Enum$__DirectiveLocation.MUTATION;
    case r'SUBSCRIPTION':
      return Enum$__DirectiveLocation.SUBSCRIPTION;
    case r'FIELD':
      return Enum$__DirectiveLocation.FIELD;
    case r'FRAGMENT_DEFINITION':
      return Enum$__DirectiveLocation.FRAGMENT_DEFINITION;
    case r'FRAGMENT_SPREAD':
      return Enum$__DirectiveLocation.FRAGMENT_SPREAD;
    case r'INLINE_FRAGMENT':
      return Enum$__DirectiveLocation.INLINE_FRAGMENT;
    case r'VARIABLE_DEFINITION':
      return Enum$__DirectiveLocation.VARIABLE_DEFINITION;
    case r'SCHEMA':
      return Enum$__DirectiveLocation.SCHEMA;
    case r'SCALAR':
      return Enum$__DirectiveLocation.SCALAR;
    case r'OBJECT':
      return Enum$__DirectiveLocation.OBJECT;
    case r'FIELD_DEFINITION':
      return Enum$__DirectiveLocation.FIELD_DEFINITION;
    case r'ARGUMENT_DEFINITION':
      return Enum$__DirectiveLocation.ARGUMENT_DEFINITION;
    case r'INTERFACE':
      return Enum$__DirectiveLocation.INTERFACE;
    case r'UNION':
      return Enum$__DirectiveLocation.UNION;
    case r'ENUM':
      return Enum$__DirectiveLocation.ENUM;
    case r'ENUM_VALUE':
      return Enum$__DirectiveLocation.ENUM_VALUE;
    case r'INPUT_OBJECT':
      return Enum$__DirectiveLocation.INPUT_OBJECT;
    case r'INPUT_FIELD_DEFINITION':
      return Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION;
    default:
      return Enum$__DirectiveLocation.$unknown;
  }
}

const possibleTypesMap = <String, Set<String>>{};
