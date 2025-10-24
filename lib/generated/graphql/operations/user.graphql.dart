// GENERATED FILE
// DO NOT MODIFY
import '../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Query$GetMe {
  Query$GetMe({
    this.me,
    this.$__typename = 'Query',
  });

  factory Query$GetMe.fromJson(Map<String, dynamic> json) {
    final l$me = json['me'];
    final l$$__typename = json['__typename'];
    return Query$GetMe(
      me: l$me == null
          ? null
          : Query$GetMe$me.fromJson((l$me as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetMe$me? me;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$me = me;
    resultData['me'] = l$me?.toJson();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$me = me;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$me,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetMe || runtimeType != other.runtimeType) {
      return false;
    }
    final l$me = me;
    final lOther$me = other.me;
    if (l$me != lOther$me) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetMe on Query$GetMe {
  CopyWith$Query$GetMe<Query$GetMe> get copyWith => CopyWith$Query$GetMe(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetMe<TRes> {
  factory CopyWith$Query$GetMe(
    Query$GetMe instance,
    TRes Function(Query$GetMe) then,
  ) = _CopyWithImpl$Query$GetMe;

  factory CopyWith$Query$GetMe.stub(TRes res) = _CopyWithStubImpl$Query$GetMe;

  TRes call({
    Query$GetMe$me? me,
    String? $__typename,
  });
  CopyWith$Query$GetMe$me<TRes> get me;
}

class _CopyWithImpl$Query$GetMe<TRes> implements CopyWith$Query$GetMe<TRes> {
  _CopyWithImpl$Query$GetMe(
    this._instance,
    this._then,
  );

  final Query$GetMe _instance;

  final TRes Function(Query$GetMe) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? me = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetMe(
        me: me == _undefined ? _instance.me : (me as Query$GetMe$me?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  @override
  CopyWith$Query$GetMe$me<TRes> get me {
    final local$me = _instance.me;
    return local$me == null
        ? CopyWith$Query$GetMe$me.stub(_then(_instance))
        : CopyWith$Query$GetMe$me(local$me, (e) => call(me: e));
  }
}

class _CopyWithStubImpl$Query$GetMe<TRes>
    implements CopyWith$Query$GetMe<TRes> {
  _CopyWithStubImpl$Query$GetMe(this._res);

  final TRes _res;

  @override
  call({
    Query$GetMe$me? me,
    String? $__typename,
  }) =>
      _res;

  @override
  CopyWith$Query$GetMe$me<TRes> get me => CopyWith$Query$GetMe$me.stub(_res);
}

const documentNodeQueryGetMe = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetMe'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'me'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'email'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'picture'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isGoogleAuthenticated'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'role'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'createdAt'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'badge'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'walletBalance'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'phone'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'whatsapp'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'facebook'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'instagram'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'tiktok'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$GetMe _parserFn$Query$GetMe(Map<String, dynamic> data) =>
    Query$GetMe.fromJson(data);
typedef OnQueryComplete$Query$GetMe = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetMe?,
);

class Options$Query$GetMe extends graphql.QueryOptions<Query$GetMe> {
  Options$Query$GetMe({
    super.operationName,
    super.fetchPolicy,
    super.errorPolicy,
    super.cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetMe? typedOptimisticResult,
    super.pollInterval,
    super.context,
    OnQueryComplete$Query$GetMe? onComplete,
    super.onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$GetMe(data),
                  ),
          document: documentNodeQueryGetMe,
          parserFn: _parserFn$Query$GetMe,
        );

  final OnQueryComplete$Query$GetMe? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetMe extends graphql.WatchQueryOptions<Query$GetMe> {
  WatchOptions$Query$GetMe({
    super.operationName,
    super.fetchPolicy,
    super.errorPolicy,
    super.cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetMe? typedOptimisticResult,
    super.context,
    super.pollInterval,
    super.eagerlyFetchResults,
    super.carryForwardDataOnException,
    super.fetchResults,
  }) : super(
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          document: documentNodeQueryGetMe,
          parserFn: _parserFn$Query$GetMe,
        );
}

class FetchMoreOptions$Query$GetMe extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetMe({required super.updateQuery})
      : super(
          document: documentNodeQueryGetMe,
        );
}

extension ClientExtension$Query$GetMe on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetMe>> query$GetMe(
          [Options$Query$GetMe? options]) async =>
      await query(options ?? Options$Query$GetMe());

  graphql.ObservableQuery<Query$GetMe> watchQuery$GetMe(
          [WatchOptions$Query$GetMe? options]) =>
      watchQuery(options ?? WatchOptions$Query$GetMe());

  void writeQuery$GetMe({
    required Query$GetMe data,
    bool broadcast = true,
  }) =>
      writeQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQueryGetMe)),
        data: data.toJson(),
        broadcast: broadcast,
      );

  Query$GetMe? readQuery$GetMe({bool optimistic = true}) {
    final result = readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryGetMe)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetMe.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetMe> useQuery$GetMe(
        [Options$Query$GetMe? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$GetMe());
graphql.ObservableQuery<Query$GetMe> useWatchQuery$GetMe(
        [WatchOptions$Query$GetMe? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$GetMe());

class Query$GetMe$Widget extends graphql_flutter.Query<Query$GetMe> {
  Query$GetMe$Widget({
    super.key,
    Options$Query$GetMe? options,
    required super.builder,
  }) : super(
          options: options ?? Options$Query$GetMe(),
        );
}

class Query$GetMe$me {
  Query$GetMe$me({
    required this.id,
    required this.name,
    required this.email,
    this.picture,
    required this.isGoogleAuthenticated,
    required this.role,
    required this.createdAt,
    required this.badge,
    this.walletBalance,
    this.phone,
    this.whatsapp,
    this.facebook,
    this.instagram,
    this.tiktok,
    this.$__typename = 'User',
  });

  factory Query$GetMe$me.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$email = json['email'];
    final l$picture = json['picture'];
    final l$isGoogleAuthenticated = json['isGoogleAuthenticated'];
    final l$role = json['role'];
    final l$createdAt = json['createdAt'];
    final l$badge = json['badge'];
    final l$walletBalance = json['walletBalance'];
    final l$phone = json['phone'];
    final l$whatsapp = json['whatsapp'];
    final l$facebook = json['facebook'];
    final l$instagram = json['instagram'];
    final l$tiktok = json['tiktok'];
    final l$$__typename = json['__typename'];
    return Query$GetMe$me(
      id: (l$id as String),
      name: (l$name as String),
      email: (l$email as String),
      picture: (l$picture as String?),
      isGoogleAuthenticated: (l$isGoogleAuthenticated as bool),
      role: fromJson$Enum$Role((l$role as String)),
      createdAt: DateTime.parse((l$createdAt as String)),
      badge: fromJson$Enum$UserBadge((l$badge as String)),
      walletBalance: (l$walletBalance as num?)?.toDouble(),
      phone: (l$phone as String?),
      whatsapp: (l$whatsapp as String?),
      facebook: (l$facebook as String?),
      instagram: (l$instagram as String?),
      tiktok: (l$tiktok as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String email;

  final String? picture;

  final bool isGoogleAuthenticated;

  final Enum$Role role;

  final DateTime createdAt;

  final Enum$UserBadge badge;

  final double? walletBalance;

  final String? phone;

  final String? whatsapp;

  final String? facebook;

  final String? instagram;

  final String? tiktok;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$name = name;
    resultData['name'] = l$name;
    final l$email = email;
    resultData['email'] = l$email;
    final l$picture = picture;
    resultData['picture'] = l$picture;
    final l$isGoogleAuthenticated = isGoogleAuthenticated;
    resultData['isGoogleAuthenticated'] = l$isGoogleAuthenticated;
    final l$role = role;
    resultData['role'] = toJson$Enum$Role(l$role);
    final l$createdAt = createdAt;
    resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$badge = badge;
    resultData['badge'] = toJson$Enum$UserBadge(l$badge);
    final l$walletBalance = walletBalance;
    resultData['walletBalance'] = l$walletBalance;
    final l$phone = phone;
    resultData['phone'] = l$phone;
    final l$whatsapp = whatsapp;
    resultData['whatsapp'] = l$whatsapp;
    final l$facebook = facebook;
    resultData['facebook'] = l$facebook;
    final l$instagram = instagram;
    resultData['instagram'] = l$instagram;
    final l$tiktok = tiktok;
    resultData['tiktok'] = l$tiktok;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$email = email;
    final l$picture = picture;
    final l$isGoogleAuthenticated = isGoogleAuthenticated;
    final l$role = role;
    final l$createdAt = createdAt;
    final l$badge = badge;
    final l$walletBalance = walletBalance;
    final l$phone = phone;
    final l$whatsapp = whatsapp;
    final l$facebook = facebook;
    final l$instagram = instagram;
    final l$tiktok = tiktok;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$email,
      l$picture,
      l$isGoogleAuthenticated,
      l$role,
      l$createdAt,
      l$badge,
      l$walletBalance,
      l$phone,
      l$whatsapp,
      l$facebook,
      l$instagram,
      l$tiktok,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetMe$me || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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
    final l$picture = picture;
    final lOther$picture = other.picture;
    if (l$picture != lOther$picture) {
      return false;
    }
    final l$isGoogleAuthenticated = isGoogleAuthenticated;
    final lOther$isGoogleAuthenticated = other.isGoogleAuthenticated;
    if (l$isGoogleAuthenticated != lOther$isGoogleAuthenticated) {
      return false;
    }
    final l$role = role;
    final lOther$role = other.role;
    if (l$role != lOther$role) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$badge = badge;
    final lOther$badge = other.badge;
    if (l$badge != lOther$badge) {
      return false;
    }
    final l$walletBalance = walletBalance;
    final lOther$walletBalance = other.walletBalance;
    if (l$walletBalance != lOther$walletBalance) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$whatsapp = whatsapp;
    final lOther$whatsapp = other.whatsapp;
    if (l$whatsapp != lOther$whatsapp) {
      return false;
    }
    final l$facebook = facebook;
    final lOther$facebook = other.facebook;
    if (l$facebook != lOther$facebook) {
      return false;
    }
    final l$instagram = instagram;
    final lOther$instagram = other.instagram;
    if (l$instagram != lOther$instagram) {
      return false;
    }
    final l$tiktok = tiktok;
    final lOther$tiktok = other.tiktok;
    if (l$tiktok != lOther$tiktok) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetMe$me on Query$GetMe$me {
  CopyWith$Query$GetMe$me<Query$GetMe$me> get copyWith =>
      CopyWith$Query$GetMe$me(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetMe$me<TRes> {
  factory CopyWith$Query$GetMe$me(
    Query$GetMe$me instance,
    TRes Function(Query$GetMe$me) then,
  ) = _CopyWithImpl$Query$GetMe$me;

  factory CopyWith$Query$GetMe$me.stub(TRes res) =
      _CopyWithStubImpl$Query$GetMe$me;

  TRes call({
    String? id,
    String? name,
    String? email,
    String? picture,
    bool? isGoogleAuthenticated,
    Enum$Role? role,
    DateTime? createdAt,
    Enum$UserBadge? badge,
    double? walletBalance,
    String? phone,
    String? whatsapp,
    String? facebook,
    String? instagram,
    String? tiktok,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetMe$me<TRes>
    implements CopyWith$Query$GetMe$me<TRes> {
  _CopyWithImpl$Query$GetMe$me(
    this._instance,
    this._then,
  );

  final Query$GetMe$me _instance;

  final TRes Function(Query$GetMe$me) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? email = _undefined,
    Object? picture = _undefined,
    Object? isGoogleAuthenticated = _undefined,
    Object? role = _undefined,
    Object? createdAt = _undefined,
    Object? badge = _undefined,
    Object? walletBalance = _undefined,
    Object? phone = _undefined,
    Object? whatsapp = _undefined,
    Object? facebook = _undefined,
    Object? instagram = _undefined,
    Object? tiktok = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetMe$me(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        email: email == _undefined || email == null
            ? _instance.email
            : (email as String),
        picture:
            picture == _undefined ? _instance.picture : (picture as String?),
        isGoogleAuthenticated:
            isGoogleAuthenticated == _undefined || isGoogleAuthenticated == null
                ? _instance.isGoogleAuthenticated
                : (isGoogleAuthenticated as bool),
        role: role == _undefined || role == null
            ? _instance.role
            : (role as Enum$Role),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        badge: badge == _undefined || badge == null
            ? _instance.badge
            : (badge as Enum$UserBadge),
        walletBalance: walletBalance == _undefined
            ? _instance.walletBalance
            : (walletBalance as double?),
        phone: phone == _undefined ? _instance.phone : (phone as String?),
        whatsapp:
            whatsapp == _undefined ? _instance.whatsapp : (whatsapp as String?),
        facebook:
            facebook == _undefined ? _instance.facebook : (facebook as String?),
        instagram: instagram == _undefined
            ? _instance.instagram
            : (instagram as String?),
        tiktok: tiktok == _undefined ? _instance.tiktok : (tiktok as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetMe$me<TRes>
    implements CopyWith$Query$GetMe$me<TRes> {
  _CopyWithStubImpl$Query$GetMe$me(this._res);

  final TRes _res;

  @override
  call({
    String? id,
    String? name,
    String? email,
    String? picture,
    bool? isGoogleAuthenticated,
    Enum$Role? role,
    DateTime? createdAt,
    Enum$UserBadge? badge,
    double? walletBalance,
    String? phone,
    String? whatsapp,
    String? facebook,
    String? instagram,
    String? tiktok,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$GetUser {
  factory Variables$Query$GetUser({required String id}) =>
      Variables$Query$GetUser._({
        r'id': id,
      });

  Variables$Query$GetUser._(this._$data);

  factory Variables$Query$GetUser.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$GetUser._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$GetUser<Variables$Query$GetUser> get copyWith =>
      CopyWith$Variables$Query$GetUser(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetUser || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Variables$Query$GetUser<TRes> {
  factory CopyWith$Variables$Query$GetUser(
    Variables$Query$GetUser instance,
    TRes Function(Variables$Query$GetUser) then,
  ) = _CopyWithImpl$Variables$Query$GetUser;

  factory CopyWith$Variables$Query$GetUser.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetUser;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$GetUser<TRes>
    implements CopyWith$Variables$Query$GetUser<TRes> {
  _CopyWithImpl$Variables$Query$GetUser(
    this._instance,
    this._then,
  );

  final Variables$Query$GetUser _instance;

  final TRes Function(Variables$Query$GetUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({Object? id = _undefined}) => _then(Variables$Query$GetUser._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetUser<TRes>
    implements CopyWith$Variables$Query$GetUser<TRes> {
  _CopyWithStubImpl$Variables$Query$GetUser(this._res);

  final TRes _res;

  @override
  call({String? id}) => _res;
}

class Query$GetUser {
  Query$GetUser({
    this.user,
    this.$__typename = 'Query',
  });

  factory Query$GetUser.fromJson(Map<String, dynamic> json) {
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Query$GetUser(
      user: l$user == null
          ? null
          : Query$GetUser$user.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetUser$user? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$user = user;
    resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetUser || runtimeType != other.runtimeType) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetUser on Query$GetUser {
  CopyWith$Query$GetUser<Query$GetUser> get copyWith => CopyWith$Query$GetUser(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetUser<TRes> {
  factory CopyWith$Query$GetUser(
    Query$GetUser instance,
    TRes Function(Query$GetUser) then,
  ) = _CopyWithImpl$Query$GetUser;

  factory CopyWith$Query$GetUser.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUser;

  TRes call({
    Query$GetUser$user? user,
    String? $__typename,
  });
  CopyWith$Query$GetUser$user<TRes> get user;
}

class _CopyWithImpl$Query$GetUser<TRes>
    implements CopyWith$Query$GetUser<TRes> {
  _CopyWithImpl$Query$GetUser(
    this._instance,
    this._then,
  );

  final Query$GetUser _instance;

  final TRes Function(Query$GetUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUser(
        user:
            user == _undefined ? _instance.user : (user as Query$GetUser$user?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  @override
  CopyWith$Query$GetUser$user<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Query$GetUser$user.stub(_then(_instance))
        : CopyWith$Query$GetUser$user(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$GetUser<TRes>
    implements CopyWith$Query$GetUser<TRes> {
  _CopyWithStubImpl$Query$GetUser(this._res);

  final TRes _res;

  @override
  call({
    Query$GetUser$user? user,
    String? $__typename,
  }) =>
      _res;

  @override
  CopyWith$Query$GetUser$user<TRes> get user =>
      CopyWith$Query$GetUser$user.stub(_res);
}

const documentNodeQueryGetUser = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetUser'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'user'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'email'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'picture'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isGoogleAuthenticated'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'role'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'createdAt'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'badge'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'walletBalance'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'phone'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'whatsapp'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'facebook'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'instagram'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'tiktok'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$GetUser _parserFn$Query$GetUser(Map<String, dynamic> data) =>
    Query$GetUser.fromJson(data);
typedef OnQueryComplete$Query$GetUser = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetUser?,
);

class Options$Query$GetUser extends graphql.QueryOptions<Query$GetUser> {
  Options$Query$GetUser({
    super.operationName,
    required Variables$Query$GetUser variables,
    super.fetchPolicy,
    super.errorPolicy,
    super.cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetUser? typedOptimisticResult,
    super.pollInterval,
    super.context,
    OnQueryComplete$Query$GetUser? onComplete,
    super.onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$GetUser(data),
                  ),
          document: documentNodeQueryGetUser,
          parserFn: _parserFn$Query$GetUser,
        );

  final OnQueryComplete$Query$GetUser? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetUser
    extends graphql.WatchQueryOptions<Query$GetUser> {
  WatchOptions$Query$GetUser({
    super.operationName,
    required Variables$Query$GetUser variables,
    super.fetchPolicy,
    super.errorPolicy,
    super.cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetUser? typedOptimisticResult,
    super.context,
    super.pollInterval,
    super.eagerlyFetchResults,
    super.carryForwardDataOnException,
    super.fetchResults,
  }) : super(
          variables: variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          document: documentNodeQueryGetUser,
          parserFn: _parserFn$Query$GetUser,
        );
}

class FetchMoreOptions$Query$GetUser extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetUser({
    required super.updateQuery,
    required Variables$Query$GetUser variables,
  }) : super(
          variables: variables.toJson(),
          document: documentNodeQueryGetUser,
        );
}

extension ClientExtension$Query$GetUser on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetUser>> query$GetUser(
          Options$Query$GetUser options) async =>
      await query(options);

  graphql.ObservableQuery<Query$GetUser> watchQuery$GetUser(
          WatchOptions$Query$GetUser options) =>
      watchQuery(options);

  void writeQuery$GetUser({
    required Query$GetUser data,
    required Variables$Query$GetUser variables,
    bool broadcast = true,
  }) =>
      writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryGetUser),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );

  Query$GetUser? readQuery$GetUser({
    required Variables$Query$GetUser variables,
    bool optimistic = true,
  }) {
    final result = readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryGetUser),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetUser.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetUser> useQuery$GetUser(
        Options$Query$GetUser options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$GetUser> useWatchQuery$GetUser(
        WatchOptions$Query$GetUser options) =>
    graphql_flutter.useWatchQuery(options);

class Query$GetUser$Widget extends graphql_flutter.Query<Query$GetUser> {
  const Query$GetUser$Widget({
    super.key,
    required Options$Query$GetUser super.options,
    required super.builder,
  });
}

class Query$GetUser$user {
  Query$GetUser$user({
    required this.id,
    required this.name,
    required this.email,
    this.picture,
    required this.isGoogleAuthenticated,
    required this.role,
    required this.createdAt,
    required this.badge,
    this.walletBalance,
    this.phone,
    this.whatsapp,
    this.facebook,
    this.instagram,
    this.tiktok,
    this.$__typename = 'User',
  });

  factory Query$GetUser$user.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$email = json['email'];
    final l$picture = json['picture'];
    final l$isGoogleAuthenticated = json['isGoogleAuthenticated'];
    final l$role = json['role'];
    final l$createdAt = json['createdAt'];
    final l$badge = json['badge'];
    final l$walletBalance = json['walletBalance'];
    final l$phone = json['phone'];
    final l$whatsapp = json['whatsapp'];
    final l$facebook = json['facebook'];
    final l$instagram = json['instagram'];
    final l$tiktok = json['tiktok'];
    final l$$__typename = json['__typename'];
    return Query$GetUser$user(
      id: (l$id as String),
      name: (l$name as String),
      email: (l$email as String),
      picture: (l$picture as String?),
      isGoogleAuthenticated: (l$isGoogleAuthenticated as bool),
      role: fromJson$Enum$Role((l$role as String)),
      createdAt: DateTime.parse((l$createdAt as String)),
      badge: fromJson$Enum$UserBadge((l$badge as String)),
      walletBalance: (l$walletBalance as num?)?.toDouble(),
      phone: (l$phone as String?),
      whatsapp: (l$whatsapp as String?),
      facebook: (l$facebook as String?),
      instagram: (l$instagram as String?),
      tiktok: (l$tiktok as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String email;

  final String? picture;

  final bool isGoogleAuthenticated;

  final Enum$Role role;

  final DateTime createdAt;

  final Enum$UserBadge badge;

  final double? walletBalance;

  final String? phone;

  final String? whatsapp;

  final String? facebook;

  final String? instagram;

  final String? tiktok;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$name = name;
    resultData['name'] = l$name;
    final l$email = email;
    resultData['email'] = l$email;
    final l$picture = picture;
    resultData['picture'] = l$picture;
    final l$isGoogleAuthenticated = isGoogleAuthenticated;
    resultData['isGoogleAuthenticated'] = l$isGoogleAuthenticated;
    final l$role = role;
    resultData['role'] = toJson$Enum$Role(l$role);
    final l$createdAt = createdAt;
    resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$badge = badge;
    resultData['badge'] = toJson$Enum$UserBadge(l$badge);
    final l$walletBalance = walletBalance;
    resultData['walletBalance'] = l$walletBalance;
    final l$phone = phone;
    resultData['phone'] = l$phone;
    final l$whatsapp = whatsapp;
    resultData['whatsapp'] = l$whatsapp;
    final l$facebook = facebook;
    resultData['facebook'] = l$facebook;
    final l$instagram = instagram;
    resultData['instagram'] = l$instagram;
    final l$tiktok = tiktok;
    resultData['tiktok'] = l$tiktok;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$email = email;
    final l$picture = picture;
    final l$isGoogleAuthenticated = isGoogleAuthenticated;
    final l$role = role;
    final l$createdAt = createdAt;
    final l$badge = badge;
    final l$walletBalance = walletBalance;
    final l$phone = phone;
    final l$whatsapp = whatsapp;
    final l$facebook = facebook;
    final l$instagram = instagram;
    final l$tiktok = tiktok;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$email,
      l$picture,
      l$isGoogleAuthenticated,
      l$role,
      l$createdAt,
      l$badge,
      l$walletBalance,
      l$phone,
      l$whatsapp,
      l$facebook,
      l$instagram,
      l$tiktok,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetUser$user || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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
    final l$picture = picture;
    final lOther$picture = other.picture;
    if (l$picture != lOther$picture) {
      return false;
    }
    final l$isGoogleAuthenticated = isGoogleAuthenticated;
    final lOther$isGoogleAuthenticated = other.isGoogleAuthenticated;
    if (l$isGoogleAuthenticated != lOther$isGoogleAuthenticated) {
      return false;
    }
    final l$role = role;
    final lOther$role = other.role;
    if (l$role != lOther$role) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$badge = badge;
    final lOther$badge = other.badge;
    if (l$badge != lOther$badge) {
      return false;
    }
    final l$walletBalance = walletBalance;
    final lOther$walletBalance = other.walletBalance;
    if (l$walletBalance != lOther$walletBalance) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$whatsapp = whatsapp;
    final lOther$whatsapp = other.whatsapp;
    if (l$whatsapp != lOther$whatsapp) {
      return false;
    }
    final l$facebook = facebook;
    final lOther$facebook = other.facebook;
    if (l$facebook != lOther$facebook) {
      return false;
    }
    final l$instagram = instagram;
    final lOther$instagram = other.instagram;
    if (l$instagram != lOther$instagram) {
      return false;
    }
    final l$tiktok = tiktok;
    final lOther$tiktok = other.tiktok;
    if (l$tiktok != lOther$tiktok) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetUser$user on Query$GetUser$user {
  CopyWith$Query$GetUser$user<Query$GetUser$user> get copyWith =>
      CopyWith$Query$GetUser$user(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetUser$user<TRes> {
  factory CopyWith$Query$GetUser$user(
    Query$GetUser$user instance,
    TRes Function(Query$GetUser$user) then,
  ) = _CopyWithImpl$Query$GetUser$user;

  factory CopyWith$Query$GetUser$user.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUser$user;

  TRes call({
    String? id,
    String? name,
    String? email,
    String? picture,
    bool? isGoogleAuthenticated,
    Enum$Role? role,
    DateTime? createdAt,
    Enum$UserBadge? badge,
    double? walletBalance,
    String? phone,
    String? whatsapp,
    String? facebook,
    String? instagram,
    String? tiktok,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetUser$user<TRes>
    implements CopyWith$Query$GetUser$user<TRes> {
  _CopyWithImpl$Query$GetUser$user(
    this._instance,
    this._then,
  );

  final Query$GetUser$user _instance;

  final TRes Function(Query$GetUser$user) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? email = _undefined,
    Object? picture = _undefined,
    Object? isGoogleAuthenticated = _undefined,
    Object? role = _undefined,
    Object? createdAt = _undefined,
    Object? badge = _undefined,
    Object? walletBalance = _undefined,
    Object? phone = _undefined,
    Object? whatsapp = _undefined,
    Object? facebook = _undefined,
    Object? instagram = _undefined,
    Object? tiktok = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUser$user(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        email: email == _undefined || email == null
            ? _instance.email
            : (email as String),
        picture:
            picture == _undefined ? _instance.picture : (picture as String?),
        isGoogleAuthenticated:
            isGoogleAuthenticated == _undefined || isGoogleAuthenticated == null
                ? _instance.isGoogleAuthenticated
                : (isGoogleAuthenticated as bool),
        role: role == _undefined || role == null
            ? _instance.role
            : (role as Enum$Role),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        badge: badge == _undefined || badge == null
            ? _instance.badge
            : (badge as Enum$UserBadge),
        walletBalance: walletBalance == _undefined
            ? _instance.walletBalance
            : (walletBalance as double?),
        phone: phone == _undefined ? _instance.phone : (phone as String?),
        whatsapp:
            whatsapp == _undefined ? _instance.whatsapp : (whatsapp as String?),
        facebook:
            facebook == _undefined ? _instance.facebook : (facebook as String?),
        instagram: instagram == _undefined
            ? _instance.instagram
            : (instagram as String?),
        tiktok: tiktok == _undefined ? _instance.tiktok : (tiktok as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetUser$user<TRes>
    implements CopyWith$Query$GetUser$user<TRes> {
  _CopyWithStubImpl$Query$GetUser$user(this._res);

  final TRes _res;

  @override
  call({
    String? id,
    String? name,
    String? email,
    String? picture,
    bool? isGoogleAuthenticated,
    Enum$Role? role,
    DateTime? createdAt,
    Enum$UserBadge? badge,
    double? walletBalance,
    String? phone,
    String? whatsapp,
    String? facebook,
    String? instagram,
    String? tiktok,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetUsers {
  Query$GetUsers({
    required this.users,
    this.$__typename = 'Query',
  });

  factory Query$GetUsers.fromJson(Map<String, dynamic> json) {
    final l$users = json['users'];
    final l$$__typename = json['__typename'];
    return Query$GetUsers(
      users: (l$users as List<dynamic>)
          .map(
              (e) => Query$GetUsers$users.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetUsers$users> users;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$users = users;
    resultData['users'] = l$users.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$users = users;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$users.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetUsers || runtimeType != other.runtimeType) {
      return false;
    }
    final l$users = users;
    final lOther$users = other.users;
    if (l$users.length != lOther$users.length) {
      return false;
    }
    for (int i = 0; i < l$users.length; i++) {
      final l$users$entry = l$users[i];
      final lOther$users$entry = lOther$users[i];
      if (l$users$entry != lOther$users$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetUsers on Query$GetUsers {
  CopyWith$Query$GetUsers<Query$GetUsers> get copyWith =>
      CopyWith$Query$GetUsers(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetUsers<TRes> {
  factory CopyWith$Query$GetUsers(
    Query$GetUsers instance,
    TRes Function(Query$GetUsers) then,
  ) = _CopyWithImpl$Query$GetUsers;

  factory CopyWith$Query$GetUsers.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUsers;

  TRes call({
    List<Query$GetUsers$users>? users,
    String? $__typename,
  });
  TRes users(
      Iterable<Query$GetUsers$users> Function(
              Iterable<CopyWith$Query$GetUsers$users<Query$GetUsers$users>>)
          fn);
}

class _CopyWithImpl$Query$GetUsers<TRes>
    implements CopyWith$Query$GetUsers<TRes> {
  _CopyWithImpl$Query$GetUsers(
    this._instance,
    this._then,
  );

  final Query$GetUsers _instance;

  final TRes Function(Query$GetUsers) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? users = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUsers(
        users: users == _undefined || users == null
            ? _instance.users
            : (users as List<Query$GetUsers$users>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  @override
  TRes users(
          Iterable<Query$GetUsers$users> Function(
                  Iterable<CopyWith$Query$GetUsers$users<Query$GetUsers$users>>)
              fn) =>
      call(
          users: fn(_instance.users.map((e) => CopyWith$Query$GetUsers$users(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$GetUsers<TRes>
    implements CopyWith$Query$GetUsers<TRes> {
  _CopyWithStubImpl$Query$GetUsers(this._res);

  final TRes _res;

  @override
  call({
    List<Query$GetUsers$users>? users,
    String? $__typename,
  }) =>
      _res;

  @override
  users(fn) => _res;
}

const documentNodeQueryGetUsers = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetUsers'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'users'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'email'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'picture'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'role'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'createdAt'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'badge'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$GetUsers _parserFn$Query$GetUsers(Map<String, dynamic> data) =>
    Query$GetUsers.fromJson(data);
typedef OnQueryComplete$Query$GetUsers = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetUsers?,
);

class Options$Query$GetUsers extends graphql.QueryOptions<Query$GetUsers> {
  Options$Query$GetUsers({
    super.operationName,
    super.fetchPolicy,
    super.errorPolicy,
    super.cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetUsers? typedOptimisticResult,
    super.pollInterval,
    super.context,
    OnQueryComplete$Query$GetUsers? onComplete,
    super.onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$GetUsers(data),
                  ),
          document: documentNodeQueryGetUsers,
          parserFn: _parserFn$Query$GetUsers,
        );

  final OnQueryComplete$Query$GetUsers? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetUsers
    extends graphql.WatchQueryOptions<Query$GetUsers> {
  WatchOptions$Query$GetUsers({
    super.operationName,
    super.fetchPolicy,
    super.errorPolicy,
    super.cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetUsers? typedOptimisticResult,
    super.context,
    super.pollInterval,
    super.eagerlyFetchResults,
    super.carryForwardDataOnException,
    super.fetchResults,
  }) : super(
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          document: documentNodeQueryGetUsers,
          parserFn: _parserFn$Query$GetUsers,
        );
}

class FetchMoreOptions$Query$GetUsers extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetUsers({required super.updateQuery})
      : super(
          document: documentNodeQueryGetUsers,
        );
}

extension ClientExtension$Query$GetUsers on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetUsers>> query$GetUsers(
          [Options$Query$GetUsers? options]) async =>
      await query(options ?? Options$Query$GetUsers());

  graphql.ObservableQuery<Query$GetUsers> watchQuery$GetUsers(
          [WatchOptions$Query$GetUsers? options]) =>
      watchQuery(options ?? WatchOptions$Query$GetUsers());

  void writeQuery$GetUsers({
    required Query$GetUsers data,
    bool broadcast = true,
  }) =>
      writeQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQueryGetUsers)),
        data: data.toJson(),
        broadcast: broadcast,
      );

  Query$GetUsers? readQuery$GetUsers({bool optimistic = true}) {
    final result = readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryGetUsers)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetUsers.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetUsers> useQuery$GetUsers(
        [Options$Query$GetUsers? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$GetUsers());
graphql.ObservableQuery<Query$GetUsers> useWatchQuery$GetUsers(
        [WatchOptions$Query$GetUsers? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$GetUsers());

class Query$GetUsers$Widget extends graphql_flutter.Query<Query$GetUsers> {
  Query$GetUsers$Widget({
    super.key,
    Options$Query$GetUsers? options,
    required super.builder,
  }) : super(
          options: options ?? Options$Query$GetUsers(),
        );
}

class Query$GetUsers$users {
  Query$GetUsers$users({
    required this.id,
    required this.name,
    required this.email,
    this.picture,
    required this.role,
    required this.createdAt,
    required this.badge,
    this.$__typename = 'User',
  });

  factory Query$GetUsers$users.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$email = json['email'];
    final l$picture = json['picture'];
    final l$role = json['role'];
    final l$createdAt = json['createdAt'];
    final l$badge = json['badge'];
    final l$$__typename = json['__typename'];
    return Query$GetUsers$users(
      id: (l$id as String),
      name: (l$name as String),
      email: (l$email as String),
      picture: (l$picture as String?),
      role: fromJson$Enum$Role((l$role as String)),
      createdAt: DateTime.parse((l$createdAt as String)),
      badge: fromJson$Enum$UserBadge((l$badge as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String email;

  final String? picture;

  final Enum$Role role;

  final DateTime createdAt;

  final Enum$UserBadge badge;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$name = name;
    resultData['name'] = l$name;
    final l$email = email;
    resultData['email'] = l$email;
    final l$picture = picture;
    resultData['picture'] = l$picture;
    final l$role = role;
    resultData['role'] = toJson$Enum$Role(l$role);
    final l$createdAt = createdAt;
    resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$badge = badge;
    resultData['badge'] = toJson$Enum$UserBadge(l$badge);
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$email = email;
    final l$picture = picture;
    final l$role = role;
    final l$createdAt = createdAt;
    final l$badge = badge;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$email,
      l$picture,
      l$role,
      l$createdAt,
      l$badge,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetUsers$users || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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
    final l$picture = picture;
    final lOther$picture = other.picture;
    if (l$picture != lOther$picture) {
      return false;
    }
    final l$role = role;
    final lOther$role = other.role;
    if (l$role != lOther$role) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$badge = badge;
    final lOther$badge = other.badge;
    if (l$badge != lOther$badge) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetUsers$users on Query$GetUsers$users {
  CopyWith$Query$GetUsers$users<Query$GetUsers$users> get copyWith =>
      CopyWith$Query$GetUsers$users(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetUsers$users<TRes> {
  factory CopyWith$Query$GetUsers$users(
    Query$GetUsers$users instance,
    TRes Function(Query$GetUsers$users) then,
  ) = _CopyWithImpl$Query$GetUsers$users;

  factory CopyWith$Query$GetUsers$users.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUsers$users;

  TRes call({
    String? id,
    String? name,
    String? email,
    String? picture,
    Enum$Role? role,
    DateTime? createdAt,
    Enum$UserBadge? badge,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetUsers$users<TRes>
    implements CopyWith$Query$GetUsers$users<TRes> {
  _CopyWithImpl$Query$GetUsers$users(
    this._instance,
    this._then,
  );

  final Query$GetUsers$users _instance;

  final TRes Function(Query$GetUsers$users) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? email = _undefined,
    Object? picture = _undefined,
    Object? role = _undefined,
    Object? createdAt = _undefined,
    Object? badge = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUsers$users(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        email: email == _undefined || email == null
            ? _instance.email
            : (email as String),
        picture:
            picture == _undefined ? _instance.picture : (picture as String?),
        role: role == _undefined || role == null
            ? _instance.role
            : (role as Enum$Role),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        badge: badge == _undefined || badge == null
            ? _instance.badge
            : (badge as Enum$UserBadge),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetUsers$users<TRes>
    implements CopyWith$Query$GetUsers$users<TRes> {
  _CopyWithStubImpl$Query$GetUsers$users(this._res);

  final TRes _res;

  @override
  call({
    String? id,
    String? name,
    String? email,
    String? picture,
    Enum$Role? role,
    DateTime? createdAt,
    Enum$UserBadge? badge,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$InitSignUp {
  factory Variables$Mutation$InitSignUp(
          {required Input$InitSignUpInput input}) =>
      Variables$Mutation$InitSignUp._({
        r'input': input,
      });

  Variables$Mutation$InitSignUp._(this._$data);

  factory Variables$Mutation$InitSignUp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$InitSignUpInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$InitSignUp._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$InitSignUpInput get input => (_$data['input'] as Input$InitSignUpInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$InitSignUp<Variables$Mutation$InitSignUp>
      get copyWith => CopyWith$Variables$Mutation$InitSignUp(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$InitSignUp ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Mutation$InitSignUp<TRes> {
  factory CopyWith$Variables$Mutation$InitSignUp(
    Variables$Mutation$InitSignUp instance,
    TRes Function(Variables$Mutation$InitSignUp) then,
  ) = _CopyWithImpl$Variables$Mutation$InitSignUp;

  factory CopyWith$Variables$Mutation$InitSignUp.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$InitSignUp;

  TRes call({Input$InitSignUpInput? input});
}

class _CopyWithImpl$Variables$Mutation$InitSignUp<TRes>
    implements CopyWith$Variables$Mutation$InitSignUp<TRes> {
  _CopyWithImpl$Variables$Mutation$InitSignUp(
    this._instance,
    this._then,
  );

  final Variables$Mutation$InitSignUp _instance;

  final TRes Function(Variables$Mutation$InitSignUp) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$InitSignUp._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$InitSignUpInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$InitSignUp<TRes>
    implements CopyWith$Variables$Mutation$InitSignUp<TRes> {
  _CopyWithStubImpl$Variables$Mutation$InitSignUp(this._res);

  final TRes _res;

  @override
  call({Input$InitSignUpInput? input}) => _res;
}

class Mutation$InitSignUp {
  Mutation$InitSignUp({
    required this.initSignUp,
    this.$__typename = 'Mutation',
  });

  factory Mutation$InitSignUp.fromJson(Map<String, dynamic> json) {
    final l$initSignUp = json['initSignUp'];
    final l$$__typename = json['__typename'];
    return Mutation$InitSignUp(
      initSignUp: (l$initSignUp as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool initSignUp;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$initSignUp = initSignUp;
    resultData['initSignUp'] = l$initSignUp;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$initSignUp = initSignUp;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$initSignUp,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$InitSignUp || runtimeType != other.runtimeType) {
      return false;
    }
    final l$initSignUp = initSignUp;
    final lOther$initSignUp = other.initSignUp;
    if (l$initSignUp != lOther$initSignUp) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$InitSignUp on Mutation$InitSignUp {
  CopyWith$Mutation$InitSignUp<Mutation$InitSignUp> get copyWith =>
      CopyWith$Mutation$InitSignUp(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$InitSignUp<TRes> {
  factory CopyWith$Mutation$InitSignUp(
    Mutation$InitSignUp instance,
    TRes Function(Mutation$InitSignUp) then,
  ) = _CopyWithImpl$Mutation$InitSignUp;

  factory CopyWith$Mutation$InitSignUp.stub(TRes res) =
      _CopyWithStubImpl$Mutation$InitSignUp;

  TRes call({
    bool? initSignUp,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$InitSignUp<TRes>
    implements CopyWith$Mutation$InitSignUp<TRes> {
  _CopyWithImpl$Mutation$InitSignUp(
    this._instance,
    this._then,
  );

  final Mutation$InitSignUp _instance;

  final TRes Function(Mutation$InitSignUp) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? initSignUp = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$InitSignUp(
        initSignUp: initSignUp == _undefined || initSignUp == null
            ? _instance.initSignUp
            : (initSignUp as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$InitSignUp<TRes>
    implements CopyWith$Mutation$InitSignUp<TRes> {
  _CopyWithStubImpl$Mutation$InitSignUp(this._res);

  final TRes _res;

  @override
  call({
    bool? initSignUp,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationInitSignUp = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'InitSignUp'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'InitSignUpInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'initSignUp'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$InitSignUp _parserFn$Mutation$InitSignUp(Map<String, dynamic> data) =>
    Mutation$InitSignUp.fromJson(data);
typedef OnMutationCompleted$Mutation$InitSignUp = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$InitSignUp?,
);

class Options$Mutation$InitSignUp
    extends graphql.MutationOptions<Mutation$InitSignUp> {
  Options$Mutation$InitSignUp({
    super.operationName,
    required Variables$Mutation$InitSignUp variables,
    super.fetchPolicy,
    super.errorPolicy,
    super.cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$InitSignUp? typedOptimisticResult,
    super.context,
    OnMutationCompleted$Mutation$InitSignUp? onCompleted,
    super.update,
    super.onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$InitSignUp(data),
                  ),
          document: documentNodeMutationInitSignUp,
          parserFn: _parserFn$Mutation$InitSignUp,
        );

  final OnMutationCompleted$Mutation$InitSignUp? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$InitSignUp
    extends graphql.WatchQueryOptions<Mutation$InitSignUp> {
  WatchOptions$Mutation$InitSignUp({
    super.operationName,
    required Variables$Mutation$InitSignUp variables,
    super.fetchPolicy,
    super.errorPolicy,
    super.cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$InitSignUp? typedOptimisticResult,
    super.context,
    super.pollInterval,
    super.eagerlyFetchResults,
    super.carryForwardDataOnException,
    super.fetchResults,
  }) : super(
          variables: variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          document: documentNodeMutationInitSignUp,
          parserFn: _parserFn$Mutation$InitSignUp,
        );
}

extension ClientExtension$Mutation$InitSignUp on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$InitSignUp>> mutate$InitSignUp(
          Options$Mutation$InitSignUp options) async =>
      await mutate(options);

  graphql.ObservableQuery<Mutation$InitSignUp> watchMutation$InitSignUp(
          WatchOptions$Mutation$InitSignUp options) =>
      watchMutation(options);
}

class Mutation$InitSignUp$HookResult {
  Mutation$InitSignUp$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$InitSignUp runMutation;

  final graphql.QueryResult<Mutation$InitSignUp> result;
}

Mutation$InitSignUp$HookResult useMutation$InitSignUp(
    [WidgetOptions$Mutation$InitSignUp? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$InitSignUp());
  return Mutation$InitSignUp$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$InitSignUp> useWatchMutation$InitSignUp(
        WatchOptions$Mutation$InitSignUp options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$InitSignUp
    extends graphql.MutationOptions<Mutation$InitSignUp> {
  WidgetOptions$Mutation$InitSignUp({
    super.operationName,
    super.fetchPolicy,
    super.errorPolicy,
    super.cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$InitSignUp? typedOptimisticResult,
    super.context,
    OnMutationCompleted$Mutation$InitSignUp? onCompleted,
    super.update,
    super.onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$InitSignUp(data),
                  ),
          document: documentNodeMutationInitSignUp,
          parserFn: _parserFn$Mutation$InitSignUp,
        );

  final OnMutationCompleted$Mutation$InitSignUp? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$InitSignUp
    = graphql.MultiSourceResult<Mutation$InitSignUp> Function(
  Variables$Mutation$InitSignUp, {
  Object? optimisticResult,
  Mutation$InitSignUp? typedOptimisticResult,
});
typedef Builder$Mutation$InitSignUp = widgets.Widget Function(
  RunMutation$Mutation$InitSignUp,
  graphql.QueryResult<Mutation$InitSignUp>?,
);

class Mutation$InitSignUp$Widget
    extends graphql_flutter.Mutation<Mutation$InitSignUp> {
  Mutation$InitSignUp$Widget({
    super.key,
    WidgetOptions$Mutation$InitSignUp? options,
    required Builder$Mutation$InitSignUp builder,
  }) : super(
          options: options ?? WidgetOptions$Mutation$InitSignUp(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Variables$Mutation$CompleteSignUp {
  factory Variables$Mutation$CompleteSignUp(
          {required Input$CompleteSignUpInput input}) =>
      Variables$Mutation$CompleteSignUp._({
        r'input': input,
      });

  Variables$Mutation$CompleteSignUp._(this._$data);

  factory Variables$Mutation$CompleteSignUp.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$CompleteSignUpInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$CompleteSignUp._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CompleteSignUpInput get input =>
      (_$data['input'] as Input$CompleteSignUpInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CompleteSignUp<Variables$Mutation$CompleteSignUp>
      get copyWith => CopyWith$Variables$Mutation$CompleteSignUp(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CompleteSignUp ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Mutation$CompleteSignUp<TRes> {
  factory CopyWith$Variables$Mutation$CompleteSignUp(
    Variables$Mutation$CompleteSignUp instance,
    TRes Function(Variables$Mutation$CompleteSignUp) then,
  ) = _CopyWithImpl$Variables$Mutation$CompleteSignUp;

  factory CopyWith$Variables$Mutation$CompleteSignUp.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CompleteSignUp;

  TRes call({Input$CompleteSignUpInput? input});
}

class _CopyWithImpl$Variables$Mutation$CompleteSignUp<TRes>
    implements CopyWith$Variables$Mutation$CompleteSignUp<TRes> {
  _CopyWithImpl$Variables$Mutation$CompleteSignUp(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CompleteSignUp _instance;

  final TRes Function(Variables$Mutation$CompleteSignUp) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$CompleteSignUp._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$CompleteSignUpInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CompleteSignUp<TRes>
    implements CopyWith$Variables$Mutation$CompleteSignUp<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CompleteSignUp(this._res);

  final TRes _res;

  @override
  call({Input$CompleteSignUpInput? input}) => _res;
}

class Mutation$CompleteSignUp {
  Mutation$CompleteSignUp({
    required this.completeSignUp,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CompleteSignUp.fromJson(Map<String, dynamic> json) {
    final l$completeSignUp = json['completeSignUp'];
    final l$$__typename = json['__typename'];
    return Mutation$CompleteSignUp(
      completeSignUp: Mutation$CompleteSignUp$completeSignUp.fromJson(
          (l$completeSignUp as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CompleteSignUp$completeSignUp completeSignUp;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$completeSignUp = completeSignUp;
    resultData['completeSignUp'] = l$completeSignUp.toJson();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$completeSignUp = completeSignUp;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$completeSignUp,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CompleteSignUp || runtimeType != other.runtimeType) {
      return false;
    }
    final l$completeSignUp = completeSignUp;
    final lOther$completeSignUp = other.completeSignUp;
    if (l$completeSignUp != lOther$completeSignUp) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CompleteSignUp on Mutation$CompleteSignUp {
  CopyWith$Mutation$CompleteSignUp<Mutation$CompleteSignUp> get copyWith =>
      CopyWith$Mutation$CompleteSignUp(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CompleteSignUp<TRes> {
  factory CopyWith$Mutation$CompleteSignUp(
    Mutation$CompleteSignUp instance,
    TRes Function(Mutation$CompleteSignUp) then,
  ) = _CopyWithImpl$Mutation$CompleteSignUp;

  factory CopyWith$Mutation$CompleteSignUp.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CompleteSignUp;

  TRes call({
    Mutation$CompleteSignUp$completeSignUp? completeSignUp,
    String? $__typename,
  });
  CopyWith$Mutation$CompleteSignUp$completeSignUp<TRes> get completeSignUp;
}

class _CopyWithImpl$Mutation$CompleteSignUp<TRes>
    implements CopyWith$Mutation$CompleteSignUp<TRes> {
  _CopyWithImpl$Mutation$CompleteSignUp(
    this._instance,
    this._then,
  );

  final Mutation$CompleteSignUp _instance;

  final TRes Function(Mutation$CompleteSignUp) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? completeSignUp = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CompleteSignUp(
        completeSignUp: completeSignUp == _undefined || completeSignUp == null
            ? _instance.completeSignUp
            : (completeSignUp as Mutation$CompleteSignUp$completeSignUp),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  @override
  CopyWith$Mutation$CompleteSignUp$completeSignUp<TRes> get completeSignUp {
    final local$completeSignUp = _instance.completeSignUp;
    return CopyWith$Mutation$CompleteSignUp$completeSignUp(
        local$completeSignUp, (e) => call(completeSignUp: e));
  }
}

class _CopyWithStubImpl$Mutation$CompleteSignUp<TRes>
    implements CopyWith$Mutation$CompleteSignUp<TRes> {
  _CopyWithStubImpl$Mutation$CompleteSignUp(this._res);

  final TRes _res;

  @override
  call({
    Mutation$CompleteSignUp$completeSignUp? completeSignUp,
    String? $__typename,
  }) =>
      _res;

  @override
  CopyWith$Mutation$CompleteSignUp$completeSignUp<TRes> get completeSignUp =>
      CopyWith$Mutation$CompleteSignUp$completeSignUp.stub(_res);
}

const documentNodeMutationCompleteSignUp = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CompleteSignUp'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'CompleteSignUpInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'completeSignUp'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'token'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'user'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'email'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'picture'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'role'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'badge'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$CompleteSignUp _parserFn$Mutation$CompleteSignUp(
        Map<String, dynamic> data) =>
    Mutation$CompleteSignUp.fromJson(data);
typedef OnMutationCompleted$Mutation$CompleteSignUp = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$CompleteSignUp?,
);

class Options$Mutation$CompleteSignUp
    extends graphql.MutationOptions<Mutation$CompleteSignUp> {
  Options$Mutation$CompleteSignUp({
    super.operationName,
    required Variables$Mutation$CompleteSignUp variables,
    super.fetchPolicy,
    super.errorPolicy,
    super.cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CompleteSignUp? typedOptimisticResult,
    super.context,
    OnMutationCompleted$Mutation$CompleteSignUp? onCompleted,
    super.update,
    super.onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$CompleteSignUp(data),
                  ),
          document: documentNodeMutationCompleteSignUp,
          parserFn: _parserFn$Mutation$CompleteSignUp,
        );

  final OnMutationCompleted$Mutation$CompleteSignUp? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CompleteSignUp
    extends graphql.WatchQueryOptions<Mutation$CompleteSignUp> {
  WatchOptions$Mutation$CompleteSignUp({
    super.operationName,
    required Variables$Mutation$CompleteSignUp variables,
    super.fetchPolicy,
    super.errorPolicy,
    super.cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CompleteSignUp? typedOptimisticResult,
    super.context,
    super.pollInterval,
    super.eagerlyFetchResults,
    super.carryForwardDataOnException,
    super.fetchResults,
  }) : super(
          variables: variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          document: documentNodeMutationCompleteSignUp,
          parserFn: _parserFn$Mutation$CompleteSignUp,
        );
}

extension ClientExtension$Mutation$CompleteSignUp on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CompleteSignUp>> mutate$CompleteSignUp(
          Options$Mutation$CompleteSignUp options) async =>
      await mutate(options);

  graphql.ObservableQuery<Mutation$CompleteSignUp> watchMutation$CompleteSignUp(
          WatchOptions$Mutation$CompleteSignUp options) =>
      watchMutation(options);
}

class Mutation$CompleteSignUp$HookResult {
  Mutation$CompleteSignUp$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$CompleteSignUp runMutation;

  final graphql.QueryResult<Mutation$CompleteSignUp> result;
}

Mutation$CompleteSignUp$HookResult useMutation$CompleteSignUp(
    [WidgetOptions$Mutation$CompleteSignUp? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$CompleteSignUp());
  return Mutation$CompleteSignUp$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$CompleteSignUp>
    useWatchMutation$CompleteSignUp(
            WatchOptions$Mutation$CompleteSignUp options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$CompleteSignUp
    extends graphql.MutationOptions<Mutation$CompleteSignUp> {
  WidgetOptions$Mutation$CompleteSignUp({
    super.operationName,
    super.fetchPolicy,
    super.errorPolicy,
    super.cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CompleteSignUp? typedOptimisticResult,
    super.context,
    OnMutationCompleted$Mutation$CompleteSignUp? onCompleted,
    super.update,
    super.onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$CompleteSignUp(data),
                  ),
          document: documentNodeMutationCompleteSignUp,
          parserFn: _parserFn$Mutation$CompleteSignUp,
        );

  final OnMutationCompleted$Mutation$CompleteSignUp? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$CompleteSignUp
    = graphql.MultiSourceResult<Mutation$CompleteSignUp> Function(
  Variables$Mutation$CompleteSignUp, {
  Object? optimisticResult,
  Mutation$CompleteSignUp? typedOptimisticResult,
});
typedef Builder$Mutation$CompleteSignUp = widgets.Widget Function(
  RunMutation$Mutation$CompleteSignUp,
  graphql.QueryResult<Mutation$CompleteSignUp>?,
);

class Mutation$CompleteSignUp$Widget
    extends graphql_flutter.Mutation<Mutation$CompleteSignUp> {
  Mutation$CompleteSignUp$Widget({
    super.key,
    WidgetOptions$Mutation$CompleteSignUp? options,
    required Builder$Mutation$CompleteSignUp builder,
  }) : super(
          options: options ?? WidgetOptions$Mutation$CompleteSignUp(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$CompleteSignUp$completeSignUp {
  Mutation$CompleteSignUp$completeSignUp({
    required this.token,
    required this.user,
    this.$__typename = 'AuthPayload',
  });

  factory Mutation$CompleteSignUp$completeSignUp.fromJson(
      Map<String, dynamic> json) {
    final l$token = json['token'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Mutation$CompleteSignUp$completeSignUp(
      token: (l$token as String),
      user: Mutation$CompleteSignUp$completeSignUp$user.fromJson(
          (l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String token;

  final Mutation$CompleteSignUp$completeSignUp$user user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$token = token;
    resultData['token'] = l$token;
    final l$user = user;
    resultData['user'] = l$user.toJson();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$token = token;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$token,
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CompleteSignUp$completeSignUp ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$token = token;
    final lOther$token = other.token;
    if (l$token != lOther$token) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CompleteSignUp$completeSignUp
    on Mutation$CompleteSignUp$completeSignUp {
  CopyWith$Mutation$CompleteSignUp$completeSignUp<
          Mutation$CompleteSignUp$completeSignUp>
      get copyWith => CopyWith$Mutation$CompleteSignUp$completeSignUp(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CompleteSignUp$completeSignUp<TRes> {
  factory CopyWith$Mutation$CompleteSignUp$completeSignUp(
    Mutation$CompleteSignUp$completeSignUp instance,
    TRes Function(Mutation$CompleteSignUp$completeSignUp) then,
  ) = _CopyWithImpl$Mutation$CompleteSignUp$completeSignUp;

  factory CopyWith$Mutation$CompleteSignUp$completeSignUp.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CompleteSignUp$completeSignUp;

  TRes call({
    String? token,
    Mutation$CompleteSignUp$completeSignUp$user? user,
    String? $__typename,
  });
  CopyWith$Mutation$CompleteSignUp$completeSignUp$user<TRes> get user;
}

class _CopyWithImpl$Mutation$CompleteSignUp$completeSignUp<TRes>
    implements CopyWith$Mutation$CompleteSignUp$completeSignUp<TRes> {
  _CopyWithImpl$Mutation$CompleteSignUp$completeSignUp(
    this._instance,
    this._then,
  );

  final Mutation$CompleteSignUp$completeSignUp _instance;

  final TRes Function(Mutation$CompleteSignUp$completeSignUp) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? token = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CompleteSignUp$completeSignUp(
        token: token == _undefined || token == null
            ? _instance.token
            : (token as String),
        user: user == _undefined || user == null
            ? _instance.user
            : (user as Mutation$CompleteSignUp$completeSignUp$user),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  @override
  CopyWith$Mutation$CompleteSignUp$completeSignUp$user<TRes> get user {
    final local$user = _instance.user;
    return CopyWith$Mutation$CompleteSignUp$completeSignUp$user(
        local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Mutation$CompleteSignUp$completeSignUp<TRes>
    implements CopyWith$Mutation$CompleteSignUp$completeSignUp<TRes> {
  _CopyWithStubImpl$Mutation$CompleteSignUp$completeSignUp(this._res);

  final TRes _res;

  @override
  call({
    String? token,
    Mutation$CompleteSignUp$completeSignUp$user? user,
    String? $__typename,
  }) =>
      _res;

  @override
  CopyWith$Mutation$CompleteSignUp$completeSignUp$user<TRes> get user =>
      CopyWith$Mutation$CompleteSignUp$completeSignUp$user.stub(_res);
}

class Mutation$CompleteSignUp$completeSignUp$user {
  Mutation$CompleteSignUp$completeSignUp$user({
    required this.id,
    required this.name,
    required this.email,
    this.picture,
    required this.role,
    required this.badge,
    this.$__typename = 'User',
  });

  factory Mutation$CompleteSignUp$completeSignUp$user.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$email = json['email'];
    final l$picture = json['picture'];
    final l$role = json['role'];
    final l$badge = json['badge'];
    final l$$__typename = json['__typename'];
    return Mutation$CompleteSignUp$completeSignUp$user(
      id: (l$id as String),
      name: (l$name as String),
      email: (l$email as String),
      picture: (l$picture as String?),
      role: fromJson$Enum$Role((l$role as String)),
      badge: fromJson$Enum$UserBadge((l$badge as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String email;

  final String? picture;

  final Enum$Role role;

  final Enum$UserBadge badge;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$name = name;
    resultData['name'] = l$name;
    final l$email = email;
    resultData['email'] = l$email;
    final l$picture = picture;
    resultData['picture'] = l$picture;
    final l$role = role;
    resultData['role'] = toJson$Enum$Role(l$role);
    final l$badge = badge;
    resultData['badge'] = toJson$Enum$UserBadge(l$badge);
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$email = email;
    final l$picture = picture;
    final l$role = role;
    final l$badge = badge;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$email,
      l$picture,
      l$role,
      l$badge,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CompleteSignUp$completeSignUp$user ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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
    final l$picture = picture;
    final lOther$picture = other.picture;
    if (l$picture != lOther$picture) {
      return false;
    }
    final l$role = role;
    final lOther$role = other.role;
    if (l$role != lOther$role) {
      return false;
    }
    final l$badge = badge;
    final lOther$badge = other.badge;
    if (l$badge != lOther$badge) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CompleteSignUp$completeSignUp$user
    on Mutation$CompleteSignUp$completeSignUp$user {
  CopyWith$Mutation$CompleteSignUp$completeSignUp$user<
          Mutation$CompleteSignUp$completeSignUp$user>
      get copyWith => CopyWith$Mutation$CompleteSignUp$completeSignUp$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CompleteSignUp$completeSignUp$user<TRes> {
  factory CopyWith$Mutation$CompleteSignUp$completeSignUp$user(
    Mutation$CompleteSignUp$completeSignUp$user instance,
    TRes Function(Mutation$CompleteSignUp$completeSignUp$user) then,
  ) = _CopyWithImpl$Mutation$CompleteSignUp$completeSignUp$user;

  factory CopyWith$Mutation$CompleteSignUp$completeSignUp$user.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CompleteSignUp$completeSignUp$user;

  TRes call({
    String? id,
    String? name,
    String? email,
    String? picture,
    Enum$Role? role,
    Enum$UserBadge? badge,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CompleteSignUp$completeSignUp$user<TRes>
    implements CopyWith$Mutation$CompleteSignUp$completeSignUp$user<TRes> {
  _CopyWithImpl$Mutation$CompleteSignUp$completeSignUp$user(
    this._instance,
    this._then,
  );

  final Mutation$CompleteSignUp$completeSignUp$user _instance;

  final TRes Function(Mutation$CompleteSignUp$completeSignUp$user) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? email = _undefined,
    Object? picture = _undefined,
    Object? role = _undefined,
    Object? badge = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CompleteSignUp$completeSignUp$user(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        email: email == _undefined || email == null
            ? _instance.email
            : (email as String),
        picture:
            picture == _undefined ? _instance.picture : (picture as String?),
        role: role == _undefined || role == null
            ? _instance.role
            : (role as Enum$Role),
        badge: badge == _undefined || badge == null
            ? _instance.badge
            : (badge as Enum$UserBadge),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CompleteSignUp$completeSignUp$user<TRes>
    implements CopyWith$Mutation$CompleteSignUp$completeSignUp$user<TRes> {
  _CopyWithStubImpl$Mutation$CompleteSignUp$completeSignUp$user(this._res);

  final TRes _res;

  @override
  call({
    String? id,
    String? name,
    String? email,
    String? picture,
    Enum$Role? role,
    Enum$UserBadge? badge,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$UpdateUser {
  factory Variables$Mutation$UpdateUser(
          {required Input$UpdateUserInput input}) =>
      Variables$Mutation$UpdateUser._({
        r'input': input,
      });

  Variables$Mutation$UpdateUser._(this._$data);

  factory Variables$Mutation$UpdateUser.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$UpdateUserInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$UpdateUser._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UpdateUserInput get input => (_$data['input'] as Input$UpdateUserInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateUser<Variables$Mutation$UpdateUser>
      get copyWith => CopyWith$Variables$Mutation$UpdateUser(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateUser ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateUser<TRes> {
  factory CopyWith$Variables$Mutation$UpdateUser(
    Variables$Mutation$UpdateUser instance,
    TRes Function(Variables$Mutation$UpdateUser) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateUser;

  factory CopyWith$Variables$Mutation$UpdateUser.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateUser;

  TRes call({Input$UpdateUserInput? input});
}

class _CopyWithImpl$Variables$Mutation$UpdateUser<TRes>
    implements CopyWith$Variables$Mutation$UpdateUser<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateUser(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateUser _instance;

  final TRes Function(Variables$Mutation$UpdateUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$UpdateUser._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$UpdateUserInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateUser<TRes>
    implements CopyWith$Variables$Mutation$UpdateUser<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateUser(this._res);

  final TRes _res;

  @override
  call({Input$UpdateUserInput? input}) => _res;
}

class Mutation$UpdateUser {
  Mutation$UpdateUser({
    required this.updateUser,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateUser.fromJson(Map<String, dynamic> json) {
    final l$updateUser = json['updateUser'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateUser(
      updateUser: Mutation$UpdateUser$updateUser.fromJson(
          (l$updateUser as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateUser$updateUser updateUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$updateUser = updateUser;
    resultData['updateUser'] = l$updateUser.toJson();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$updateUser = updateUser;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateUser,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateUser || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateUser = updateUser;
    final lOther$updateUser = other.updateUser;
    if (l$updateUser != lOther$updateUser) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateUser on Mutation$UpdateUser {
  CopyWith$Mutation$UpdateUser<Mutation$UpdateUser> get copyWith =>
      CopyWith$Mutation$UpdateUser(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateUser<TRes> {
  factory CopyWith$Mutation$UpdateUser(
    Mutation$UpdateUser instance,
    TRes Function(Mutation$UpdateUser) then,
  ) = _CopyWithImpl$Mutation$UpdateUser;

  factory CopyWith$Mutation$UpdateUser.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateUser;

  TRes call({
    Mutation$UpdateUser$updateUser? updateUser,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateUser$updateUser<TRes> get updateUser;
}

class _CopyWithImpl$Mutation$UpdateUser<TRes>
    implements CopyWith$Mutation$UpdateUser<TRes> {
  _CopyWithImpl$Mutation$UpdateUser(
    this._instance,
    this._then,
  );

  final Mutation$UpdateUser _instance;

  final TRes Function(Mutation$UpdateUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? updateUser = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateUser(
        updateUser: updateUser == _undefined || updateUser == null
            ? _instance.updateUser
            : (updateUser as Mutation$UpdateUser$updateUser),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  @override
  CopyWith$Mutation$UpdateUser$updateUser<TRes> get updateUser {
    final local$updateUser = _instance.updateUser;
    return CopyWith$Mutation$UpdateUser$updateUser(
        local$updateUser, (e) => call(updateUser: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateUser<TRes>
    implements CopyWith$Mutation$UpdateUser<TRes> {
  _CopyWithStubImpl$Mutation$UpdateUser(this._res);

  final TRes _res;

  @override
  call({
    Mutation$UpdateUser$updateUser? updateUser,
    String? $__typename,
  }) =>
      _res;

  @override
  CopyWith$Mutation$UpdateUser$updateUser<TRes> get updateUser =>
      CopyWith$Mutation$UpdateUser$updateUser.stub(_res);
}

const documentNodeMutationUpdateUser = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateUser'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'UpdateUserInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateUser'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'token'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'user'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'email'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'picture'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'role'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'badge'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'phone'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'whatsapp'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'facebook'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'instagram'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'tiktok'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$UpdateUser _parserFn$Mutation$UpdateUser(Map<String, dynamic> data) =>
    Mutation$UpdateUser.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateUser = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$UpdateUser?,
);

class Options$Mutation$UpdateUser
    extends graphql.MutationOptions<Mutation$UpdateUser> {
  Options$Mutation$UpdateUser({
    super.operationName,
    required Variables$Mutation$UpdateUser variables,
    super.fetchPolicy,
    super.errorPolicy,
    super.cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateUser? typedOptimisticResult,
    super.context,
    OnMutationCompleted$Mutation$UpdateUser? onCompleted,
    super.update,
    super.onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$UpdateUser(data),
                  ),
          document: documentNodeMutationUpdateUser,
          parserFn: _parserFn$Mutation$UpdateUser,
        );

  final OnMutationCompleted$Mutation$UpdateUser? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateUser
    extends graphql.WatchQueryOptions<Mutation$UpdateUser> {
  WatchOptions$Mutation$UpdateUser({
    super.operationName,
    required Variables$Mutation$UpdateUser variables,
    super.fetchPolicy,
    super.errorPolicy,
    super.cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateUser? typedOptimisticResult,
    super.context,
    super.pollInterval,
    super.eagerlyFetchResults,
    super.carryForwardDataOnException,
    super.fetchResults,
  }) : super(
          variables: variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          document: documentNodeMutationUpdateUser,
          parserFn: _parserFn$Mutation$UpdateUser,
        );
}

extension ClientExtension$Mutation$UpdateUser on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateUser>> mutate$UpdateUser(
          Options$Mutation$UpdateUser options) async =>
      await mutate(options);

  graphql.ObservableQuery<Mutation$UpdateUser> watchMutation$UpdateUser(
          WatchOptions$Mutation$UpdateUser options) =>
      watchMutation(options);
}

class Mutation$UpdateUser$HookResult {
  Mutation$UpdateUser$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$UpdateUser runMutation;

  final graphql.QueryResult<Mutation$UpdateUser> result;
}

Mutation$UpdateUser$HookResult useMutation$UpdateUser(
    [WidgetOptions$Mutation$UpdateUser? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$UpdateUser());
  return Mutation$UpdateUser$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UpdateUser> useWatchMutation$UpdateUser(
        WatchOptions$Mutation$UpdateUser options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UpdateUser
    extends graphql.MutationOptions<Mutation$UpdateUser> {
  WidgetOptions$Mutation$UpdateUser({
    super.operationName,
    super.fetchPolicy,
    super.errorPolicy,
    super.cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateUser? typedOptimisticResult,
    super.context,
    OnMutationCompleted$Mutation$UpdateUser? onCompleted,
    super.update,
    super.onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$UpdateUser(data),
                  ),
          document: documentNodeMutationUpdateUser,
          parserFn: _parserFn$Mutation$UpdateUser,
        );

  final OnMutationCompleted$Mutation$UpdateUser? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$UpdateUser
    = graphql.MultiSourceResult<Mutation$UpdateUser> Function(
  Variables$Mutation$UpdateUser, {
  Object? optimisticResult,
  Mutation$UpdateUser? typedOptimisticResult,
});
typedef Builder$Mutation$UpdateUser = widgets.Widget Function(
  RunMutation$Mutation$UpdateUser,
  graphql.QueryResult<Mutation$UpdateUser>?,
);

class Mutation$UpdateUser$Widget
    extends graphql_flutter.Mutation<Mutation$UpdateUser> {
  Mutation$UpdateUser$Widget({
    super.key,
    WidgetOptions$Mutation$UpdateUser? options,
    required Builder$Mutation$UpdateUser builder,
  }) : super(
          options: options ?? WidgetOptions$Mutation$UpdateUser(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$UpdateUser$updateUser {
  Mutation$UpdateUser$updateUser({
    required this.token,
    required this.user,
    this.$__typename = 'AuthPayload',
  });

  factory Mutation$UpdateUser$updateUser.fromJson(Map<String, dynamic> json) {
    final l$token = json['token'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateUser$updateUser(
      token: (l$token as String),
      user: Mutation$UpdateUser$updateUser$user.fromJson(
          (l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String token;

  final Mutation$UpdateUser$updateUser$user user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$token = token;
    resultData['token'] = l$token;
    final l$user = user;
    resultData['user'] = l$user.toJson();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$token = token;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$token,
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateUser$updateUser ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$token = token;
    final lOther$token = other.token;
    if (l$token != lOther$token) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateUser$updateUser
    on Mutation$UpdateUser$updateUser {
  CopyWith$Mutation$UpdateUser$updateUser<Mutation$UpdateUser$updateUser>
      get copyWith => CopyWith$Mutation$UpdateUser$updateUser(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateUser$updateUser<TRes> {
  factory CopyWith$Mutation$UpdateUser$updateUser(
    Mutation$UpdateUser$updateUser instance,
    TRes Function(Mutation$UpdateUser$updateUser) then,
  ) = _CopyWithImpl$Mutation$UpdateUser$updateUser;

  factory CopyWith$Mutation$UpdateUser$updateUser.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateUser$updateUser;

  TRes call({
    String? token,
    Mutation$UpdateUser$updateUser$user? user,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateUser$updateUser$user<TRes> get user;
}

class _CopyWithImpl$Mutation$UpdateUser$updateUser<TRes>
    implements CopyWith$Mutation$UpdateUser$updateUser<TRes> {
  _CopyWithImpl$Mutation$UpdateUser$updateUser(
    this._instance,
    this._then,
  );

  final Mutation$UpdateUser$updateUser _instance;

  final TRes Function(Mutation$UpdateUser$updateUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? token = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateUser$updateUser(
        token: token == _undefined || token == null
            ? _instance.token
            : (token as String),
        user: user == _undefined || user == null
            ? _instance.user
            : (user as Mutation$UpdateUser$updateUser$user),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  @override
  CopyWith$Mutation$UpdateUser$updateUser$user<TRes> get user {
    final local$user = _instance.user;
    return CopyWith$Mutation$UpdateUser$updateUser$user(
        local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateUser$updateUser<TRes>
    implements CopyWith$Mutation$UpdateUser$updateUser<TRes> {
  _CopyWithStubImpl$Mutation$UpdateUser$updateUser(this._res);

  final TRes _res;

  @override
  call({
    String? token,
    Mutation$UpdateUser$updateUser$user? user,
    String? $__typename,
  }) =>
      _res;

  @override
  CopyWith$Mutation$UpdateUser$updateUser$user<TRes> get user =>
      CopyWith$Mutation$UpdateUser$updateUser$user.stub(_res);
}

class Mutation$UpdateUser$updateUser$user {
  Mutation$UpdateUser$updateUser$user({
    required this.id,
    required this.name,
    required this.email,
    this.picture,
    required this.role,
    required this.badge,
    this.phone,
    this.whatsapp,
    this.facebook,
    this.instagram,
    this.tiktok,
    this.$__typename = 'User',
  });

  factory Mutation$UpdateUser$updateUser$user.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$email = json['email'];
    final l$picture = json['picture'];
    final l$role = json['role'];
    final l$badge = json['badge'];
    final l$phone = json['phone'];
    final l$whatsapp = json['whatsapp'];
    final l$facebook = json['facebook'];
    final l$instagram = json['instagram'];
    final l$tiktok = json['tiktok'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateUser$updateUser$user(
      id: (l$id as String),
      name: (l$name as String),
      email: (l$email as String),
      picture: (l$picture as String?),
      role: fromJson$Enum$Role((l$role as String)),
      badge: fromJson$Enum$UserBadge((l$badge as String)),
      phone: (l$phone as String?),
      whatsapp: (l$whatsapp as String?),
      facebook: (l$facebook as String?),
      instagram: (l$instagram as String?),
      tiktok: (l$tiktok as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String email;

  final String? picture;

  final Enum$Role role;

  final Enum$UserBadge badge;

  final String? phone;

  final String? whatsapp;

  final String? facebook;

  final String? instagram;

  final String? tiktok;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$name = name;
    resultData['name'] = l$name;
    final l$email = email;
    resultData['email'] = l$email;
    final l$picture = picture;
    resultData['picture'] = l$picture;
    final l$role = role;
    resultData['role'] = toJson$Enum$Role(l$role);
    final l$badge = badge;
    resultData['badge'] = toJson$Enum$UserBadge(l$badge);
    final l$phone = phone;
    resultData['phone'] = l$phone;
    final l$whatsapp = whatsapp;
    resultData['whatsapp'] = l$whatsapp;
    final l$facebook = facebook;
    resultData['facebook'] = l$facebook;
    final l$instagram = instagram;
    resultData['instagram'] = l$instagram;
    final l$tiktok = tiktok;
    resultData['tiktok'] = l$tiktok;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$email = email;
    final l$picture = picture;
    final l$role = role;
    final l$badge = badge;
    final l$phone = phone;
    final l$whatsapp = whatsapp;
    final l$facebook = facebook;
    final l$instagram = instagram;
    final l$tiktok = tiktok;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$email,
      l$picture,
      l$role,
      l$badge,
      l$phone,
      l$whatsapp,
      l$facebook,
      l$instagram,
      l$tiktok,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateUser$updateUser$user ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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
    final l$picture = picture;
    final lOther$picture = other.picture;
    if (l$picture != lOther$picture) {
      return false;
    }
    final l$role = role;
    final lOther$role = other.role;
    if (l$role != lOther$role) {
      return false;
    }
    final l$badge = badge;
    final lOther$badge = other.badge;
    if (l$badge != lOther$badge) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$whatsapp = whatsapp;
    final lOther$whatsapp = other.whatsapp;
    if (l$whatsapp != lOther$whatsapp) {
      return false;
    }
    final l$facebook = facebook;
    final lOther$facebook = other.facebook;
    if (l$facebook != lOther$facebook) {
      return false;
    }
    final l$instagram = instagram;
    final lOther$instagram = other.instagram;
    if (l$instagram != lOther$instagram) {
      return false;
    }
    final l$tiktok = tiktok;
    final lOther$tiktok = other.tiktok;
    if (l$tiktok != lOther$tiktok) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateUser$updateUser$user
    on Mutation$UpdateUser$updateUser$user {
  CopyWith$Mutation$UpdateUser$updateUser$user<
          Mutation$UpdateUser$updateUser$user>
      get copyWith => CopyWith$Mutation$UpdateUser$updateUser$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateUser$updateUser$user<TRes> {
  factory CopyWith$Mutation$UpdateUser$updateUser$user(
    Mutation$UpdateUser$updateUser$user instance,
    TRes Function(Mutation$UpdateUser$updateUser$user) then,
  ) = _CopyWithImpl$Mutation$UpdateUser$updateUser$user;

  factory CopyWith$Mutation$UpdateUser$updateUser$user.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateUser$updateUser$user;

  TRes call({
    String? id,
    String? name,
    String? email,
    String? picture,
    Enum$Role? role,
    Enum$UserBadge? badge,
    String? phone,
    String? whatsapp,
    String? facebook,
    String? instagram,
    String? tiktok,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateUser$updateUser$user<TRes>
    implements CopyWith$Mutation$UpdateUser$updateUser$user<TRes> {
  _CopyWithImpl$Mutation$UpdateUser$updateUser$user(
    this._instance,
    this._then,
  );

  final Mutation$UpdateUser$updateUser$user _instance;

  final TRes Function(Mutation$UpdateUser$updateUser$user) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? email = _undefined,
    Object? picture = _undefined,
    Object? role = _undefined,
    Object? badge = _undefined,
    Object? phone = _undefined,
    Object? whatsapp = _undefined,
    Object? facebook = _undefined,
    Object? instagram = _undefined,
    Object? tiktok = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateUser$updateUser$user(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        email: email == _undefined || email == null
            ? _instance.email
            : (email as String),
        picture:
            picture == _undefined ? _instance.picture : (picture as String?),
        role: role == _undefined || role == null
            ? _instance.role
            : (role as Enum$Role),
        badge: badge == _undefined || badge == null
            ? _instance.badge
            : (badge as Enum$UserBadge),
        phone: phone == _undefined ? _instance.phone : (phone as String?),
        whatsapp:
            whatsapp == _undefined ? _instance.whatsapp : (whatsapp as String?),
        facebook:
            facebook == _undefined ? _instance.facebook : (facebook as String?),
        instagram: instagram == _undefined
            ? _instance.instagram
            : (instagram as String?),
        tiktok: tiktok == _undefined ? _instance.tiktok : (tiktok as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateUser$updateUser$user<TRes>
    implements CopyWith$Mutation$UpdateUser$updateUser$user<TRes> {
  _CopyWithStubImpl$Mutation$UpdateUser$updateUser$user(this._res);

  final TRes _res;

  @override
  call({
    String? id,
    String? name,
    String? email,
    String? picture,
    Enum$Role? role,
    Enum$UserBadge? badge,
    String? phone,
    String? whatsapp,
    String? facebook,
    String? instagram,
    String? tiktok,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$ChangePassword {
  factory Variables$Mutation$ChangePassword(
          {required Input$ChangePasswordInput input}) =>
      Variables$Mutation$ChangePassword._({
        r'input': input,
      });

  Variables$Mutation$ChangePassword._(this._$data);

  factory Variables$Mutation$ChangePassword.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$ChangePasswordInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$ChangePassword._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ChangePasswordInput get input =>
      (_$data['input'] as Input$ChangePasswordInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$ChangePassword<Variables$Mutation$ChangePassword>
      get copyWith => CopyWith$Variables$Mutation$ChangePassword(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$ChangePassword ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Mutation$ChangePassword<TRes> {
  factory CopyWith$Variables$Mutation$ChangePassword(
    Variables$Mutation$ChangePassword instance,
    TRes Function(Variables$Mutation$ChangePassword) then,
  ) = _CopyWithImpl$Variables$Mutation$ChangePassword;

  factory CopyWith$Variables$Mutation$ChangePassword.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ChangePassword;

  TRes call({Input$ChangePasswordInput? input});
}

class _CopyWithImpl$Variables$Mutation$ChangePassword<TRes>
    implements CopyWith$Variables$Mutation$ChangePassword<TRes> {
  _CopyWithImpl$Variables$Mutation$ChangePassword(
    this._instance,
    this._then,
  );

  final Variables$Mutation$ChangePassword _instance;

  final TRes Function(Variables$Mutation$ChangePassword) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$ChangePassword._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$ChangePasswordInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$ChangePassword<TRes>
    implements CopyWith$Variables$Mutation$ChangePassword<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ChangePassword(this._res);

  final TRes _res;

  @override
  call({Input$ChangePasswordInput? input}) => _res;
}

class Mutation$ChangePassword {
  Mutation$ChangePassword({
    required this.changePassword,
    this.$__typename = 'Mutation',
  });

  factory Mutation$ChangePassword.fromJson(Map<String, dynamic> json) {
    final l$changePassword = json['changePassword'];
    final l$$__typename = json['__typename'];
    return Mutation$ChangePassword(
      changePassword: (l$changePassword as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool changePassword;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$changePassword = changePassword;
    resultData['changePassword'] = l$changePassword;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$changePassword = changePassword;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$changePassword,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ChangePassword || runtimeType != other.runtimeType) {
      return false;
    }
    final l$changePassword = changePassword;
    final lOther$changePassword = other.changePassword;
    if (l$changePassword != lOther$changePassword) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$ChangePassword on Mutation$ChangePassword {
  CopyWith$Mutation$ChangePassword<Mutation$ChangePassword> get copyWith =>
      CopyWith$Mutation$ChangePassword(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ChangePassword<TRes> {
  factory CopyWith$Mutation$ChangePassword(
    Mutation$ChangePassword instance,
    TRes Function(Mutation$ChangePassword) then,
  ) = _CopyWithImpl$Mutation$ChangePassword;

  factory CopyWith$Mutation$ChangePassword.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ChangePassword;

  TRes call({
    bool? changePassword,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ChangePassword<TRes>
    implements CopyWith$Mutation$ChangePassword<TRes> {
  _CopyWithImpl$Mutation$ChangePassword(
    this._instance,
    this._then,
  );

  final Mutation$ChangePassword _instance;

  final TRes Function(Mutation$ChangePassword) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? changePassword = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ChangePassword(
        changePassword: changePassword == _undefined || changePassword == null
            ? _instance.changePassword
            : (changePassword as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$ChangePassword<TRes>
    implements CopyWith$Mutation$ChangePassword<TRes> {
  _CopyWithStubImpl$Mutation$ChangePassword(this._res);

  final TRes _res;

  @override
  call({
    bool? changePassword,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationChangePassword = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'ChangePassword'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'ChangePasswordInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'changePassword'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$ChangePassword _parserFn$Mutation$ChangePassword(
        Map<String, dynamic> data) =>
    Mutation$ChangePassword.fromJson(data);
typedef OnMutationCompleted$Mutation$ChangePassword = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$ChangePassword?,
);

class Options$Mutation$ChangePassword
    extends graphql.MutationOptions<Mutation$ChangePassword> {
  Options$Mutation$ChangePassword({
    super.operationName,
    required Variables$Mutation$ChangePassword variables,
    super.fetchPolicy,
    super.errorPolicy,
    super.cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ChangePassword? typedOptimisticResult,
    super.context,
    OnMutationCompleted$Mutation$ChangePassword? onCompleted,
    super.update,
    super.onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$ChangePassword(data),
                  ),
          document: documentNodeMutationChangePassword,
          parserFn: _parserFn$Mutation$ChangePassword,
        );

  final OnMutationCompleted$Mutation$ChangePassword? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$ChangePassword
    extends graphql.WatchQueryOptions<Mutation$ChangePassword> {
  WatchOptions$Mutation$ChangePassword({
    super.operationName,
    required Variables$Mutation$ChangePassword variables,
    super.fetchPolicy,
    super.errorPolicy,
    super.cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ChangePassword? typedOptimisticResult,
    super.context,
    super.pollInterval,
    super.eagerlyFetchResults,
    super.carryForwardDataOnException,
    super.fetchResults,
  }) : super(
          variables: variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          document: documentNodeMutationChangePassword,
          parserFn: _parserFn$Mutation$ChangePassword,
        );
}

extension ClientExtension$Mutation$ChangePassword on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$ChangePassword>> mutate$ChangePassword(
          Options$Mutation$ChangePassword options) async =>
      await mutate(options);

  graphql.ObservableQuery<Mutation$ChangePassword> watchMutation$ChangePassword(
          WatchOptions$Mutation$ChangePassword options) =>
      watchMutation(options);
}

class Mutation$ChangePassword$HookResult {
  Mutation$ChangePassword$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$ChangePassword runMutation;

  final graphql.QueryResult<Mutation$ChangePassword> result;
}

Mutation$ChangePassword$HookResult useMutation$ChangePassword(
    [WidgetOptions$Mutation$ChangePassword? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$ChangePassword());
  return Mutation$ChangePassword$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$ChangePassword>
    useWatchMutation$ChangePassword(
            WatchOptions$Mutation$ChangePassword options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$ChangePassword
    extends graphql.MutationOptions<Mutation$ChangePassword> {
  WidgetOptions$Mutation$ChangePassword({
    super.operationName,
    super.fetchPolicy,
    super.errorPolicy,
    super.cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ChangePassword? typedOptimisticResult,
    super.context,
    OnMutationCompleted$Mutation$ChangePassword? onCompleted,
    super.update,
    super.onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$ChangePassword(data),
                  ),
          document: documentNodeMutationChangePassword,
          parserFn: _parserFn$Mutation$ChangePassword,
        );

  final OnMutationCompleted$Mutation$ChangePassword? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$ChangePassword
    = graphql.MultiSourceResult<Mutation$ChangePassword> Function(
  Variables$Mutation$ChangePassword, {
  Object? optimisticResult,
  Mutation$ChangePassword? typedOptimisticResult,
});
typedef Builder$Mutation$ChangePassword = widgets.Widget Function(
  RunMutation$Mutation$ChangePassword,
  graphql.QueryResult<Mutation$ChangePassword>?,
);

class Mutation$ChangePassword$Widget
    extends graphql_flutter.Mutation<Mutation$ChangePassword> {
  Mutation$ChangePassword$Widget({
    super.key,
    WidgetOptions$Mutation$ChangePassword? options,
    required Builder$Mutation$ChangePassword builder,
  }) : super(
          options: options ?? WidgetOptions$Mutation$ChangePassword(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Variables$Mutation$DeleteUser {
  factory Variables$Mutation$DeleteUser({required String id}) =>
      Variables$Mutation$DeleteUser._({
        r'id': id,
      });

  Variables$Mutation$DeleteUser._(this._$data);

  factory Variables$Mutation$DeleteUser.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Mutation$DeleteUser._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteUser<Variables$Mutation$DeleteUser>
      get copyWith => CopyWith$Variables$Mutation$DeleteUser(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$DeleteUser ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Variables$Mutation$DeleteUser<TRes> {
  factory CopyWith$Variables$Mutation$DeleteUser(
    Variables$Mutation$DeleteUser instance,
    TRes Function(Variables$Mutation$DeleteUser) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteUser;

  factory CopyWith$Variables$Mutation$DeleteUser.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteUser;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Mutation$DeleteUser<TRes>
    implements CopyWith$Variables$Mutation$DeleteUser<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteUser(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteUser _instance;

  final TRes Function(Variables$Mutation$DeleteUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({Object? id = _undefined}) =>
      _then(Variables$Mutation$DeleteUser._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteUser<TRes>
    implements CopyWith$Variables$Mutation$DeleteUser<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteUser(this._res);

  final TRes _res;

  @override
  call({String? id}) => _res;
}

class Mutation$DeleteUser {
  Mutation$DeleteUser({
    required this.deleteUser,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteUser.fromJson(Map<String, dynamic> json) {
    final l$deleteUser = json['deleteUser'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteUser(
      deleteUser: (l$deleteUser as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool deleteUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$deleteUser = deleteUser;
    resultData['deleteUser'] = l$deleteUser;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$deleteUser = deleteUser;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteUser,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DeleteUser || runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteUser = deleteUser;
    final lOther$deleteUser = other.deleteUser;
    if (l$deleteUser != lOther$deleteUser) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$DeleteUser on Mutation$DeleteUser {
  CopyWith$Mutation$DeleteUser<Mutation$DeleteUser> get copyWith =>
      CopyWith$Mutation$DeleteUser(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeleteUser<TRes> {
  factory CopyWith$Mutation$DeleteUser(
    Mutation$DeleteUser instance,
    TRes Function(Mutation$DeleteUser) then,
  ) = _CopyWithImpl$Mutation$DeleteUser;

  factory CopyWith$Mutation$DeleteUser.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteUser;

  TRes call({
    bool? deleteUser,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeleteUser<TRes>
    implements CopyWith$Mutation$DeleteUser<TRes> {
  _CopyWithImpl$Mutation$DeleteUser(
    this._instance,
    this._then,
  );

  final Mutation$DeleteUser _instance;

  final TRes Function(Mutation$DeleteUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? deleteUser = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteUser(
        deleteUser: deleteUser == _undefined || deleteUser == null
            ? _instance.deleteUser
            : (deleteUser as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeleteUser<TRes>
    implements CopyWith$Mutation$DeleteUser<TRes> {
  _CopyWithStubImpl$Mutation$DeleteUser(this._res);

  final TRes _res;

  @override
  call({
    bool? deleteUser,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationDeleteUser = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteUser'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'deleteUser'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$DeleteUser _parserFn$Mutation$DeleteUser(Map<String, dynamic> data) =>
    Mutation$DeleteUser.fromJson(data);
typedef OnMutationCompleted$Mutation$DeleteUser = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$DeleteUser?,
);

class Options$Mutation$DeleteUser
    extends graphql.MutationOptions<Mutation$DeleteUser> {
  Options$Mutation$DeleteUser({
    super.operationName,
    required Variables$Mutation$DeleteUser variables,
    super.fetchPolicy,
    super.errorPolicy,
    super.cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteUser? typedOptimisticResult,
    super.context,
    OnMutationCompleted$Mutation$DeleteUser? onCompleted,
    super.update,
    super.onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$DeleteUser(data),
                  ),
          document: documentNodeMutationDeleteUser,
          parserFn: _parserFn$Mutation$DeleteUser,
        );

  final OnMutationCompleted$Mutation$DeleteUser? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DeleteUser
    extends graphql.WatchQueryOptions<Mutation$DeleteUser> {
  WatchOptions$Mutation$DeleteUser({
    super.operationName,
    required Variables$Mutation$DeleteUser variables,
    super.fetchPolicy,
    super.errorPolicy,
    super.cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteUser? typedOptimisticResult,
    super.context,
    super.pollInterval,
    super.eagerlyFetchResults,
    super.carryForwardDataOnException,
    super.fetchResults,
  }) : super(
          variables: variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          document: documentNodeMutationDeleteUser,
          parserFn: _parserFn$Mutation$DeleteUser,
        );
}

extension ClientExtension$Mutation$DeleteUser on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DeleteUser>> mutate$DeleteUser(
          Options$Mutation$DeleteUser options) async =>
      await mutate(options);

  graphql.ObservableQuery<Mutation$DeleteUser> watchMutation$DeleteUser(
          WatchOptions$Mutation$DeleteUser options) =>
      watchMutation(options);
}

class Mutation$DeleteUser$HookResult {
  Mutation$DeleteUser$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$DeleteUser runMutation;

  final graphql.QueryResult<Mutation$DeleteUser> result;
}

Mutation$DeleteUser$HookResult useMutation$DeleteUser(
    [WidgetOptions$Mutation$DeleteUser? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$DeleteUser());
  return Mutation$DeleteUser$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$DeleteUser> useWatchMutation$DeleteUser(
        WatchOptions$Mutation$DeleteUser options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$DeleteUser
    extends graphql.MutationOptions<Mutation$DeleteUser> {
  WidgetOptions$Mutation$DeleteUser({
    super.operationName,
    super.fetchPolicy,
    super.errorPolicy,
    super.cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteUser? typedOptimisticResult,
    super.context,
    OnMutationCompleted$Mutation$DeleteUser? onCompleted,
    super.update,
    super.onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$DeleteUser(data),
                  ),
          document: documentNodeMutationDeleteUser,
          parserFn: _parserFn$Mutation$DeleteUser,
        );

  final OnMutationCompleted$Mutation$DeleteUser? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$DeleteUser
    = graphql.MultiSourceResult<Mutation$DeleteUser> Function(
  Variables$Mutation$DeleteUser, {
  Object? optimisticResult,
  Mutation$DeleteUser? typedOptimisticResult,
});
typedef Builder$Mutation$DeleteUser = widgets.Widget Function(
  RunMutation$Mutation$DeleteUser,
  graphql.QueryResult<Mutation$DeleteUser>?,
);

class Mutation$DeleteUser$Widget
    extends graphql_flutter.Mutation<Mutation$DeleteUser> {
  Mutation$DeleteUser$Widget({
    super.key,
    WidgetOptions$Mutation$DeleteUser? options,
    required Builder$Mutation$DeleteUser builder,
  }) : super(
          options: options ?? WidgetOptions$Mutation$DeleteUser(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}
