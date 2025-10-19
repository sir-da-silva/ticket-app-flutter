// GENERATED FILE
// DO NOT MODIFY
import '../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Query$GetEvents {
  Query$GetEvents({
    required this.events,
    this.$__typename = 'Query',
  });

  factory Query$GetEvents.fromJson(Map<String, dynamic> json) {
    final l$events = json['events'];
    final l$$__typename = json['__typename'];
    return Query$GetEvents(
      events: (l$events as List<dynamic>)
          .map((e) =>
              Query$GetEvents$events.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetEvents$events> events;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$events = events;
    _resultData['events'] = l$events.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$events = events;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$events.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetEvents || runtimeType != other.runtimeType) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetEvents on Query$GetEvents {
  CopyWith$Query$GetEvents<Query$GetEvents> get copyWith =>
      CopyWith$Query$GetEvents(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetEvents<TRes> {
  factory CopyWith$Query$GetEvents(
    Query$GetEvents instance,
    TRes Function(Query$GetEvents) then,
  ) = _CopyWithImpl$Query$GetEvents;

  factory CopyWith$Query$GetEvents.stub(TRes res) =
      _CopyWithStubImpl$Query$GetEvents;

  TRes call({
    List<Query$GetEvents$events>? events,
    String? $__typename,
  });
  TRes events(
      Iterable<Query$GetEvents$events> Function(
              Iterable<CopyWith$Query$GetEvents$events<Query$GetEvents$events>>)
          _fn);
}

class _CopyWithImpl$Query$GetEvents<TRes>
    implements CopyWith$Query$GetEvents<TRes> {
  _CopyWithImpl$Query$GetEvents(
    this._instance,
    this._then,
  );

  final Query$GetEvents _instance;

  final TRes Function(Query$GetEvents) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? events = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetEvents(
        events: events == _undefined || events == null
            ? _instance.events
            : (events as List<Query$GetEvents$events>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes events(
          Iterable<Query$GetEvents$events> Function(
                  Iterable<
                      CopyWith$Query$GetEvents$events<Query$GetEvents$events>>)
              _fn) =>
      call(
          events:
              _fn(_instance.events.map((e) => CopyWith$Query$GetEvents$events(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetEvents<TRes>
    implements CopyWith$Query$GetEvents<TRes> {
  _CopyWithStubImpl$Query$GetEvents(this._res);

  TRes _res;

  call({
    List<Query$GetEvents$events>? events,
    String? $__typename,
  }) =>
      _res;

  events(_fn) => _res;
}

const documentNodeQueryGetEvents = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetEvents'),
    variableDefinitions: [],
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
            name: NameNode(value: 'title'),
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
            name: NameNode(value: 'picture'),
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
            name: NameNode(value: 'category'),
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
            name: NameNode(value: 'createdBy'),
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
Query$GetEvents _parserFn$Query$GetEvents(Map<String, dynamic> data) =>
    Query$GetEvents.fromJson(data);
typedef OnQueryComplete$Query$GetEvents = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetEvents?,
);

class Options$Query$GetEvents extends graphql.QueryOptions<Query$GetEvents> {
  Options$Query$GetEvents({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetEvents? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetEvents? onComplete,
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
                    data == null ? null : _parserFn$Query$GetEvents(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetEvents,
          parserFn: _parserFn$Query$GetEvents,
        );

  final OnQueryComplete$Query$GetEvents? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetEvents
    extends graphql.WatchQueryOptions<Query$GetEvents> {
  WatchOptions$Query$GetEvents({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetEvents? typedOptimisticResult,
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
          document: documentNodeQueryGetEvents,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetEvents,
        );
}

class FetchMoreOptions$Query$GetEvents extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetEvents({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryGetEvents,
        );
}

extension ClientExtension$Query$GetEvents on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetEvents>> query$GetEvents(
          [Options$Query$GetEvents? options]) async =>
      await this.query(options ?? Options$Query$GetEvents());

  graphql.ObservableQuery<Query$GetEvents> watchQuery$GetEvents(
          [WatchOptions$Query$GetEvents? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetEvents());

  void writeQuery$GetEvents({
    required Query$GetEvents data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQueryGetEvents)),
        data: data.toJson(),
        broadcast: broadcast,
      );

  Query$GetEvents? readQuery$GetEvents({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryGetEvents)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetEvents.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetEvents> useQuery$GetEvents(
        [Options$Query$GetEvents? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$GetEvents());
graphql.ObservableQuery<Query$GetEvents> useWatchQuery$GetEvents(
        [WatchOptions$Query$GetEvents? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$GetEvents());

class Query$GetEvents$Widget extends graphql_flutter.Query<Query$GetEvents> {
  Query$GetEvents$Widget({
    widgets.Key? key,
    Options$Query$GetEvents? options,
    required graphql_flutter.QueryBuilder<Query$GetEvents> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetEvents(),
          builder: builder,
        );
}

class Query$GetEvents$events {
  Query$GetEvents$events({
    required this.id,
    required this.title,
    this.description,
    required this.picture,
    required this.location,
    required this.category,
    required this.date,
    this.createdBy,
    this.$__typename = 'Event',
  });

  factory Query$GetEvents$events.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$description = json['description'];
    final l$picture = json['picture'];
    final l$location = json['location'];
    final l$category = json['category'];
    final l$date = json['date'];
    final l$createdBy = json['createdBy'];
    final l$$__typename = json['__typename'];
    return Query$GetEvents$events(
      id: (l$id as String),
      title: (l$title as String),
      description: (l$description as String?),
      picture: (l$picture as String),
      location: (l$location as String),
      category: (l$category as String),
      date: DateTime.parse((l$date as String)),
      createdBy: l$createdBy == null
          ? null
          : Query$GetEvents$events$createdBy.fromJson(
              (l$createdBy as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String title;

  final String? description;

  final String picture;

  final String location;

  final String category;

  final DateTime date;

  final Query$GetEvents$events$createdBy? createdBy;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$picture = picture;
    _resultData['picture'] = l$picture;
    final l$location = location;
    _resultData['location'] = l$location;
    final l$category = category;
    _resultData['category'] = l$category;
    final l$date = date;
    _resultData['date'] = l$date.toIso8601String();
    final l$createdBy = createdBy;
    _resultData['createdBy'] = l$createdBy?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$description = description;
    final l$picture = picture;
    final l$location = location;
    final l$category = category;
    final l$date = date;
    final l$createdBy = createdBy;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$description,
      l$picture,
      l$location,
      l$category,
      l$date,
      l$createdBy,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetEvents$events || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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
    final l$picture = picture;
    final lOther$picture = other.picture;
    if (l$picture != lOther$picture) {
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
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (l$createdBy != lOther$createdBy) {
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

extension UtilityExtension$Query$GetEvents$events on Query$GetEvents$events {
  CopyWith$Query$GetEvents$events<Query$GetEvents$events> get copyWith =>
      CopyWith$Query$GetEvents$events(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetEvents$events<TRes> {
  factory CopyWith$Query$GetEvents$events(
    Query$GetEvents$events instance,
    TRes Function(Query$GetEvents$events) then,
  ) = _CopyWithImpl$Query$GetEvents$events;

  factory CopyWith$Query$GetEvents$events.stub(TRes res) =
      _CopyWithStubImpl$Query$GetEvents$events;

  TRes call({
    String? id,
    String? title,
    String? description,
    String? picture,
    String? location,
    String? category,
    DateTime? date,
    Query$GetEvents$events$createdBy? createdBy,
    String? $__typename,
  });
  CopyWith$Query$GetEvents$events$createdBy<TRes> get createdBy;
}

class _CopyWithImpl$Query$GetEvents$events<TRes>
    implements CopyWith$Query$GetEvents$events<TRes> {
  _CopyWithImpl$Query$GetEvents$events(
    this._instance,
    this._then,
  );

  final Query$GetEvents$events _instance;

  final TRes Function(Query$GetEvents$events) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? description = _undefined,
    Object? picture = _undefined,
    Object? location = _undefined,
    Object? category = _undefined,
    Object? date = _undefined,
    Object? createdBy = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetEvents$events(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        picture: picture == _undefined || picture == null
            ? _instance.picture
            : (picture as String),
        location: location == _undefined || location == null
            ? _instance.location
            : (location as String),
        category: category == _undefined || category == null
            ? _instance.category
            : (category as String),
        date: date == _undefined || date == null
            ? _instance.date
            : (date as DateTime),
        createdBy: createdBy == _undefined
            ? _instance.createdBy
            : (createdBy as Query$GetEvents$events$createdBy?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetEvents$events$createdBy<TRes> get createdBy {
    final local$createdBy = _instance.createdBy;
    return local$createdBy == null
        ? CopyWith$Query$GetEvents$events$createdBy.stub(_then(_instance))
        : CopyWith$Query$GetEvents$events$createdBy(
            local$createdBy, (e) => call(createdBy: e));
  }
}

class _CopyWithStubImpl$Query$GetEvents$events<TRes>
    implements CopyWith$Query$GetEvents$events<TRes> {
  _CopyWithStubImpl$Query$GetEvents$events(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? description,
    String? picture,
    String? location,
    String? category,
    DateTime? date,
    Query$GetEvents$events$createdBy? createdBy,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetEvents$events$createdBy<TRes> get createdBy =>
      CopyWith$Query$GetEvents$events$createdBy.stub(_res);
}

class Query$GetEvents$events$createdBy {
  Query$GetEvents$events$createdBy({
    required this.id,
    required this.name,
    this.$__typename = 'User',
  });

  factory Query$GetEvents$events$createdBy.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$GetEvents$events$createdBy(
      id: (l$id as String),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetEvents$events$createdBy ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetEvents$events$createdBy
    on Query$GetEvents$events$createdBy {
  CopyWith$Query$GetEvents$events$createdBy<Query$GetEvents$events$createdBy>
      get copyWith => CopyWith$Query$GetEvents$events$createdBy(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetEvents$events$createdBy<TRes> {
  factory CopyWith$Query$GetEvents$events$createdBy(
    Query$GetEvents$events$createdBy instance,
    TRes Function(Query$GetEvents$events$createdBy) then,
  ) = _CopyWithImpl$Query$GetEvents$events$createdBy;

  factory CopyWith$Query$GetEvents$events$createdBy.stub(TRes res) =
      _CopyWithStubImpl$Query$GetEvents$events$createdBy;

  TRes call({
    String? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetEvents$events$createdBy<TRes>
    implements CopyWith$Query$GetEvents$events$createdBy<TRes> {
  _CopyWithImpl$Query$GetEvents$events$createdBy(
    this._instance,
    this._then,
  );

  final Query$GetEvents$events$createdBy _instance;

  final TRes Function(Query$GetEvents$events$createdBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetEvents$events$createdBy(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetEvents$events$createdBy<TRes>
    implements CopyWith$Query$GetEvents$events$createdBy<TRes> {
  _CopyWithStubImpl$Query$GetEvents$events$createdBy(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$GetEvent {
  factory Variables$Query$GetEvent({required String id}) =>
      Variables$Query$GetEvent._({
        r'id': id,
      });

  Variables$Query$GetEvent._(this._$data);

  factory Variables$Query$GetEvent.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$GetEvent._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$GetEvent<Variables$Query$GetEvent> get copyWith =>
      CopyWith$Variables$Query$GetEvent(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetEvent ||
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

abstract class CopyWith$Variables$Query$GetEvent<TRes> {
  factory CopyWith$Variables$Query$GetEvent(
    Variables$Query$GetEvent instance,
    TRes Function(Variables$Query$GetEvent) then,
  ) = _CopyWithImpl$Variables$Query$GetEvent;

  factory CopyWith$Variables$Query$GetEvent.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetEvent;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$GetEvent<TRes>
    implements CopyWith$Variables$Query$GetEvent<TRes> {
  _CopyWithImpl$Variables$Query$GetEvent(
    this._instance,
    this._then,
  );

  final Variables$Query$GetEvent _instance;

  final TRes Function(Variables$Query$GetEvent) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Variables$Query$GetEvent._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetEvent<TRes>
    implements CopyWith$Variables$Query$GetEvent<TRes> {
  _CopyWithStubImpl$Variables$Query$GetEvent(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$GetEvent {
  Query$GetEvent({
    this.event,
    this.$__typename = 'Query',
  });

  factory Query$GetEvent.fromJson(Map<String, dynamic> json) {
    final l$event = json['event'];
    final l$$__typename = json['__typename'];
    return Query$GetEvent(
      event: l$event == null
          ? null
          : Query$GetEvent$event.fromJson((l$event as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetEvent$event? event;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$event = event;
    _resultData['event'] = l$event?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$event = event;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$event,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetEvent || runtimeType != other.runtimeType) {
      return false;
    }
    final l$event = event;
    final lOther$event = other.event;
    if (l$event != lOther$event) {
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

extension UtilityExtension$Query$GetEvent on Query$GetEvent {
  CopyWith$Query$GetEvent<Query$GetEvent> get copyWith =>
      CopyWith$Query$GetEvent(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetEvent<TRes> {
  factory CopyWith$Query$GetEvent(
    Query$GetEvent instance,
    TRes Function(Query$GetEvent) then,
  ) = _CopyWithImpl$Query$GetEvent;

  factory CopyWith$Query$GetEvent.stub(TRes res) =
      _CopyWithStubImpl$Query$GetEvent;

  TRes call({
    Query$GetEvent$event? event,
    String? $__typename,
  });
  CopyWith$Query$GetEvent$event<TRes> get event;
}

class _CopyWithImpl$Query$GetEvent<TRes>
    implements CopyWith$Query$GetEvent<TRes> {
  _CopyWithImpl$Query$GetEvent(
    this._instance,
    this._then,
  );

  final Query$GetEvent _instance;

  final TRes Function(Query$GetEvent) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? event = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetEvent(
        event: event == _undefined
            ? _instance.event
            : (event as Query$GetEvent$event?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetEvent$event<TRes> get event {
    final local$event = _instance.event;
    return local$event == null
        ? CopyWith$Query$GetEvent$event.stub(_then(_instance))
        : CopyWith$Query$GetEvent$event(local$event, (e) => call(event: e));
  }
}

class _CopyWithStubImpl$Query$GetEvent<TRes>
    implements CopyWith$Query$GetEvent<TRes> {
  _CopyWithStubImpl$Query$GetEvent(this._res);

  TRes _res;

  call({
    Query$GetEvent$event? event,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetEvent$event<TRes> get event =>
      CopyWith$Query$GetEvent$event.stub(_res);
}

const documentNodeQueryGetEvent = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetEvent'),
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
        name: NameNode(value: 'event'),
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
            name: NameNode(value: 'title'),
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
            name: NameNode(value: 'picture'),
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
            name: NameNode(value: 'category'),
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
            name: NameNode(value: 'createdBy'),
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
Query$GetEvent _parserFn$Query$GetEvent(Map<String, dynamic> data) =>
    Query$GetEvent.fromJson(data);
typedef OnQueryComplete$Query$GetEvent = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetEvent?,
);

class Options$Query$GetEvent extends graphql.QueryOptions<Query$GetEvent> {
  Options$Query$GetEvent({
    String? operationName,
    required Variables$Query$GetEvent variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetEvent? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetEvent? onComplete,
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
                    data == null ? null : _parserFn$Query$GetEvent(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetEvent,
          parserFn: _parserFn$Query$GetEvent,
        );

  final OnQueryComplete$Query$GetEvent? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetEvent
    extends graphql.WatchQueryOptions<Query$GetEvent> {
  WatchOptions$Query$GetEvent({
    String? operationName,
    required Variables$Query$GetEvent variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetEvent? typedOptimisticResult,
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
          document: documentNodeQueryGetEvent,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetEvent,
        );
}

class FetchMoreOptions$Query$GetEvent extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetEvent({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetEvent variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetEvent,
        );
}

extension ClientExtension$Query$GetEvent on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetEvent>> query$GetEvent(
          Options$Query$GetEvent options) async =>
      await this.query(options);

  graphql.ObservableQuery<Query$GetEvent> watchQuery$GetEvent(
          WatchOptions$Query$GetEvent options) =>
      this.watchQuery(options);

  void writeQuery$GetEvent({
    required Query$GetEvent data,
    required Variables$Query$GetEvent variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryGetEvent),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );

  Query$GetEvent? readQuery$GetEvent({
    required Variables$Query$GetEvent variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryGetEvent),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetEvent.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetEvent> useQuery$GetEvent(
        Options$Query$GetEvent options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$GetEvent> useWatchQuery$GetEvent(
        WatchOptions$Query$GetEvent options) =>
    graphql_flutter.useWatchQuery(options);

class Query$GetEvent$Widget extends graphql_flutter.Query<Query$GetEvent> {
  Query$GetEvent$Widget({
    widgets.Key? key,
    required Options$Query$GetEvent options,
    required graphql_flutter.QueryBuilder<Query$GetEvent> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$GetEvent$event {
  Query$GetEvent$event({
    required this.id,
    required this.title,
    this.description,
    required this.picture,
    required this.location,
    required this.category,
    required this.date,
    this.createdBy,
    this.$__typename = 'Event',
  });

  factory Query$GetEvent$event.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$description = json['description'];
    final l$picture = json['picture'];
    final l$location = json['location'];
    final l$category = json['category'];
    final l$date = json['date'];
    final l$createdBy = json['createdBy'];
    final l$$__typename = json['__typename'];
    return Query$GetEvent$event(
      id: (l$id as String),
      title: (l$title as String),
      description: (l$description as String?),
      picture: (l$picture as String),
      location: (l$location as String),
      category: (l$category as String),
      date: DateTime.parse((l$date as String)),
      createdBy: l$createdBy == null
          ? null
          : Query$GetEvent$event$createdBy.fromJson(
              (l$createdBy as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String title;

  final String? description;

  final String picture;

  final String location;

  final String category;

  final DateTime date;

  final Query$GetEvent$event$createdBy? createdBy;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$picture = picture;
    _resultData['picture'] = l$picture;
    final l$location = location;
    _resultData['location'] = l$location;
    final l$category = category;
    _resultData['category'] = l$category;
    final l$date = date;
    _resultData['date'] = l$date.toIso8601String();
    final l$createdBy = createdBy;
    _resultData['createdBy'] = l$createdBy?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$description = description;
    final l$picture = picture;
    final l$location = location;
    final l$category = category;
    final l$date = date;
    final l$createdBy = createdBy;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$description,
      l$picture,
      l$location,
      l$category,
      l$date,
      l$createdBy,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetEvent$event || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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
    final l$picture = picture;
    final lOther$picture = other.picture;
    if (l$picture != lOther$picture) {
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
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (l$createdBy != lOther$createdBy) {
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

extension UtilityExtension$Query$GetEvent$event on Query$GetEvent$event {
  CopyWith$Query$GetEvent$event<Query$GetEvent$event> get copyWith =>
      CopyWith$Query$GetEvent$event(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetEvent$event<TRes> {
  factory CopyWith$Query$GetEvent$event(
    Query$GetEvent$event instance,
    TRes Function(Query$GetEvent$event) then,
  ) = _CopyWithImpl$Query$GetEvent$event;

  factory CopyWith$Query$GetEvent$event.stub(TRes res) =
      _CopyWithStubImpl$Query$GetEvent$event;

  TRes call({
    String? id,
    String? title,
    String? description,
    String? picture,
    String? location,
    String? category,
    DateTime? date,
    Query$GetEvent$event$createdBy? createdBy,
    String? $__typename,
  });
  CopyWith$Query$GetEvent$event$createdBy<TRes> get createdBy;
}

class _CopyWithImpl$Query$GetEvent$event<TRes>
    implements CopyWith$Query$GetEvent$event<TRes> {
  _CopyWithImpl$Query$GetEvent$event(
    this._instance,
    this._then,
  );

  final Query$GetEvent$event _instance;

  final TRes Function(Query$GetEvent$event) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? description = _undefined,
    Object? picture = _undefined,
    Object? location = _undefined,
    Object? category = _undefined,
    Object? date = _undefined,
    Object? createdBy = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetEvent$event(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        picture: picture == _undefined || picture == null
            ? _instance.picture
            : (picture as String),
        location: location == _undefined || location == null
            ? _instance.location
            : (location as String),
        category: category == _undefined || category == null
            ? _instance.category
            : (category as String),
        date: date == _undefined || date == null
            ? _instance.date
            : (date as DateTime),
        createdBy: createdBy == _undefined
            ? _instance.createdBy
            : (createdBy as Query$GetEvent$event$createdBy?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetEvent$event$createdBy<TRes> get createdBy {
    final local$createdBy = _instance.createdBy;
    return local$createdBy == null
        ? CopyWith$Query$GetEvent$event$createdBy.stub(_then(_instance))
        : CopyWith$Query$GetEvent$event$createdBy(
            local$createdBy, (e) => call(createdBy: e));
  }
}

class _CopyWithStubImpl$Query$GetEvent$event<TRes>
    implements CopyWith$Query$GetEvent$event<TRes> {
  _CopyWithStubImpl$Query$GetEvent$event(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? description,
    String? picture,
    String? location,
    String? category,
    DateTime? date,
    Query$GetEvent$event$createdBy? createdBy,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetEvent$event$createdBy<TRes> get createdBy =>
      CopyWith$Query$GetEvent$event$createdBy.stub(_res);
}

class Query$GetEvent$event$createdBy {
  Query$GetEvent$event$createdBy({
    required this.id,
    required this.name,
    this.$__typename = 'User',
  });

  factory Query$GetEvent$event$createdBy.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$GetEvent$event$createdBy(
      id: (l$id as String),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetEvent$event$createdBy ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetEvent$event$createdBy
    on Query$GetEvent$event$createdBy {
  CopyWith$Query$GetEvent$event$createdBy<Query$GetEvent$event$createdBy>
      get copyWith => CopyWith$Query$GetEvent$event$createdBy(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetEvent$event$createdBy<TRes> {
  factory CopyWith$Query$GetEvent$event$createdBy(
    Query$GetEvent$event$createdBy instance,
    TRes Function(Query$GetEvent$event$createdBy) then,
  ) = _CopyWithImpl$Query$GetEvent$event$createdBy;

  factory CopyWith$Query$GetEvent$event$createdBy.stub(TRes res) =
      _CopyWithStubImpl$Query$GetEvent$event$createdBy;

  TRes call({
    String? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetEvent$event$createdBy<TRes>
    implements CopyWith$Query$GetEvent$event$createdBy<TRes> {
  _CopyWithImpl$Query$GetEvent$event$createdBy(
    this._instance,
    this._then,
  );

  final Query$GetEvent$event$createdBy _instance;

  final TRes Function(Query$GetEvent$event$createdBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetEvent$event$createdBy(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetEvent$event$createdBy<TRes>
    implements CopyWith$Query$GetEvent$event$createdBy<TRes> {
  _CopyWithStubImpl$Query$GetEvent$event$createdBy(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetMyEvents {
  Query$GetMyEvents({
    required this.myEvents,
    this.$__typename = 'Query',
  });

  factory Query$GetMyEvents.fromJson(Map<String, dynamic> json) {
    final l$myEvents = json['myEvents'];
    final l$$__typename = json['__typename'];
    return Query$GetMyEvents(
      myEvents: (l$myEvents as List<dynamic>)
          .map((e) =>
              Query$GetMyEvents$myEvents.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetMyEvents$myEvents> myEvents;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$myEvents = myEvents;
    _resultData['myEvents'] = l$myEvents.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$myEvents = myEvents;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$myEvents.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetMyEvents || runtimeType != other.runtimeType) {
      return false;
    }
    final l$myEvents = myEvents;
    final lOther$myEvents = other.myEvents;
    if (l$myEvents.length != lOther$myEvents.length) {
      return false;
    }
    for (int i = 0; i < l$myEvents.length; i++) {
      final l$myEvents$entry = l$myEvents[i];
      final lOther$myEvents$entry = lOther$myEvents[i];
      if (l$myEvents$entry != lOther$myEvents$entry) {
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

extension UtilityExtension$Query$GetMyEvents on Query$GetMyEvents {
  CopyWith$Query$GetMyEvents<Query$GetMyEvents> get copyWith =>
      CopyWith$Query$GetMyEvents(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetMyEvents<TRes> {
  factory CopyWith$Query$GetMyEvents(
    Query$GetMyEvents instance,
    TRes Function(Query$GetMyEvents) then,
  ) = _CopyWithImpl$Query$GetMyEvents;

  factory CopyWith$Query$GetMyEvents.stub(TRes res) =
      _CopyWithStubImpl$Query$GetMyEvents;

  TRes call({
    List<Query$GetMyEvents$myEvents>? myEvents,
    String? $__typename,
  });
  TRes myEvents(
      Iterable<Query$GetMyEvents$myEvents> Function(
              Iterable<
                  CopyWith$Query$GetMyEvents$myEvents<
                      Query$GetMyEvents$myEvents>>)
          _fn);
}

class _CopyWithImpl$Query$GetMyEvents<TRes>
    implements CopyWith$Query$GetMyEvents<TRes> {
  _CopyWithImpl$Query$GetMyEvents(
    this._instance,
    this._then,
  );

  final Query$GetMyEvents _instance;

  final TRes Function(Query$GetMyEvents) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? myEvents = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetMyEvents(
        myEvents: myEvents == _undefined || myEvents == null
            ? _instance.myEvents
            : (myEvents as List<Query$GetMyEvents$myEvents>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes myEvents(
          Iterable<Query$GetMyEvents$myEvents> Function(
                  Iterable<
                      CopyWith$Query$GetMyEvents$myEvents<
                          Query$GetMyEvents$myEvents>>)
              _fn) =>
      call(
          myEvents: _fn(
              _instance.myEvents.map((e) => CopyWith$Query$GetMyEvents$myEvents(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetMyEvents<TRes>
    implements CopyWith$Query$GetMyEvents<TRes> {
  _CopyWithStubImpl$Query$GetMyEvents(this._res);

  TRes _res;

  call({
    List<Query$GetMyEvents$myEvents>? myEvents,
    String? $__typename,
  }) =>
      _res;

  myEvents(_fn) => _res;
}

const documentNodeQueryGetMyEvents = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetMyEvents'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'myEvents'),
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
            name: NameNode(value: 'title'),
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
            name: NameNode(value: 'picture'),
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
            name: NameNode(value: 'category'),
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
Query$GetMyEvents _parserFn$Query$GetMyEvents(Map<String, dynamic> data) =>
    Query$GetMyEvents.fromJson(data);
typedef OnQueryComplete$Query$GetMyEvents = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetMyEvents?,
);

class Options$Query$GetMyEvents
    extends graphql.QueryOptions<Query$GetMyEvents> {
  Options$Query$GetMyEvents({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetMyEvents? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetMyEvents? onComplete,
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
                    data == null ? null : _parserFn$Query$GetMyEvents(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetMyEvents,
          parserFn: _parserFn$Query$GetMyEvents,
        );

  final OnQueryComplete$Query$GetMyEvents? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetMyEvents
    extends graphql.WatchQueryOptions<Query$GetMyEvents> {
  WatchOptions$Query$GetMyEvents({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetMyEvents? typedOptimisticResult,
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
          document: documentNodeQueryGetMyEvents,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetMyEvents,
        );
}

class FetchMoreOptions$Query$GetMyEvents extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetMyEvents({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryGetMyEvents,
        );
}

extension ClientExtension$Query$GetMyEvents on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetMyEvents>> query$GetMyEvents(
          [Options$Query$GetMyEvents? options]) async =>
      await this.query(options ?? Options$Query$GetMyEvents());

  graphql.ObservableQuery<Query$GetMyEvents> watchQuery$GetMyEvents(
          [WatchOptions$Query$GetMyEvents? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetMyEvents());

  void writeQuery$GetMyEvents({
    required Query$GetMyEvents data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryGetMyEvents)),
        data: data.toJson(),
        broadcast: broadcast,
      );

  Query$GetMyEvents? readQuery$GetMyEvents({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryGetMyEvents)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetMyEvents.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetMyEvents> useQuery$GetMyEvents(
        [Options$Query$GetMyEvents? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$GetMyEvents());
graphql.ObservableQuery<Query$GetMyEvents> useWatchQuery$GetMyEvents(
        [WatchOptions$Query$GetMyEvents? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$GetMyEvents());

class Query$GetMyEvents$Widget
    extends graphql_flutter.Query<Query$GetMyEvents> {
  Query$GetMyEvents$Widget({
    widgets.Key? key,
    Options$Query$GetMyEvents? options,
    required graphql_flutter.QueryBuilder<Query$GetMyEvents> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetMyEvents(),
          builder: builder,
        );
}

class Query$GetMyEvents$myEvents {
  Query$GetMyEvents$myEvents({
    required this.id,
    required this.title,
    this.description,
    required this.picture,
    required this.location,
    required this.category,
    required this.date,
    this.$__typename = 'Event',
  });

  factory Query$GetMyEvents$myEvents.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$description = json['description'];
    final l$picture = json['picture'];
    final l$location = json['location'];
    final l$category = json['category'];
    final l$date = json['date'];
    final l$$__typename = json['__typename'];
    return Query$GetMyEvents$myEvents(
      id: (l$id as String),
      title: (l$title as String),
      description: (l$description as String?),
      picture: (l$picture as String),
      location: (l$location as String),
      category: (l$category as String),
      date: DateTime.parse((l$date as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String title;

  final String? description;

  final String picture;

  final String location;

  final String category;

  final DateTime date;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$picture = picture;
    _resultData['picture'] = l$picture;
    final l$location = location;
    _resultData['location'] = l$location;
    final l$category = category;
    _resultData['category'] = l$category;
    final l$date = date;
    _resultData['date'] = l$date.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$description = description;
    final l$picture = picture;
    final l$location = location;
    final l$category = category;
    final l$date = date;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$description,
      l$picture,
      l$location,
      l$category,
      l$date,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetMyEvents$myEvents ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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
    final l$picture = picture;
    final lOther$picture = other.picture;
    if (l$picture != lOther$picture) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetMyEvents$myEvents
    on Query$GetMyEvents$myEvents {
  CopyWith$Query$GetMyEvents$myEvents<Query$GetMyEvents$myEvents>
      get copyWith => CopyWith$Query$GetMyEvents$myEvents(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetMyEvents$myEvents<TRes> {
  factory CopyWith$Query$GetMyEvents$myEvents(
    Query$GetMyEvents$myEvents instance,
    TRes Function(Query$GetMyEvents$myEvents) then,
  ) = _CopyWithImpl$Query$GetMyEvents$myEvents;

  factory CopyWith$Query$GetMyEvents$myEvents.stub(TRes res) =
      _CopyWithStubImpl$Query$GetMyEvents$myEvents;

  TRes call({
    String? id,
    String? title,
    String? description,
    String? picture,
    String? location,
    String? category,
    DateTime? date,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetMyEvents$myEvents<TRes>
    implements CopyWith$Query$GetMyEvents$myEvents<TRes> {
  _CopyWithImpl$Query$GetMyEvents$myEvents(
    this._instance,
    this._then,
  );

  final Query$GetMyEvents$myEvents _instance;

  final TRes Function(Query$GetMyEvents$myEvents) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? description = _undefined,
    Object? picture = _undefined,
    Object? location = _undefined,
    Object? category = _undefined,
    Object? date = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetMyEvents$myEvents(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        picture: picture == _undefined || picture == null
            ? _instance.picture
            : (picture as String),
        location: location == _undefined || location == null
            ? _instance.location
            : (location as String),
        category: category == _undefined || category == null
            ? _instance.category
            : (category as String),
        date: date == _undefined || date == null
            ? _instance.date
            : (date as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetMyEvents$myEvents<TRes>
    implements CopyWith$Query$GetMyEvents$myEvents<TRes> {
  _CopyWithStubImpl$Query$GetMyEvents$myEvents(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? description,
    String? picture,
    String? location,
    String? category,
    DateTime? date,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$CreateEvent {
  factory Variables$Mutation$CreateEvent(
          {required Input$CreateEventInput input}) =>
      Variables$Mutation$CreateEvent._({
        r'input': input,
      });

  Variables$Mutation$CreateEvent._(this._$data);

  factory Variables$Mutation$CreateEvent.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$CreateEventInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$CreateEvent._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreateEventInput get input =>
      (_$data['input'] as Input$CreateEventInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateEvent<Variables$Mutation$CreateEvent>
      get copyWith => CopyWith$Variables$Mutation$CreateEvent(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CreateEvent ||
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

abstract class CopyWith$Variables$Mutation$CreateEvent<TRes> {
  factory CopyWith$Variables$Mutation$CreateEvent(
    Variables$Mutation$CreateEvent instance,
    TRes Function(Variables$Mutation$CreateEvent) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateEvent;

  factory CopyWith$Variables$Mutation$CreateEvent.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateEvent;

  TRes call({Input$CreateEventInput? input});
}

class _CopyWithImpl$Variables$Mutation$CreateEvent<TRes>
    implements CopyWith$Variables$Mutation$CreateEvent<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateEvent(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateEvent _instance;

  final TRes Function(Variables$Mutation$CreateEvent) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$CreateEvent._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$CreateEventInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreateEvent<TRes>
    implements CopyWith$Variables$Mutation$CreateEvent<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateEvent(this._res);

  TRes _res;

  call({Input$CreateEventInput? input}) => _res;
}

class Mutation$CreateEvent {
  Mutation$CreateEvent({
    this.createEvent,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateEvent.fromJson(Map<String, dynamic> json) {
    final l$createEvent = json['createEvent'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateEvent(
      createEvent: (l$createEvent as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? createEvent;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createEvent = createEvent;
    _resultData['createEvent'] = l$createEvent;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createEvent = createEvent;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createEvent,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateEvent || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createEvent = createEvent;
    final lOther$createEvent = other.createEvent;
    if (l$createEvent != lOther$createEvent) {
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

extension UtilityExtension$Mutation$CreateEvent on Mutation$CreateEvent {
  CopyWith$Mutation$CreateEvent<Mutation$CreateEvent> get copyWith =>
      CopyWith$Mutation$CreateEvent(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateEvent<TRes> {
  factory CopyWith$Mutation$CreateEvent(
    Mutation$CreateEvent instance,
    TRes Function(Mutation$CreateEvent) then,
  ) = _CopyWithImpl$Mutation$CreateEvent;

  factory CopyWith$Mutation$CreateEvent.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateEvent;

  TRes call({
    String? createEvent,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateEvent<TRes>
    implements CopyWith$Mutation$CreateEvent<TRes> {
  _CopyWithImpl$Mutation$CreateEvent(
    this._instance,
    this._then,
  );

  final Mutation$CreateEvent _instance;

  final TRes Function(Mutation$CreateEvent) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createEvent = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateEvent(
        createEvent: createEvent == _undefined
            ? _instance.createEvent
            : (createEvent as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreateEvent<TRes>
    implements CopyWith$Mutation$CreateEvent<TRes> {
  _CopyWithStubImpl$Mutation$CreateEvent(this._res);

  TRes _res;

  call({
    String? createEvent,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationCreateEvent = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateEvent'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'CreateEventInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createEvent'),
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
Mutation$CreateEvent _parserFn$Mutation$CreateEvent(
        Map<String, dynamic> data) =>
    Mutation$CreateEvent.fromJson(data);
typedef OnMutationCompleted$Mutation$CreateEvent = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$CreateEvent?,
);

class Options$Mutation$CreateEvent
    extends graphql.MutationOptions<Mutation$CreateEvent> {
  Options$Mutation$CreateEvent({
    String? operationName,
    required Variables$Mutation$CreateEvent variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateEvent? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateEvent? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateEvent>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$CreateEvent(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateEvent,
          parserFn: _parserFn$Mutation$CreateEvent,
        );

  final OnMutationCompleted$Mutation$CreateEvent? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CreateEvent
    extends graphql.WatchQueryOptions<Mutation$CreateEvent> {
  WatchOptions$Mutation$CreateEvent({
    String? operationName,
    required Variables$Mutation$CreateEvent variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateEvent? typedOptimisticResult,
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
          document: documentNodeMutationCreateEvent,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CreateEvent,
        );
}

extension ClientExtension$Mutation$CreateEvent on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CreateEvent>> mutate$CreateEvent(
          Options$Mutation$CreateEvent options) async =>
      await this.mutate(options);

  graphql.ObservableQuery<Mutation$CreateEvent> watchMutation$CreateEvent(
          WatchOptions$Mutation$CreateEvent options) =>
      this.watchMutation(options);
}

class Mutation$CreateEvent$HookResult {
  Mutation$CreateEvent$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$CreateEvent runMutation;

  final graphql.QueryResult<Mutation$CreateEvent> result;
}

Mutation$CreateEvent$HookResult useMutation$CreateEvent(
    [WidgetOptions$Mutation$CreateEvent? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$CreateEvent());
  return Mutation$CreateEvent$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$CreateEvent> useWatchMutation$CreateEvent(
        WatchOptions$Mutation$CreateEvent options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$CreateEvent
    extends graphql.MutationOptions<Mutation$CreateEvent> {
  WidgetOptions$Mutation$CreateEvent({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateEvent? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateEvent? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateEvent>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$CreateEvent(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateEvent,
          parserFn: _parserFn$Mutation$CreateEvent,
        );

  final OnMutationCompleted$Mutation$CreateEvent? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$CreateEvent
    = graphql.MultiSourceResult<Mutation$CreateEvent> Function(
  Variables$Mutation$CreateEvent, {
  Object? optimisticResult,
  Mutation$CreateEvent? typedOptimisticResult,
});
typedef Builder$Mutation$CreateEvent = widgets.Widget Function(
  RunMutation$Mutation$CreateEvent,
  graphql.QueryResult<Mutation$CreateEvent>?,
);

class Mutation$CreateEvent$Widget
    extends graphql_flutter.Mutation<Mutation$CreateEvent> {
  Mutation$CreateEvent$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$CreateEvent? options,
    required Builder$Mutation$CreateEvent builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$CreateEvent(),
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

class Variables$Mutation$UpdateEvent {
  factory Variables$Mutation$UpdateEvent(
          {required Input$CreateEventInput input}) =>
      Variables$Mutation$UpdateEvent._({
        r'input': input,
      });

  Variables$Mutation$UpdateEvent._(this._$data);

  factory Variables$Mutation$UpdateEvent.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$CreateEventInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$UpdateEvent._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreateEventInput get input =>
      (_$data['input'] as Input$CreateEventInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateEvent<Variables$Mutation$UpdateEvent>
      get copyWith => CopyWith$Variables$Mutation$UpdateEvent(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateEvent ||
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

abstract class CopyWith$Variables$Mutation$UpdateEvent<TRes> {
  factory CopyWith$Variables$Mutation$UpdateEvent(
    Variables$Mutation$UpdateEvent instance,
    TRes Function(Variables$Mutation$UpdateEvent) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateEvent;

  factory CopyWith$Variables$Mutation$UpdateEvent.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateEvent;

  TRes call({Input$CreateEventInput? input});
}

class _CopyWithImpl$Variables$Mutation$UpdateEvent<TRes>
    implements CopyWith$Variables$Mutation$UpdateEvent<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateEvent(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateEvent _instance;

  final TRes Function(Variables$Mutation$UpdateEvent) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$UpdateEvent._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$CreateEventInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateEvent<TRes>
    implements CopyWith$Variables$Mutation$UpdateEvent<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateEvent(this._res);

  TRes _res;

  call({Input$CreateEventInput? input}) => _res;
}

class Mutation$UpdateEvent {
  Mutation$UpdateEvent({
    required this.updateEvent,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateEvent.fromJson(Map<String, dynamic> json) {
    final l$updateEvent = json['updateEvent'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateEvent(
      updateEvent: (l$updateEvent as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool updateEvent;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateEvent = updateEvent;
    _resultData['updateEvent'] = l$updateEvent;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateEvent = updateEvent;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateEvent,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateEvent || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateEvent = updateEvent;
    final lOther$updateEvent = other.updateEvent;
    if (l$updateEvent != lOther$updateEvent) {
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

extension UtilityExtension$Mutation$UpdateEvent on Mutation$UpdateEvent {
  CopyWith$Mutation$UpdateEvent<Mutation$UpdateEvent> get copyWith =>
      CopyWith$Mutation$UpdateEvent(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateEvent<TRes> {
  factory CopyWith$Mutation$UpdateEvent(
    Mutation$UpdateEvent instance,
    TRes Function(Mutation$UpdateEvent) then,
  ) = _CopyWithImpl$Mutation$UpdateEvent;

  factory CopyWith$Mutation$UpdateEvent.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateEvent;

  TRes call({
    bool? updateEvent,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateEvent<TRes>
    implements CopyWith$Mutation$UpdateEvent<TRes> {
  _CopyWithImpl$Mutation$UpdateEvent(
    this._instance,
    this._then,
  );

  final Mutation$UpdateEvent _instance;

  final TRes Function(Mutation$UpdateEvent) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateEvent = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateEvent(
        updateEvent: updateEvent == _undefined || updateEvent == null
            ? _instance.updateEvent
            : (updateEvent as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateEvent<TRes>
    implements CopyWith$Mutation$UpdateEvent<TRes> {
  _CopyWithStubImpl$Mutation$UpdateEvent(this._res);

  TRes _res;

  call({
    bool? updateEvent,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationUpdateEvent = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateEvent'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'CreateEventInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateEvent'),
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
Mutation$UpdateEvent _parserFn$Mutation$UpdateEvent(
        Map<String, dynamic> data) =>
    Mutation$UpdateEvent.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateEvent = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$UpdateEvent?,
);

class Options$Mutation$UpdateEvent
    extends graphql.MutationOptions<Mutation$UpdateEvent> {
  Options$Mutation$UpdateEvent({
    String? operationName,
    required Variables$Mutation$UpdateEvent variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateEvent? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateEvent? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateEvent>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$UpdateEvent(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateEvent,
          parserFn: _parserFn$Mutation$UpdateEvent,
        );

  final OnMutationCompleted$Mutation$UpdateEvent? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateEvent
    extends graphql.WatchQueryOptions<Mutation$UpdateEvent> {
  WatchOptions$Mutation$UpdateEvent({
    String? operationName,
    required Variables$Mutation$UpdateEvent variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateEvent? typedOptimisticResult,
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
          document: documentNodeMutationUpdateEvent,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateEvent,
        );
}

extension ClientExtension$Mutation$UpdateEvent on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateEvent>> mutate$UpdateEvent(
          Options$Mutation$UpdateEvent options) async =>
      await this.mutate(options);

  graphql.ObservableQuery<Mutation$UpdateEvent> watchMutation$UpdateEvent(
          WatchOptions$Mutation$UpdateEvent options) =>
      this.watchMutation(options);
}

class Mutation$UpdateEvent$HookResult {
  Mutation$UpdateEvent$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$UpdateEvent runMutation;

  final graphql.QueryResult<Mutation$UpdateEvent> result;
}

Mutation$UpdateEvent$HookResult useMutation$UpdateEvent(
    [WidgetOptions$Mutation$UpdateEvent? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$UpdateEvent());
  return Mutation$UpdateEvent$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UpdateEvent> useWatchMutation$UpdateEvent(
        WatchOptions$Mutation$UpdateEvent options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UpdateEvent
    extends graphql.MutationOptions<Mutation$UpdateEvent> {
  WidgetOptions$Mutation$UpdateEvent({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateEvent? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateEvent? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateEvent>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$UpdateEvent(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateEvent,
          parserFn: _parserFn$Mutation$UpdateEvent,
        );

  final OnMutationCompleted$Mutation$UpdateEvent? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$UpdateEvent
    = graphql.MultiSourceResult<Mutation$UpdateEvent> Function(
  Variables$Mutation$UpdateEvent, {
  Object? optimisticResult,
  Mutation$UpdateEvent? typedOptimisticResult,
});
typedef Builder$Mutation$UpdateEvent = widgets.Widget Function(
  RunMutation$Mutation$UpdateEvent,
  graphql.QueryResult<Mutation$UpdateEvent>?,
);

class Mutation$UpdateEvent$Widget
    extends graphql_flutter.Mutation<Mutation$UpdateEvent> {
  Mutation$UpdateEvent$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UpdateEvent? options,
    required Builder$Mutation$UpdateEvent builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$UpdateEvent(),
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

class Variables$Mutation$DeleteEvent {
  factory Variables$Mutation$DeleteEvent({required String id}) =>
      Variables$Mutation$DeleteEvent._({
        r'id': id,
      });

  Variables$Mutation$DeleteEvent._(this._$data);

  factory Variables$Mutation$DeleteEvent.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Mutation$DeleteEvent._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteEvent<Variables$Mutation$DeleteEvent>
      get copyWith => CopyWith$Variables$Mutation$DeleteEvent(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$DeleteEvent ||
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

abstract class CopyWith$Variables$Mutation$DeleteEvent<TRes> {
  factory CopyWith$Variables$Mutation$DeleteEvent(
    Variables$Mutation$DeleteEvent instance,
    TRes Function(Variables$Mutation$DeleteEvent) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteEvent;

  factory CopyWith$Variables$Mutation$DeleteEvent.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteEvent;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Mutation$DeleteEvent<TRes>
    implements CopyWith$Variables$Mutation$DeleteEvent<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteEvent(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteEvent _instance;

  final TRes Function(Variables$Mutation$DeleteEvent) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Mutation$DeleteEvent._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteEvent<TRes>
    implements CopyWith$Variables$Mutation$DeleteEvent<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteEvent(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Mutation$DeleteEvent {
  Mutation$DeleteEvent({
    required this.deleteEvent,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteEvent.fromJson(Map<String, dynamic> json) {
    final l$deleteEvent = json['deleteEvent'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteEvent(
      deleteEvent: (l$deleteEvent as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool deleteEvent;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteEvent = deleteEvent;
    _resultData['deleteEvent'] = l$deleteEvent;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteEvent = deleteEvent;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteEvent,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DeleteEvent || runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteEvent = deleteEvent;
    final lOther$deleteEvent = other.deleteEvent;
    if (l$deleteEvent != lOther$deleteEvent) {
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

extension UtilityExtension$Mutation$DeleteEvent on Mutation$DeleteEvent {
  CopyWith$Mutation$DeleteEvent<Mutation$DeleteEvent> get copyWith =>
      CopyWith$Mutation$DeleteEvent(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeleteEvent<TRes> {
  factory CopyWith$Mutation$DeleteEvent(
    Mutation$DeleteEvent instance,
    TRes Function(Mutation$DeleteEvent) then,
  ) = _CopyWithImpl$Mutation$DeleteEvent;

  factory CopyWith$Mutation$DeleteEvent.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteEvent;

  TRes call({
    bool? deleteEvent,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeleteEvent<TRes>
    implements CopyWith$Mutation$DeleteEvent<TRes> {
  _CopyWithImpl$Mutation$DeleteEvent(
    this._instance,
    this._then,
  );

  final Mutation$DeleteEvent _instance;

  final TRes Function(Mutation$DeleteEvent) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteEvent = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteEvent(
        deleteEvent: deleteEvent == _undefined || deleteEvent == null
            ? _instance.deleteEvent
            : (deleteEvent as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeleteEvent<TRes>
    implements CopyWith$Mutation$DeleteEvent<TRes> {
  _CopyWithStubImpl$Mutation$DeleteEvent(this._res);

  TRes _res;

  call({
    bool? deleteEvent,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationDeleteEvent = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteEvent'),
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
        name: NameNode(value: 'deleteEvent'),
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
Mutation$DeleteEvent _parserFn$Mutation$DeleteEvent(
        Map<String, dynamic> data) =>
    Mutation$DeleteEvent.fromJson(data);
typedef OnMutationCompleted$Mutation$DeleteEvent = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$DeleteEvent?,
);

class Options$Mutation$DeleteEvent
    extends graphql.MutationOptions<Mutation$DeleteEvent> {
  Options$Mutation$DeleteEvent({
    String? operationName,
    required Variables$Mutation$DeleteEvent variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteEvent? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteEvent? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteEvent>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$DeleteEvent(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteEvent,
          parserFn: _parserFn$Mutation$DeleteEvent,
        );

  final OnMutationCompleted$Mutation$DeleteEvent? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DeleteEvent
    extends graphql.WatchQueryOptions<Mutation$DeleteEvent> {
  WatchOptions$Mutation$DeleteEvent({
    String? operationName,
    required Variables$Mutation$DeleteEvent variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteEvent? typedOptimisticResult,
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
          document: documentNodeMutationDeleteEvent,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DeleteEvent,
        );
}

extension ClientExtension$Mutation$DeleteEvent on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DeleteEvent>> mutate$DeleteEvent(
          Options$Mutation$DeleteEvent options) async =>
      await this.mutate(options);

  graphql.ObservableQuery<Mutation$DeleteEvent> watchMutation$DeleteEvent(
          WatchOptions$Mutation$DeleteEvent options) =>
      this.watchMutation(options);
}

class Mutation$DeleteEvent$HookResult {
  Mutation$DeleteEvent$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$DeleteEvent runMutation;

  final graphql.QueryResult<Mutation$DeleteEvent> result;
}

Mutation$DeleteEvent$HookResult useMutation$DeleteEvent(
    [WidgetOptions$Mutation$DeleteEvent? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$DeleteEvent());
  return Mutation$DeleteEvent$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$DeleteEvent> useWatchMutation$DeleteEvent(
        WatchOptions$Mutation$DeleteEvent options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$DeleteEvent
    extends graphql.MutationOptions<Mutation$DeleteEvent> {
  WidgetOptions$Mutation$DeleteEvent({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteEvent? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteEvent? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteEvent>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$DeleteEvent(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteEvent,
          parserFn: _parserFn$Mutation$DeleteEvent,
        );

  final OnMutationCompleted$Mutation$DeleteEvent? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$DeleteEvent
    = graphql.MultiSourceResult<Mutation$DeleteEvent> Function(
  Variables$Mutation$DeleteEvent, {
  Object? optimisticResult,
  Mutation$DeleteEvent? typedOptimisticResult,
});
typedef Builder$Mutation$DeleteEvent = widgets.Widget Function(
  RunMutation$Mutation$DeleteEvent,
  graphql.QueryResult<Mutation$DeleteEvent>?,
);

class Mutation$DeleteEvent$Widget
    extends graphql_flutter.Mutation<Mutation$DeleteEvent> {
  Mutation$DeleteEvent$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$DeleteEvent? options,
    required Builder$Mutation$DeleteEvent builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$DeleteEvent(),
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
