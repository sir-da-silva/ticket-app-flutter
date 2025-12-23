// GENERATED FILE
// DO NOT MODIFY
import '../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$Search {
  factory Variables$Query$Search({required Input$SearchInput input}) =>
      Variables$Query$Search._({
        r'input': input,
      });

  Variables$Query$Search._(this._$data);

  factory Variables$Query$Search.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$SearchInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Query$Search._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SearchInput get input => (_$data['input'] as Input$SearchInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$Search<Variables$Query$Search> get copyWith =>
      CopyWith$Variables$Query$Search(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$Search || runtimeType != other.runtimeType) {
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

abstract class CopyWith$Variables$Query$Search<TRes> {
  factory CopyWith$Variables$Query$Search(
    Variables$Query$Search instance,
    TRes Function(Variables$Query$Search) then,
  ) = _CopyWithImpl$Variables$Query$Search;

  factory CopyWith$Variables$Query$Search.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Search;

  TRes call({Input$SearchInput? input});
}

class _CopyWithImpl$Variables$Query$Search<TRes>
    implements CopyWith$Variables$Query$Search<TRes> {
  _CopyWithImpl$Variables$Query$Search(
    this._instance,
    this._then,
  );

  final Variables$Query$Search _instance;

  final TRes Function(Variables$Query$Search) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(Variables$Query$Search._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$SearchInput),
      }));
}

class _CopyWithStubImpl$Variables$Query$Search<TRes>
    implements CopyWith$Variables$Query$Search<TRes> {
  _CopyWithStubImpl$Variables$Query$Search(this._res);

  TRes _res;

  call({Input$SearchInput? input}) => _res;
}

class Query$Search {
  Query$Search({
    required this.search,
    this.$__typename = 'Query',
  });

  factory Query$Search.fromJson(Map<String, dynamic> json) {
    final l$search = json['search'];
    final l$$__typename = json['__typename'];
    return Query$Search(
      search: Query$Search$search.fromJson((l$search as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Search$search search;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$search = search;
    _resultData['search'] = l$search.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$search = search;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$search,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Search || runtimeType != other.runtimeType) {
      return false;
    }
    final l$search = search;
    final lOther$search = other.search;
    if (l$search != lOther$search) {
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

extension UtilityExtension$Query$Search on Query$Search {
  CopyWith$Query$Search<Query$Search> get copyWith => CopyWith$Query$Search(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Search<TRes> {
  factory CopyWith$Query$Search(
    Query$Search instance,
    TRes Function(Query$Search) then,
  ) = _CopyWithImpl$Query$Search;

  factory CopyWith$Query$Search.stub(TRes res) = _CopyWithStubImpl$Query$Search;

  TRes call({
    Query$Search$search? search,
    String? $__typename,
  });
  CopyWith$Query$Search$search<TRes> get search;
}

class _CopyWithImpl$Query$Search<TRes> implements CopyWith$Query$Search<TRes> {
  _CopyWithImpl$Query$Search(
    this._instance,
    this._then,
  );

  final Query$Search _instance;

  final TRes Function(Query$Search) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? search = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Search(
        search: search == _undefined || search == null
            ? _instance.search
            : (search as Query$Search$search),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Search$search<TRes> get search {
    final local$search = _instance.search;
    return CopyWith$Query$Search$search(local$search, (e) => call(search: e));
  }
}

class _CopyWithStubImpl$Query$Search<TRes>
    implements CopyWith$Query$Search<TRes> {
  _CopyWithStubImpl$Query$Search(this._res);

  TRes _res;

  call({
    Query$Search$search? search,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Search$search<TRes> get search =>
      CopyWith$Query$Search$search.stub(_res);
}

const documentNodeQuerySearch = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Search'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'SearchInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'search'),
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
            name: NameNode(value: 'events'),
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
                name: NameNode(value: 'date'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'location'),
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
            name: NameNode(value: 'actualities'),
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
                name: NameNode(value: 'description'),
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
Query$Search _parserFn$Query$Search(Map<String, dynamic> data) =>
    Query$Search.fromJson(data);
typedef OnQueryComplete$Query$Search = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Search?,
);

class Options$Query$Search extends graphql.QueryOptions<Query$Search> {
  Options$Query$Search({
    String? operationName,
    required Variables$Query$Search variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Search? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Search? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
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
                    data == null ? null : _parserFn$Query$Search(data),
                  ),
          onError: onError,
          document: documentNodeQuerySearch,
          parserFn: _parserFn$Query$Search,
        );

  final OnQueryComplete$Query$Search? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Search
    extends graphql.WatchQueryOptions<Query$Search> {
  WatchOptions$Query$Search({
    String? operationName,
    required Variables$Query$Search variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Search? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQuerySearch,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Search,
        );
}

class FetchMoreOptions$Query$Search extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Search({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$Search variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQuerySearch,
        );
}

extension ClientExtension$Query$Search on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Search>> query$Search(
          Options$Query$Search options) async =>
      await this.query(options);

  graphql.ObservableQuery<Query$Search> watchQuery$Search(
          WatchOptions$Query$Search options) =>
      this.watchQuery(options);

  void writeQuery$Search({
    required Query$Search data,
    required Variables$Query$Search variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQuerySearch),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );

  Query$Search? readQuery$Search({
    required Variables$Query$Search variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQuerySearch),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Search.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Search> useQuery$Search(
        Options$Query$Search options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$Search> useWatchQuery$Search(
        WatchOptions$Query$Search options) =>
    graphql_flutter.useWatchQuery(options);

class Query$Search$Widget extends graphql_flutter.Query<Query$Search> {
  Query$Search$Widget({
    widgets.Key? key,
    required Options$Query$Search options,
    required graphql_flutter.QueryBuilder<Query$Search> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$Search$search {
  Query$Search$search({
    required this.events,
    required this.users,
    required this.actualities,
    this.$__typename = 'SearchResults',
  });

  factory Query$Search$search.fromJson(Map<String, dynamic> json) {
    final l$events = json['events'];
    final l$users = json['users'];
    final l$actualities = json['actualities'];
    final l$$__typename = json['__typename'];
    return Query$Search$search(
      events: (l$events as List<dynamic>)
          .map((e) =>
              Query$Search$search$events.fromJson((e as Map<String, dynamic>)))
          .toList(),
      users: (l$users as List<dynamic>)
          .map((e) =>
              Query$Search$search$users.fromJson((e as Map<String, dynamic>)))
          .toList(),
      actualities: (l$actualities as List<dynamic>)
          .map((e) => Query$Search$search$actualities.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Search$search$events> events;

  final List<Query$Search$search$users> users;

  final List<Query$Search$search$actualities> actualities;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$events = events;
    _resultData['events'] = l$events.map((e) => e.toJson()).toList();
    final l$users = users;
    _resultData['users'] = l$users.map((e) => e.toJson()).toList();
    final l$actualities = actualities;
    _resultData['actualities'] = l$actualities.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$events = events;
    final l$users = users;
    final l$actualities = actualities;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$events.map((v) => v)),
      Object.hashAll(l$users.map((v) => v)),
      Object.hashAll(l$actualities.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Search$search || runtimeType != other.runtimeType) {
      return false;
    }
    final l$events = events;
    final lOther$events = other.events;
    if (l$events.length != lOther$events.length) {
      return false;
    }
    for (int i = 0; i < l$events.length; i++) {
      final l$events$entry = l$events[i];
      final lOther$events$entry = lOther$events[i];
      if (l$events$entry != lOther$events$entry) {
        return false;
      }
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
    final l$actualities = actualities;
    final lOther$actualities = other.actualities;
    if (l$actualities.length != lOther$actualities.length) {
      return false;
    }
    for (int i = 0; i < l$actualities.length; i++) {
      final l$actualities$entry = l$actualities[i];
      final lOther$actualities$entry = lOther$actualities[i];
      if (l$actualities$entry != lOther$actualities$entry) {
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

extension UtilityExtension$Query$Search$search on Query$Search$search {
  CopyWith$Query$Search$search<Query$Search$search> get copyWith =>
      CopyWith$Query$Search$search(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Search$search<TRes> {
  factory CopyWith$Query$Search$search(
    Query$Search$search instance,
    TRes Function(Query$Search$search) then,
  ) = _CopyWithImpl$Query$Search$search;

  factory CopyWith$Query$Search$search.stub(TRes res) =
      _CopyWithStubImpl$Query$Search$search;

  TRes call({
    List<Query$Search$search$events>? events,
    List<Query$Search$search$users>? users,
    List<Query$Search$search$actualities>? actualities,
    String? $__typename,
  });
  TRes events(
      Iterable<Query$Search$search$events> Function(
              Iterable<
                  CopyWith$Query$Search$search$events<
                      Query$Search$search$events>>)
          _fn);
  TRes users(
      Iterable<Query$Search$search$users> Function(
              Iterable<
                  CopyWith$Query$Search$search$users<
                      Query$Search$search$users>>)
          _fn);
  TRes actualities(
      Iterable<Query$Search$search$actualities> Function(
              Iterable<
                  CopyWith$Query$Search$search$actualities<
                      Query$Search$search$actualities>>)
          _fn);
}

class _CopyWithImpl$Query$Search$search<TRes>
    implements CopyWith$Query$Search$search<TRes> {
  _CopyWithImpl$Query$Search$search(
    this._instance,
    this._then,
  );

  final Query$Search$search _instance;

  final TRes Function(Query$Search$search) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? events = _undefined,
    Object? users = _undefined,
    Object? actualities = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Search$search(
        events: events == _undefined || events == null
            ? _instance.events
            : (events as List<Query$Search$search$events>),
        users: users == _undefined || users == null
            ? _instance.users
            : (users as List<Query$Search$search$users>),
        actualities: actualities == _undefined || actualities == null
            ? _instance.actualities
            : (actualities as List<Query$Search$search$actualities>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes events(
          Iterable<Query$Search$search$events> Function(
                  Iterable<
                      CopyWith$Query$Search$search$events<
                          Query$Search$search$events>>)
              _fn) =>
      call(
          events: _fn(
              _instance.events.map((e) => CopyWith$Query$Search$search$events(
                    e,
                    (i) => i,
                  ))).toList());

  TRes users(
          Iterable<Query$Search$search$users> Function(
                  Iterable<
                      CopyWith$Query$Search$search$users<
                          Query$Search$search$users>>)
              _fn) =>
      call(
          users:
              _fn(_instance.users.map((e) => CopyWith$Query$Search$search$users(
                    e,
                    (i) => i,
                  ))).toList());

  TRes actualities(
          Iterable<Query$Search$search$actualities> Function(
                  Iterable<
                      CopyWith$Query$Search$search$actualities<
                          Query$Search$search$actualities>>)
              _fn) =>
      call(
          actualities: _fn(_instance.actualities
              .map((e) => CopyWith$Query$Search$search$actualities(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$Search$search<TRes>
    implements CopyWith$Query$Search$search<TRes> {
  _CopyWithStubImpl$Query$Search$search(this._res);

  TRes _res;

  call({
    List<Query$Search$search$events>? events,
    List<Query$Search$search$users>? users,
    List<Query$Search$search$actualities>? actualities,
    String? $__typename,
  }) =>
      _res;

  events(_fn) => _res;

  users(_fn) => _res;

  actualities(_fn) => _res;
}

class Query$Search$search$events {
  Query$Search$search$events({
    required this.id,
    required this.picture,
    required this.date,
    required this.location,
    this.$__typename = 'Event',
  });

  factory Query$Search$search$events.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$picture = json['picture'];
    final l$date = json['date'];
    final l$location = json['location'];
    final l$$__typename = json['__typename'];
    return Query$Search$search$events(
      id: (l$id as String),
      picture: (l$picture as String),
      date: DateTime.parse((l$date as String)),
      location: (l$location as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String picture;

  final DateTime date;

  final String location;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$picture = picture;
    _resultData['picture'] = l$picture;
    final l$date = date;
    _resultData['date'] = l$date.toIso8601String();
    final l$location = location;
    _resultData['location'] = l$location;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$picture = picture;
    final l$date = date;
    final l$location = location;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$picture,
      l$date,
      l$location,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Search$search$events ||
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
    final l$date = date;
    final lOther$date = other.date;
    if (l$date != lOther$date) {
      return false;
    }
    final l$location = location;
    final lOther$location = other.location;
    if (l$location != lOther$location) {
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

extension UtilityExtension$Query$Search$search$events
    on Query$Search$search$events {
  CopyWith$Query$Search$search$events<Query$Search$search$events>
      get copyWith => CopyWith$Query$Search$search$events(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Search$search$events<TRes> {
  factory CopyWith$Query$Search$search$events(
    Query$Search$search$events instance,
    TRes Function(Query$Search$search$events) then,
  ) = _CopyWithImpl$Query$Search$search$events;

  factory CopyWith$Query$Search$search$events.stub(TRes res) =
      _CopyWithStubImpl$Query$Search$search$events;

  TRes call({
    String? id,
    String? picture,
    DateTime? date,
    String? location,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Search$search$events<TRes>
    implements CopyWith$Query$Search$search$events<TRes> {
  _CopyWithImpl$Query$Search$search$events(
    this._instance,
    this._then,
  );

  final Query$Search$search$events _instance;

  final TRes Function(Query$Search$search$events) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? picture = _undefined,
    Object? date = _undefined,
    Object? location = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Search$search$events(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        picture: picture == _undefined || picture == null
            ? _instance.picture
            : (picture as String),
        date: date == _undefined || date == null
            ? _instance.date
            : (date as DateTime),
        location: location == _undefined || location == null
            ? _instance.location
            : (location as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Search$search$events<TRes>
    implements CopyWith$Query$Search$search$events<TRes> {
  _CopyWithStubImpl$Query$Search$search$events(this._res);

  TRes _res;

  call({
    String? id,
    String? picture,
    DateTime? date,
    String? location,
    String? $__typename,
  }) =>
      _res;
}

class Query$Search$search$users {
  Query$Search$search$users({
    required this.id,
    required this.name,
    this.picture,
    required this.badge,
    this.$__typename = 'User',
  });

  factory Query$Search$search$users.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$picture = json['picture'];
    final l$badge = json['badge'];
    final l$$__typename = json['__typename'];
    return Query$Search$search$users(
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
    if (other is! Query$Search$search$users ||
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

extension UtilityExtension$Query$Search$search$users
    on Query$Search$search$users {
  CopyWith$Query$Search$search$users<Query$Search$search$users> get copyWith =>
      CopyWith$Query$Search$search$users(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Search$search$users<TRes> {
  factory CopyWith$Query$Search$search$users(
    Query$Search$search$users instance,
    TRes Function(Query$Search$search$users) then,
  ) = _CopyWithImpl$Query$Search$search$users;

  factory CopyWith$Query$Search$search$users.stub(TRes res) =
      _CopyWithStubImpl$Query$Search$search$users;

  TRes call({
    String? id,
    String? name,
    String? picture,
    Enum$UserBadge? badge,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Search$search$users<TRes>
    implements CopyWith$Query$Search$search$users<TRes> {
  _CopyWithImpl$Query$Search$search$users(
    this._instance,
    this._then,
  );

  final Query$Search$search$users _instance;

  final TRes Function(Query$Search$search$users) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? picture = _undefined,
    Object? badge = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Search$search$users(
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

class _CopyWithStubImpl$Query$Search$search$users<TRes>
    implements CopyWith$Query$Search$search$users<TRes> {
  _CopyWithStubImpl$Query$Search$search$users(this._res);

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

class Query$Search$search$actualities {
  Query$Search$search$actualities({
    required this.id,
    required this.picture,
    this.description,
    required this.user,
    this.$__typename = 'Actuality',
  });

  factory Query$Search$search$actualities.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$picture = json['picture'];
    final l$description = json['description'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Query$Search$search$actualities(
      id: (l$id as String),
      picture: (l$picture as String),
      description: (l$description as String?),
      user: Query$Search$search$actualities$user.fromJson(
          (l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String picture;

  final String? description;

  final Query$Search$search$actualities$user user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$picture = picture;
    _resultData['picture'] = l$picture;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$user = user;
    _resultData['user'] = l$user.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$picture = picture;
    final l$description = description;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$picture,
      l$description,
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Search$search$actualities ||
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
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
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

extension UtilityExtension$Query$Search$search$actualities
    on Query$Search$search$actualities {
  CopyWith$Query$Search$search$actualities<Query$Search$search$actualities>
      get copyWith => CopyWith$Query$Search$search$actualities(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Search$search$actualities<TRes> {
  factory CopyWith$Query$Search$search$actualities(
    Query$Search$search$actualities instance,
    TRes Function(Query$Search$search$actualities) then,
  ) = _CopyWithImpl$Query$Search$search$actualities;

  factory CopyWith$Query$Search$search$actualities.stub(TRes res) =
      _CopyWithStubImpl$Query$Search$search$actualities;

  TRes call({
    String? id,
    String? picture,
    String? description,
    Query$Search$search$actualities$user? user,
    String? $__typename,
  });
  CopyWith$Query$Search$search$actualities$user<TRes> get user;
}

class _CopyWithImpl$Query$Search$search$actualities<TRes>
    implements CopyWith$Query$Search$search$actualities<TRes> {
  _CopyWithImpl$Query$Search$search$actualities(
    this._instance,
    this._then,
  );

  final Query$Search$search$actualities _instance;

  final TRes Function(Query$Search$search$actualities) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? picture = _undefined,
    Object? description = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Search$search$actualities(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        picture: picture == _undefined || picture == null
            ? _instance.picture
            : (picture as String),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        user: user == _undefined || user == null
            ? _instance.user
            : (user as Query$Search$search$actualities$user),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Search$search$actualities$user<TRes> get user {
    final local$user = _instance.user;
    return CopyWith$Query$Search$search$actualities$user(
        local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$Search$search$actualities<TRes>
    implements CopyWith$Query$Search$search$actualities<TRes> {
  _CopyWithStubImpl$Query$Search$search$actualities(this._res);

  TRes _res;

  call({
    String? id,
    String? picture,
    String? description,
    Query$Search$search$actualities$user? user,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Search$search$actualities$user<TRes> get user =>
      CopyWith$Query$Search$search$actualities$user.stub(_res);
}

class Query$Search$search$actualities$user {
  Query$Search$search$actualities$user({
    required this.id,
    required this.name,
    this.picture,
    this.$__typename = 'User',
  });

  factory Query$Search$search$actualities$user.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$picture = json['picture'];
    final l$$__typename = json['__typename'];
    return Query$Search$search$actualities$user(
      id: (l$id as String),
      name: (l$name as String),
      picture: (l$picture as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String? picture;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$picture = picture;
    _resultData['picture'] = l$picture;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$picture = picture;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$picture,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Search$search$actualities$user ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Search$search$actualities$user
    on Query$Search$search$actualities$user {
  CopyWith$Query$Search$search$actualities$user<
          Query$Search$search$actualities$user>
      get copyWith => CopyWith$Query$Search$search$actualities$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Search$search$actualities$user<TRes> {
  factory CopyWith$Query$Search$search$actualities$user(
    Query$Search$search$actualities$user instance,
    TRes Function(Query$Search$search$actualities$user) then,
  ) = _CopyWithImpl$Query$Search$search$actualities$user;

  factory CopyWith$Query$Search$search$actualities$user.stub(TRes res) =
      _CopyWithStubImpl$Query$Search$search$actualities$user;

  TRes call({
    String? id,
    String? name,
    String? picture,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Search$search$actualities$user<TRes>
    implements CopyWith$Query$Search$search$actualities$user<TRes> {
  _CopyWithImpl$Query$Search$search$actualities$user(
    this._instance,
    this._then,
  );

  final Query$Search$search$actualities$user _instance;

  final TRes Function(Query$Search$search$actualities$user) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? picture = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Search$search$actualities$user(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        picture:
            picture == _undefined ? _instance.picture : (picture as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Search$search$actualities$user<TRes>
    implements CopyWith$Query$Search$search$actualities$user<TRes> {
  _CopyWithStubImpl$Query$Search$search$actualities$user(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? picture,
    String? $__typename,
  }) =>
      _res;
}
