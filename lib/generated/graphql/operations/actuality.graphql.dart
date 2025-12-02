// GENERATED FILE
// DO NOT MODIFY
import '../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Query$LastActualities {
  Query$LastActualities({
    this.myLastActuality,
    required this.lastActualities,
    this.$__typename = 'Query',
  });

  factory Query$LastActualities.fromJson(Map<String, dynamic> json) {
    final l$myLastActuality = json['myLastActuality'];
    final l$lastActualities = json['lastActualities'];
    final l$$__typename = json['__typename'];
    return Query$LastActualities(
      myLastActuality: l$myLastActuality == null
          ? null
          : Query$LastActualities$myLastActuality.fromJson(
              (l$myLastActuality as Map<String, dynamic>)),
      lastActualities: (l$lastActualities as List<dynamic>)
          .map((e) => Query$LastActualities$lastActualities.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$LastActualities$myLastActuality? myLastActuality;

  final List<Query$LastActualities$lastActualities> lastActualities;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$myLastActuality = myLastActuality;
    _resultData['myLastActuality'] = l$myLastActuality?.toJson();
    final l$lastActualities = lastActualities;
    _resultData['lastActualities'] =
        l$lastActualities.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$myLastActuality = myLastActuality;
    final l$lastActualities = lastActualities;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$myLastActuality,
      Object.hashAll(l$lastActualities.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$LastActualities || runtimeType != other.runtimeType) {
      return false;
    }
    final l$myLastActuality = myLastActuality;
    final lOther$myLastActuality = other.myLastActuality;
    if (l$myLastActuality != lOther$myLastActuality) {
      return false;
    }
    final l$lastActualities = lastActualities;
    final lOther$lastActualities = other.lastActualities;
    if (l$lastActualities.length != lOther$lastActualities.length) {
      return false;
    }
    for (int i = 0; i < l$lastActualities.length; i++) {
      final l$lastActualities$entry = l$lastActualities[i];
      final lOther$lastActualities$entry = lOther$lastActualities[i];
      if (l$lastActualities$entry != lOther$lastActualities$entry) {
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

extension UtilityExtension$Query$LastActualities on Query$LastActualities {
  CopyWith$Query$LastActualities<Query$LastActualities> get copyWith =>
      CopyWith$Query$LastActualities(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LastActualities<TRes> {
  factory CopyWith$Query$LastActualities(
    Query$LastActualities instance,
    TRes Function(Query$LastActualities) then,
  ) = _CopyWithImpl$Query$LastActualities;

  factory CopyWith$Query$LastActualities.stub(TRes res) =
      _CopyWithStubImpl$Query$LastActualities;

  TRes call({
    Query$LastActualities$myLastActuality? myLastActuality,
    List<Query$LastActualities$lastActualities>? lastActualities,
    String? $__typename,
  });
  CopyWith$Query$LastActualities$myLastActuality<TRes> get myLastActuality;
  TRes lastActualities(
      Iterable<Query$LastActualities$lastActualities> Function(
              Iterable<
                  CopyWith$Query$LastActualities$lastActualities<
                      Query$LastActualities$lastActualities>>)
          _fn);
}

class _CopyWithImpl$Query$LastActualities<TRes>
    implements CopyWith$Query$LastActualities<TRes> {
  _CopyWithImpl$Query$LastActualities(
    this._instance,
    this._then,
  );

  final Query$LastActualities _instance;

  final TRes Function(Query$LastActualities) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? myLastActuality = _undefined,
    Object? lastActualities = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$LastActualities(
        myLastActuality: myLastActuality == _undefined
            ? _instance.myLastActuality
            : (myLastActuality as Query$LastActualities$myLastActuality?),
        lastActualities: lastActualities == _undefined ||
                lastActualities == null
            ? _instance.lastActualities
            : (lastActualities as List<Query$LastActualities$lastActualities>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$LastActualities$myLastActuality<TRes> get myLastActuality {
    final local$myLastActuality = _instance.myLastActuality;
    return local$myLastActuality == null
        ? CopyWith$Query$LastActualities$myLastActuality.stub(_then(_instance))
        : CopyWith$Query$LastActualities$myLastActuality(
            local$myLastActuality, (e) => call(myLastActuality: e));
  }

  TRes lastActualities(
          Iterable<Query$LastActualities$lastActualities> Function(
                  Iterable<
                      CopyWith$Query$LastActualities$lastActualities<
                          Query$LastActualities$lastActualities>>)
              _fn) =>
      call(
          lastActualities: _fn(_instance.lastActualities
              .map((e) => CopyWith$Query$LastActualities$lastActualities(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$LastActualities<TRes>
    implements CopyWith$Query$LastActualities<TRes> {
  _CopyWithStubImpl$Query$LastActualities(this._res);

  TRes _res;

  call({
    Query$LastActualities$myLastActuality? myLastActuality,
    List<Query$LastActualities$lastActualities>? lastActualities,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$LastActualities$myLastActuality<TRes> get myLastActuality =>
      CopyWith$Query$LastActualities$myLastActuality.stub(_res);

  lastActualities(_fn) => _res;
}

const documentNodeQueryLastActualities = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'LastActualities'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'myLastActuality'),
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
            name: NameNode(value: 'picture'),
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
        name: NameNode(value: 'lastActualities'),
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
            name: NameNode(value: 'picture'),
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
Query$LastActualities _parserFn$Query$LastActualities(
        Map<String, dynamic> data) =>
    Query$LastActualities.fromJson(data);
typedef OnQueryComplete$Query$LastActualities = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$LastActualities?,
);

class Options$Query$LastActualities
    extends graphql.QueryOptions<Query$LastActualities> {
  Options$Query$LastActualities({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$LastActualities? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$LastActualities? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$LastActualities(data),
                  ),
          onError: onError,
          document: documentNodeQueryLastActualities,
          parserFn: _parserFn$Query$LastActualities,
        );

  final OnQueryComplete$Query$LastActualities? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$LastActualities
    extends graphql.WatchQueryOptions<Query$LastActualities> {
  WatchOptions$Query$LastActualities({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$LastActualities? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryLastActualities,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$LastActualities,
        );
}

class FetchMoreOptions$Query$LastActualities extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$LastActualities(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryLastActualities,
        );
}

extension ClientExtension$Query$LastActualities on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$LastActualities>> query$LastActualities(
          [Options$Query$LastActualities? options]) async =>
      await this.query(options ?? Options$Query$LastActualities());

  graphql.ObservableQuery<Query$LastActualities> watchQuery$LastActualities(
          [WatchOptions$Query$LastActualities? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$LastActualities());

  void writeQuery$LastActualities({
    required Query$LastActualities data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryLastActualities)),
        data: data.toJson(),
        broadcast: broadcast,
      );

  Query$LastActualities? readQuery$LastActualities({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryLastActualities)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$LastActualities.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$LastActualities> useQuery$LastActualities(
        [Options$Query$LastActualities? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$LastActualities());
graphql.ObservableQuery<Query$LastActualities> useWatchQuery$LastActualities(
        [WatchOptions$Query$LastActualities? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$LastActualities());

class Query$LastActualities$Widget
    extends graphql_flutter.Query<Query$LastActualities> {
  Query$LastActualities$Widget({
    widgets.Key? key,
    Options$Query$LastActualities? options,
    required graphql_flutter.QueryBuilder<Query$LastActualities> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$LastActualities(),
          builder: builder,
        );
}

class Query$LastActualities$myLastActuality {
  Query$LastActualities$myLastActuality({
    required this.id,
    required this.picture,
    this.$__typename = 'Actuality',
  });

  factory Query$LastActualities$myLastActuality.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$picture = json['picture'];
    final l$$__typename = json['__typename'];
    return Query$LastActualities$myLastActuality(
      id: (l$id as String),
      picture: (l$picture as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String picture;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$picture = picture;
    _resultData['picture'] = l$picture;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$picture = picture;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$picture,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$LastActualities$myLastActuality ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$picture = picture;
    final lOther$picture = other.picture;
    if (l$picture != lOther$picture) {
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

extension UtilityExtension$Query$LastActualities$myLastActuality
    on Query$LastActualities$myLastActuality {
  CopyWith$Query$LastActualities$myLastActuality<
          Query$LastActualities$myLastActuality>
      get copyWith => CopyWith$Query$LastActualities$myLastActuality(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$LastActualities$myLastActuality<TRes> {
  factory CopyWith$Query$LastActualities$myLastActuality(
    Query$LastActualities$myLastActuality instance,
    TRes Function(Query$LastActualities$myLastActuality) then,
  ) = _CopyWithImpl$Query$LastActualities$myLastActuality;

  factory CopyWith$Query$LastActualities$myLastActuality.stub(TRes res) =
      _CopyWithStubImpl$Query$LastActualities$myLastActuality;

  TRes call({
    String? id,
    String? picture,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$LastActualities$myLastActuality<TRes>
    implements CopyWith$Query$LastActualities$myLastActuality<TRes> {
  _CopyWithImpl$Query$LastActualities$myLastActuality(
    this._instance,
    this._then,
  );

  final Query$LastActualities$myLastActuality _instance;

  final TRes Function(Query$LastActualities$myLastActuality) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? picture = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$LastActualities$myLastActuality(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        picture: picture == _undefined || picture == null
            ? _instance.picture
            : (picture as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$LastActualities$myLastActuality<TRes>
    implements CopyWith$Query$LastActualities$myLastActuality<TRes> {
  _CopyWithStubImpl$Query$LastActualities$myLastActuality(this._res);

  TRes _res;

  call({
    String? id,
    String? picture,
    String? $__typename,
  }) =>
      _res;
}

class Query$LastActualities$lastActualities {
  Query$LastActualities$lastActualities({
    required this.id,
    required this.user,
    required this.picture,
    this.$__typename = 'Actuality',
  });

  factory Query$LastActualities$lastActualities.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$user = json['user'];
    final l$picture = json['picture'];
    final l$$__typename = json['__typename'];
    return Query$LastActualities$lastActualities(
      id: (l$id as String),
      user: Query$LastActualities$lastActualities$user.fromJson(
          (l$user as Map<String, dynamic>)),
      picture: (l$picture as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Query$LastActualities$lastActualities$user user;

  final String picture;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$user = user;
    _resultData['user'] = l$user.toJson();
    final l$picture = picture;
    _resultData['picture'] = l$picture;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$user = user;
    final l$picture = picture;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$user,
      l$picture,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$LastActualities$lastActualities ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$picture = picture;
    final lOther$picture = other.picture;
    if (l$picture != lOther$picture) {
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

extension UtilityExtension$Query$LastActualities$lastActualities
    on Query$LastActualities$lastActualities {
  CopyWith$Query$LastActualities$lastActualities<
          Query$LastActualities$lastActualities>
      get copyWith => CopyWith$Query$LastActualities$lastActualities(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$LastActualities$lastActualities<TRes> {
  factory CopyWith$Query$LastActualities$lastActualities(
    Query$LastActualities$lastActualities instance,
    TRes Function(Query$LastActualities$lastActualities) then,
  ) = _CopyWithImpl$Query$LastActualities$lastActualities;

  factory CopyWith$Query$LastActualities$lastActualities.stub(TRes res) =
      _CopyWithStubImpl$Query$LastActualities$lastActualities;

  TRes call({
    String? id,
    Query$LastActualities$lastActualities$user? user,
    String? picture,
    String? $__typename,
  });
  CopyWith$Query$LastActualities$lastActualities$user<TRes> get user;
}

class _CopyWithImpl$Query$LastActualities$lastActualities<TRes>
    implements CopyWith$Query$LastActualities$lastActualities<TRes> {
  _CopyWithImpl$Query$LastActualities$lastActualities(
    this._instance,
    this._then,
  );

  final Query$LastActualities$lastActualities _instance;

  final TRes Function(Query$LastActualities$lastActualities) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? user = _undefined,
    Object? picture = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$LastActualities$lastActualities(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        user: user == _undefined || user == null
            ? _instance.user
            : (user as Query$LastActualities$lastActualities$user),
        picture: picture == _undefined || picture == null
            ? _instance.picture
            : (picture as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$LastActualities$lastActualities$user<TRes> get user {
    final local$user = _instance.user;
    return CopyWith$Query$LastActualities$lastActualities$user(
        local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$LastActualities$lastActualities<TRes>
    implements CopyWith$Query$LastActualities$lastActualities<TRes> {
  _CopyWithStubImpl$Query$LastActualities$lastActualities(this._res);

  TRes _res;

  call({
    String? id,
    Query$LastActualities$lastActualities$user? user,
    String? picture,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$LastActualities$lastActualities$user<TRes> get user =>
      CopyWith$Query$LastActualities$lastActualities$user.stub(_res);
}

class Query$LastActualities$lastActualities$user {
  Query$LastActualities$lastActualities$user({
    required this.id,
    required this.name,
    required this.badge,
    this.$__typename = 'User',
  });

  factory Query$LastActualities$lastActualities$user.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$badge = json['badge'];
    final l$$__typename = json['__typename'];
    return Query$LastActualities$lastActualities$user(
      id: (l$id as String),
      name: (l$name as String),
      badge: fromJson$Enum$UserBadge((l$badge as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final Enum$UserBadge badge;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$badge = badge;
    _resultData['badge'] = toJson$Enum$UserBadge(l$badge);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$badge = badge;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$badge,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$LastActualities$lastActualities$user ||
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

extension UtilityExtension$Query$LastActualities$lastActualities$user
    on Query$LastActualities$lastActualities$user {
  CopyWith$Query$LastActualities$lastActualities$user<
          Query$LastActualities$lastActualities$user>
      get copyWith => CopyWith$Query$LastActualities$lastActualities$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$LastActualities$lastActualities$user<TRes> {
  factory CopyWith$Query$LastActualities$lastActualities$user(
    Query$LastActualities$lastActualities$user instance,
    TRes Function(Query$LastActualities$lastActualities$user) then,
  ) = _CopyWithImpl$Query$LastActualities$lastActualities$user;

  factory CopyWith$Query$LastActualities$lastActualities$user.stub(TRes res) =
      _CopyWithStubImpl$Query$LastActualities$lastActualities$user;

  TRes call({
    String? id,
    String? name,
    Enum$UserBadge? badge,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$LastActualities$lastActualities$user<TRes>
    implements CopyWith$Query$LastActualities$lastActualities$user<TRes> {
  _CopyWithImpl$Query$LastActualities$lastActualities$user(
    this._instance,
    this._then,
  );

  final Query$LastActualities$lastActualities$user _instance;

  final TRes Function(Query$LastActualities$lastActualities$user) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? badge = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$LastActualities$lastActualities$user(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        badge: badge == _undefined || badge == null
            ? _instance.badge
            : (badge as Enum$UserBadge),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$LastActualities$lastActualities$user<TRes>
    implements CopyWith$Query$LastActualities$lastActualities$user<TRes> {
  _CopyWithStubImpl$Query$LastActualities$lastActualities$user(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    Enum$UserBadge? badge,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$userActualities {
  factory Variables$Query$userActualities({String? userId}) =>
      Variables$Query$userActualities._({
        if (userId != null) r'userId': userId,
      });

  Variables$Query$userActualities._(this._$data);

  factory Variables$Query$userActualities.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('userId')) {
      final l$userId = data['userId'];
      result$data['userId'] = (l$userId as String?);
    }
    return Variables$Query$userActualities._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get userId => (_$data['userId'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('userId')) {
      final l$userId = userId;
      result$data['userId'] = l$userId;
    }
    return result$data;
  }

  CopyWith$Variables$Query$userActualities<Variables$Query$userActualities>
      get copyWith => CopyWith$Variables$Query$userActualities(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$userActualities ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (_$data.containsKey('userId') != other._$data.containsKey('userId')) {
      return false;
    }
    if (l$userId != lOther$userId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$userId = userId;
    return Object.hashAll([_$data.containsKey('userId') ? l$userId : const {}]);
  }
}

abstract class CopyWith$Variables$Query$userActualities<TRes> {
  factory CopyWith$Variables$Query$userActualities(
    Variables$Query$userActualities instance,
    TRes Function(Variables$Query$userActualities) then,
  ) = _CopyWithImpl$Variables$Query$userActualities;

  factory CopyWith$Variables$Query$userActualities.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$userActualities;

  TRes call({String? userId});
}

class _CopyWithImpl$Variables$Query$userActualities<TRes>
    implements CopyWith$Variables$Query$userActualities<TRes> {
  _CopyWithImpl$Variables$Query$userActualities(
    this._instance,
    this._then,
  );

  final Variables$Query$userActualities _instance;

  final TRes Function(Variables$Query$userActualities) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? userId = _undefined}) =>
      _then(Variables$Query$userActualities._({
        ..._instance._$data,
        if (userId != _undefined) 'userId': (userId as String?),
      }));
}

class _CopyWithStubImpl$Variables$Query$userActualities<TRes>
    implements CopyWith$Variables$Query$userActualities<TRes> {
  _CopyWithStubImpl$Variables$Query$userActualities(this._res);

  TRes _res;

  call({String? userId}) => _res;
}

class Query$userActualities {
  Query$userActualities({
    required this.userActualities,
    this.$__typename = 'Query',
  });

  factory Query$userActualities.fromJson(Map<String, dynamic> json) {
    final l$userActualities = json['userActualities'];
    final l$$__typename = json['__typename'];
    return Query$userActualities(
      userActualities: (l$userActualities as List<dynamic>)
          .map((e) => Query$userActualities$userActualities.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$userActualities$userActualities> userActualities;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userActualities = userActualities;
    _resultData['userActualities'] =
        l$userActualities.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userActualities = userActualities;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$userActualities.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$userActualities || runtimeType != other.runtimeType) {
      return false;
    }
    final l$userActualities = userActualities;
    final lOther$userActualities = other.userActualities;
    if (l$userActualities.length != lOther$userActualities.length) {
      return false;
    }
    for (int i = 0; i < l$userActualities.length; i++) {
      final l$userActualities$entry = l$userActualities[i];
      final lOther$userActualities$entry = lOther$userActualities[i];
      if (l$userActualities$entry != lOther$userActualities$entry) {
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

extension UtilityExtension$Query$userActualities on Query$userActualities {
  CopyWith$Query$userActualities<Query$userActualities> get copyWith =>
      CopyWith$Query$userActualities(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$userActualities<TRes> {
  factory CopyWith$Query$userActualities(
    Query$userActualities instance,
    TRes Function(Query$userActualities) then,
  ) = _CopyWithImpl$Query$userActualities;

  factory CopyWith$Query$userActualities.stub(TRes res) =
      _CopyWithStubImpl$Query$userActualities;

  TRes call({
    List<Query$userActualities$userActualities>? userActualities,
    String? $__typename,
  });
  TRes userActualities(
      Iterable<Query$userActualities$userActualities> Function(
              Iterable<
                  CopyWith$Query$userActualities$userActualities<
                      Query$userActualities$userActualities>>)
          _fn);
}

class _CopyWithImpl$Query$userActualities<TRes>
    implements CopyWith$Query$userActualities<TRes> {
  _CopyWithImpl$Query$userActualities(
    this._instance,
    this._then,
  );

  final Query$userActualities _instance;

  final TRes Function(Query$userActualities) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userActualities = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$userActualities(
        userActualities: userActualities == _undefined ||
                userActualities == null
            ? _instance.userActualities
            : (userActualities as List<Query$userActualities$userActualities>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes userActualities(
          Iterable<Query$userActualities$userActualities> Function(
                  Iterable<
                      CopyWith$Query$userActualities$userActualities<
                          Query$userActualities$userActualities>>)
              _fn) =>
      call(
          userActualities: _fn(_instance.userActualities
              .map((e) => CopyWith$Query$userActualities$userActualities(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$userActualities<TRes>
    implements CopyWith$Query$userActualities<TRes> {
  _CopyWithStubImpl$Query$userActualities(this._res);

  TRes _res;

  call({
    List<Query$userActualities$userActualities>? userActualities,
    String? $__typename,
  }) =>
      _res;

  userActualities(_fn) => _res;
}

const documentNodeQueryuserActualities = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'userActualities'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'userId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'userActualities'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'userId'),
            value: VariableNode(name: NameNode(value: 'userId')),
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
                name: NameNode(value: 'picture'),
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
            name: NameNode(value: 'picture'),
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
Query$userActualities _parserFn$Query$userActualities(
        Map<String, dynamic> data) =>
    Query$userActualities.fromJson(data);
typedef OnQueryComplete$Query$userActualities = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$userActualities?,
);

class Options$Query$userActualities
    extends graphql.QueryOptions<Query$userActualities> {
  Options$Query$userActualities({
    String? operationName,
    Variables$Query$userActualities? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$userActualities? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$userActualities? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$userActualities(data),
                  ),
          onError: onError,
          document: documentNodeQueryuserActualities,
          parserFn: _parserFn$Query$userActualities,
        );

  final OnQueryComplete$Query$userActualities? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$userActualities
    extends graphql.WatchQueryOptions<Query$userActualities> {
  WatchOptions$Query$userActualities({
    String? operationName,
    Variables$Query$userActualities? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$userActualities? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryuserActualities,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$userActualities,
        );
}

class FetchMoreOptions$Query$userActualities extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$userActualities({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$userActualities? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryuserActualities,
        );
}

extension ClientExtension$Query$userActualities on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$userActualities>> query$userActualities(
          [Options$Query$userActualities? options]) async =>
      await this.query(options ?? Options$Query$userActualities());

  graphql.ObservableQuery<Query$userActualities> watchQuery$userActualities(
          [WatchOptions$Query$userActualities? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$userActualities());

  void writeQuery$userActualities({
    required Query$userActualities data,
    Variables$Query$userActualities? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryuserActualities),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );

  Query$userActualities? readQuery$userActualities({
    Variables$Query$userActualities? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryuserActualities),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$userActualities.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$userActualities> useQuery$userActualities(
        [Options$Query$userActualities? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$userActualities());
graphql.ObservableQuery<Query$userActualities> useWatchQuery$userActualities(
        [WatchOptions$Query$userActualities? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$userActualities());

class Query$userActualities$Widget
    extends graphql_flutter.Query<Query$userActualities> {
  Query$userActualities$Widget({
    widgets.Key? key,
    Options$Query$userActualities? options,
    required graphql_flutter.QueryBuilder<Query$userActualities> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$userActualities(),
          builder: builder,
        );
}

class Query$userActualities$userActualities {
  Query$userActualities$userActualities({
    required this.id,
    required this.user,
    required this.picture,
    required this.createdAt,
    this.$__typename = 'Actuality',
  });

  factory Query$userActualities$userActualities.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$user = json['user'];
    final l$picture = json['picture'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Query$userActualities$userActualities(
      id: (l$id as String),
      user: Query$userActualities$userActualities$user.fromJson(
          (l$user as Map<String, dynamic>)),
      picture: (l$picture as String),
      createdAt: DateTime.parse((l$createdAt as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Query$userActualities$userActualities$user user;

  final String picture;

  final DateTime createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$user = user;
    _resultData['user'] = l$user.toJson();
    final l$picture = picture;
    _resultData['picture'] = l$picture;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$user = user;
    final l$picture = picture;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$user,
      l$picture,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$userActualities$userActualities ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$picture = picture;
    final lOther$picture = other.picture;
    if (l$picture != lOther$picture) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
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

extension UtilityExtension$Query$userActualities$userActualities
    on Query$userActualities$userActualities {
  CopyWith$Query$userActualities$userActualities<
          Query$userActualities$userActualities>
      get copyWith => CopyWith$Query$userActualities$userActualities(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$userActualities$userActualities<TRes> {
  factory CopyWith$Query$userActualities$userActualities(
    Query$userActualities$userActualities instance,
    TRes Function(Query$userActualities$userActualities) then,
  ) = _CopyWithImpl$Query$userActualities$userActualities;

  factory CopyWith$Query$userActualities$userActualities.stub(TRes res) =
      _CopyWithStubImpl$Query$userActualities$userActualities;

  TRes call({
    String? id,
    Query$userActualities$userActualities$user? user,
    String? picture,
    DateTime? createdAt,
    String? $__typename,
  });
  CopyWith$Query$userActualities$userActualities$user<TRes> get user;
}

class _CopyWithImpl$Query$userActualities$userActualities<TRes>
    implements CopyWith$Query$userActualities$userActualities<TRes> {
  _CopyWithImpl$Query$userActualities$userActualities(
    this._instance,
    this._then,
  );

  final Query$userActualities$userActualities _instance;

  final TRes Function(Query$userActualities$userActualities) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? user = _undefined,
    Object? picture = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$userActualities$userActualities(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        user: user == _undefined || user == null
            ? _instance.user
            : (user as Query$userActualities$userActualities$user),
        picture: picture == _undefined || picture == null
            ? _instance.picture
            : (picture as String),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$userActualities$userActualities$user<TRes> get user {
    final local$user = _instance.user;
    return CopyWith$Query$userActualities$userActualities$user(
        local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$userActualities$userActualities<TRes>
    implements CopyWith$Query$userActualities$userActualities<TRes> {
  _CopyWithStubImpl$Query$userActualities$userActualities(this._res);

  TRes _res;

  call({
    String? id,
    Query$userActualities$userActualities$user? user,
    String? picture,
    DateTime? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$userActualities$userActualities$user<TRes> get user =>
      CopyWith$Query$userActualities$userActualities$user.stub(_res);
}

class Query$userActualities$userActualities$user {
  Query$userActualities$userActualities$user({
    required this.id,
    required this.name,
    this.picture,
    required this.badge,
    this.$__typename = 'User',
  });

  factory Query$userActualities$userActualities$user.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$picture = json['picture'];
    final l$badge = json['badge'];
    final l$$__typename = json['__typename'];
    return Query$userActualities$userActualities$user(
      id: (l$id as String),
      name: (l$name as String),
      picture: (l$picture as String?),
      badge: fromJson$Enum$UserBadge((l$badge as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String? picture;

  final Enum$UserBadge badge;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$picture = picture;
    _resultData['picture'] = l$picture;
    final l$badge = badge;
    _resultData['badge'] = toJson$Enum$UserBadge(l$badge);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$picture = picture;
    final l$badge = badge;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$picture,
      l$badge,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$userActualities$userActualities$user ||
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
    final l$picture = picture;
    final lOther$picture = other.picture;
    if (l$picture != lOther$picture) {
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

extension UtilityExtension$Query$userActualities$userActualities$user
    on Query$userActualities$userActualities$user {
  CopyWith$Query$userActualities$userActualities$user<
          Query$userActualities$userActualities$user>
      get copyWith => CopyWith$Query$userActualities$userActualities$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$userActualities$userActualities$user<TRes> {
  factory CopyWith$Query$userActualities$userActualities$user(
    Query$userActualities$userActualities$user instance,
    TRes Function(Query$userActualities$userActualities$user) then,
  ) = _CopyWithImpl$Query$userActualities$userActualities$user;

  factory CopyWith$Query$userActualities$userActualities$user.stub(TRes res) =
      _CopyWithStubImpl$Query$userActualities$userActualities$user;

  TRes call({
    String? id,
    String? name,
    String? picture,
    Enum$UserBadge? badge,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$userActualities$userActualities$user<TRes>
    implements CopyWith$Query$userActualities$userActualities$user<TRes> {
  _CopyWithImpl$Query$userActualities$userActualities$user(
    this._instance,
    this._then,
  );

  final Query$userActualities$userActualities$user _instance;

  final TRes Function(Query$userActualities$userActualities$user) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? picture = _undefined,
    Object? badge = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$userActualities$userActualities$user(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        picture:
            picture == _undefined ? _instance.picture : (picture as String?),
        badge: badge == _undefined || badge == null
            ? _instance.badge
            : (badge as Enum$UserBadge),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$userActualities$userActualities$user<TRes>
    implements CopyWith$Query$userActualities$userActualities$user<TRes> {
  _CopyWithStubImpl$Query$userActualities$userActualities$user(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? picture,
    Enum$UserBadge? badge,
    String? $__typename,
  }) =>
      _res;
}
