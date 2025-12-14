// GENERATED FILE
// DO NOT MODIFY
import '../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$GetTicket {
  factory Variables$Query$GetTicket({required String id}) =>
      Variables$Query$GetTicket._({
        r'id': id,
      });

  Variables$Query$GetTicket._(this._$data);

  factory Variables$Query$GetTicket.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$GetTicket._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$GetTicket<Variables$Query$GetTicket> get copyWith =>
      CopyWith$Variables$Query$GetTicket(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetTicket ||
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

abstract class CopyWith$Variables$Query$GetTicket<TRes> {
  factory CopyWith$Variables$Query$GetTicket(
    Variables$Query$GetTicket instance,
    TRes Function(Variables$Query$GetTicket) then,
  ) = _CopyWithImpl$Variables$Query$GetTicket;

  factory CopyWith$Variables$Query$GetTicket.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetTicket;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$GetTicket<TRes>
    implements CopyWith$Variables$Query$GetTicket<TRes> {
  _CopyWithImpl$Variables$Query$GetTicket(
    this._instance,
    this._then,
  );

  final Variables$Query$GetTicket _instance;

  final TRes Function(Variables$Query$GetTicket) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Variables$Query$GetTicket._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetTicket<TRes>
    implements CopyWith$Variables$Query$GetTicket<TRes> {
  _CopyWithStubImpl$Variables$Query$GetTicket(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$GetTicket {
  Query$GetTicket({
    this.ticket,
    this.$__typename = 'Query',
  });

  factory Query$GetTicket.fromJson(Map<String, dynamic> json) {
    final l$ticket = json['ticket'];
    final l$$__typename = json['__typename'];
    return Query$GetTicket(
      ticket: l$ticket == null
          ? null
          : Query$GetTicket$ticket.fromJson((l$ticket as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetTicket$ticket? ticket;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$ticket = ticket;
    _resultData['ticket'] = l$ticket?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$ticket = ticket;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$ticket,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTicket || runtimeType != other.runtimeType) {
      return false;
    }
    final l$ticket = ticket;
    final lOther$ticket = other.ticket;
    if (l$ticket != lOther$ticket) {
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

extension UtilityExtension$Query$GetTicket on Query$GetTicket {
  CopyWith$Query$GetTicket<Query$GetTicket> get copyWith =>
      CopyWith$Query$GetTicket(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetTicket<TRes> {
  factory CopyWith$Query$GetTicket(
    Query$GetTicket instance,
    TRes Function(Query$GetTicket) then,
  ) = _CopyWithImpl$Query$GetTicket;

  factory CopyWith$Query$GetTicket.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTicket;

  TRes call({
    Query$GetTicket$ticket? ticket,
    String? $__typename,
  });
  CopyWith$Query$GetTicket$ticket<TRes> get ticket;
}

class _CopyWithImpl$Query$GetTicket<TRes>
    implements CopyWith$Query$GetTicket<TRes> {
  _CopyWithImpl$Query$GetTicket(
    this._instance,
    this._then,
  );

  final Query$GetTicket _instance;

  final TRes Function(Query$GetTicket) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ticket = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTicket(
        ticket: ticket == _undefined
            ? _instance.ticket
            : (ticket as Query$GetTicket$ticket?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetTicket$ticket<TRes> get ticket {
    final local$ticket = _instance.ticket;
    return local$ticket == null
        ? CopyWith$Query$GetTicket$ticket.stub(_then(_instance))
        : CopyWith$Query$GetTicket$ticket(local$ticket, (e) => call(ticket: e));
  }
}

class _CopyWithStubImpl$Query$GetTicket<TRes>
    implements CopyWith$Query$GetTicket<TRes> {
  _CopyWithStubImpl$Query$GetTicket(this._res);

  TRes _res;

  call({
    Query$GetTicket$ticket? ticket,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetTicket$ticket<TRes> get ticket =>
      CopyWith$Query$GetTicket$ticket.stub(_res);
}

const documentNodeQueryGetTicket = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetTicket'),
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
        name: NameNode(value: 'ticket'),
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
            name: NameNode(value: 'code'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'used'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'buyerName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'buyerPhone'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'buyerEmail'),
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
            name: NameNode(value: 'event'),
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
                name: NameNode(value: 'location'),
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
Query$GetTicket _parserFn$Query$GetTicket(Map<String, dynamic> data) =>
    Query$GetTicket.fromJson(data);
typedef OnQueryComplete$Query$GetTicket = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetTicket?,
);

class Options$Query$GetTicket extends graphql.QueryOptions<Query$GetTicket> {
  Options$Query$GetTicket({
    String? operationName,
    required Variables$Query$GetTicket variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetTicket? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetTicket? onComplete,
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
                    data == null ? null : _parserFn$Query$GetTicket(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetTicket,
          parserFn: _parserFn$Query$GetTicket,
        );

  final OnQueryComplete$Query$GetTicket? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetTicket
    extends graphql.WatchQueryOptions<Query$GetTicket> {
  WatchOptions$Query$GetTicket({
    String? operationName,
    required Variables$Query$GetTicket variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetTicket? typedOptimisticResult,
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
          document: documentNodeQueryGetTicket,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetTicket,
        );
}

class FetchMoreOptions$Query$GetTicket extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetTicket({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetTicket variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetTicket,
        );
}

extension ClientExtension$Query$GetTicket on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetTicket>> query$GetTicket(
          Options$Query$GetTicket options) async =>
      await this.query(options);

  graphql.ObservableQuery<Query$GetTicket> watchQuery$GetTicket(
          WatchOptions$Query$GetTicket options) =>
      this.watchQuery(options);

  void writeQuery$GetTicket({
    required Query$GetTicket data,
    required Variables$Query$GetTicket variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryGetTicket),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );

  Query$GetTicket? readQuery$GetTicket({
    required Variables$Query$GetTicket variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryGetTicket),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetTicket.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetTicket> useQuery$GetTicket(
        Options$Query$GetTicket options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$GetTicket> useWatchQuery$GetTicket(
        WatchOptions$Query$GetTicket options) =>
    graphql_flutter.useWatchQuery(options);

class Query$GetTicket$Widget extends graphql_flutter.Query<Query$GetTicket> {
  Query$GetTicket$Widget({
    widgets.Key? key,
    required Options$Query$GetTicket options,
    required graphql_flutter.QueryBuilder<Query$GetTicket> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$GetTicket$ticket {
  Query$GetTicket$ticket({
    required this.id,
    required this.code,
    required this.used,
    this.buyerName,
    this.buyerPhone,
    this.buyerEmail,
    required this.createdAt,
    required this.event,
    this.user,
    this.$__typename = 'Ticket',
  });

  factory Query$GetTicket$ticket.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$code = json['code'];
    final l$used = json['used'];
    final l$buyerName = json['buyerName'];
    final l$buyerPhone = json['buyerPhone'];
    final l$buyerEmail = json['buyerEmail'];
    final l$createdAt = json['createdAt'];
    final l$event = json['event'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Query$GetTicket$ticket(
      id: (l$id as String),
      code: (l$code as String),
      used: (l$used as bool),
      buyerName: (l$buyerName as String?),
      buyerPhone: (l$buyerPhone as String?),
      buyerEmail: (l$buyerEmail as String?),
      createdAt: DateTime.parse((l$createdAt as String)),
      event: Query$GetTicket$ticket$event.fromJson(
          (l$event as Map<String, dynamic>)),
      user: l$user == null
          ? null
          : Query$GetTicket$ticket$user.fromJson(
              (l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String code;

  final bool used;

  final String? buyerName;

  final String? buyerPhone;

  final String? buyerEmail;

  final DateTime createdAt;

  final Query$GetTicket$ticket$event event;

  final Query$GetTicket$ticket$user? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$used = used;
    _resultData['used'] = l$used;
    final l$buyerName = buyerName;
    _resultData['buyerName'] = l$buyerName;
    final l$buyerPhone = buyerPhone;
    _resultData['buyerPhone'] = l$buyerPhone;
    final l$buyerEmail = buyerEmail;
    _resultData['buyerEmail'] = l$buyerEmail;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$event = event;
    _resultData['event'] = l$event.toJson();
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$code = code;
    final l$used = used;
    final l$buyerName = buyerName;
    final l$buyerPhone = buyerPhone;
    final l$buyerEmail = buyerEmail;
    final l$createdAt = createdAt;
    final l$event = event;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$code,
      l$used,
      l$buyerName,
      l$buyerPhone,
      l$buyerEmail,
      l$createdAt,
      l$event,
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTicket$ticket || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$used = used;
    final lOther$used = other.used;
    if (l$used != lOther$used) {
      return false;
    }
    final l$buyerName = buyerName;
    final lOther$buyerName = other.buyerName;
    if (l$buyerName != lOther$buyerName) {
      return false;
    }
    final l$buyerPhone = buyerPhone;
    final lOther$buyerPhone = other.buyerPhone;
    if (l$buyerPhone != lOther$buyerPhone) {
      return false;
    }
    final l$buyerEmail = buyerEmail;
    final lOther$buyerEmail = other.buyerEmail;
    if (l$buyerEmail != lOther$buyerEmail) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$event = event;
    final lOther$event = other.event;
    if (l$event != lOther$event) {
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

extension UtilityExtension$Query$GetTicket$ticket on Query$GetTicket$ticket {
  CopyWith$Query$GetTicket$ticket<Query$GetTicket$ticket> get copyWith =>
      CopyWith$Query$GetTicket$ticket(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetTicket$ticket<TRes> {
  factory CopyWith$Query$GetTicket$ticket(
    Query$GetTicket$ticket instance,
    TRes Function(Query$GetTicket$ticket) then,
  ) = _CopyWithImpl$Query$GetTicket$ticket;

  factory CopyWith$Query$GetTicket$ticket.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTicket$ticket;

  TRes call({
    String? id,
    String? code,
    bool? used,
    String? buyerName,
    String? buyerPhone,
    String? buyerEmail,
    DateTime? createdAt,
    Query$GetTicket$ticket$event? event,
    Query$GetTicket$ticket$user? user,
    String? $__typename,
  });
  CopyWith$Query$GetTicket$ticket$event<TRes> get event;
  CopyWith$Query$GetTicket$ticket$user<TRes> get user;
}

class _CopyWithImpl$Query$GetTicket$ticket<TRes>
    implements CopyWith$Query$GetTicket$ticket<TRes> {
  _CopyWithImpl$Query$GetTicket$ticket(
    this._instance,
    this._then,
  );

  final Query$GetTicket$ticket _instance;

  final TRes Function(Query$GetTicket$ticket) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? code = _undefined,
    Object? used = _undefined,
    Object? buyerName = _undefined,
    Object? buyerPhone = _undefined,
    Object? buyerEmail = _undefined,
    Object? createdAt = _undefined,
    Object? event = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTicket$ticket(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        code: code == _undefined || code == null
            ? _instance.code
            : (code as String),
        used: used == _undefined || used == null
            ? _instance.used
            : (used as bool),
        buyerName: buyerName == _undefined
            ? _instance.buyerName
            : (buyerName as String?),
        buyerPhone: buyerPhone == _undefined
            ? _instance.buyerPhone
            : (buyerPhone as String?),
        buyerEmail: buyerEmail == _undefined
            ? _instance.buyerEmail
            : (buyerEmail as String?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        event: event == _undefined || event == null
            ? _instance.event
            : (event as Query$GetTicket$ticket$event),
        user: user == _undefined
            ? _instance.user
            : (user as Query$GetTicket$ticket$user?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetTicket$ticket$event<TRes> get event {
    final local$event = _instance.event;
    return CopyWith$Query$GetTicket$ticket$event(
        local$event, (e) => call(event: e));
  }

  CopyWith$Query$GetTicket$ticket$user<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Query$GetTicket$ticket$user.stub(_then(_instance))
        : CopyWith$Query$GetTicket$ticket$user(
            local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$GetTicket$ticket<TRes>
    implements CopyWith$Query$GetTicket$ticket<TRes> {
  _CopyWithStubImpl$Query$GetTicket$ticket(this._res);

  TRes _res;

  call({
    String? id,
    String? code,
    bool? used,
    String? buyerName,
    String? buyerPhone,
    String? buyerEmail,
    DateTime? createdAt,
    Query$GetTicket$ticket$event? event,
    Query$GetTicket$ticket$user? user,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetTicket$ticket$event<TRes> get event =>
      CopyWith$Query$GetTicket$ticket$event.stub(_res);

  CopyWith$Query$GetTicket$ticket$user<TRes> get user =>
      CopyWith$Query$GetTicket$ticket$user.stub(_res);
}

class Query$GetTicket$ticket$event {
  Query$GetTicket$ticket$event({
    required this.id,
    required this.title,
    required this.location,
    required this.date,
    required this.picture,
    this.$__typename = 'Event',
  });

  factory Query$GetTicket$ticket$event.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$location = json['location'];
    final l$date = json['date'];
    final l$picture = json['picture'];
    final l$$__typename = json['__typename'];
    return Query$GetTicket$ticket$event(
      id: (l$id as String),
      title: (l$title as String),
      location: (l$location as String),
      date: DateTime.parse((l$date as String)),
      picture: (l$picture as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String title;

  final String location;

  final DateTime date;

  final String picture;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$location = location;
    _resultData['location'] = l$location;
    final l$date = date;
    _resultData['date'] = l$date.toIso8601String();
    final l$picture = picture;
    _resultData['picture'] = l$picture;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$location = location;
    final l$date = date;
    final l$picture = picture;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$location,
      l$date,
      l$picture,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTicket$ticket$event ||
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
    final l$location = location;
    final lOther$location = other.location;
    if (l$location != lOther$location) {
      return false;
    }
    final l$date = date;
    final lOther$date = other.date;
    if (l$date != lOther$date) {
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

extension UtilityExtension$Query$GetTicket$ticket$event
    on Query$GetTicket$ticket$event {
  CopyWith$Query$GetTicket$ticket$event<Query$GetTicket$ticket$event>
      get copyWith => CopyWith$Query$GetTicket$ticket$event(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetTicket$ticket$event<TRes> {
  factory CopyWith$Query$GetTicket$ticket$event(
    Query$GetTicket$ticket$event instance,
    TRes Function(Query$GetTicket$ticket$event) then,
  ) = _CopyWithImpl$Query$GetTicket$ticket$event;

  factory CopyWith$Query$GetTicket$ticket$event.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTicket$ticket$event;

  TRes call({
    String? id,
    String? title,
    String? location,
    DateTime? date,
    String? picture,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetTicket$ticket$event<TRes>
    implements CopyWith$Query$GetTicket$ticket$event<TRes> {
  _CopyWithImpl$Query$GetTicket$ticket$event(
    this._instance,
    this._then,
  );

  final Query$GetTicket$ticket$event _instance;

  final TRes Function(Query$GetTicket$ticket$event) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? location = _undefined,
    Object? date = _undefined,
    Object? picture = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTicket$ticket$event(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        location: location == _undefined || location == null
            ? _instance.location
            : (location as String),
        date: date == _undefined || date == null
            ? _instance.date
            : (date as DateTime),
        picture: picture == _undefined || picture == null
            ? _instance.picture
            : (picture as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetTicket$ticket$event<TRes>
    implements CopyWith$Query$GetTicket$ticket$event<TRes> {
  _CopyWithStubImpl$Query$GetTicket$ticket$event(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? location,
    DateTime? date,
    String? picture,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetTicket$ticket$user {
  Query$GetTicket$ticket$user({
    required this.id,
    required this.name,
    this.$__typename = 'User',
  });

  factory Query$GetTicket$ticket$user.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$GetTicket$ticket$user(
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
    if (other is! Query$GetTicket$ticket$user ||
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

extension UtilityExtension$Query$GetTicket$ticket$user
    on Query$GetTicket$ticket$user {
  CopyWith$Query$GetTicket$ticket$user<Query$GetTicket$ticket$user>
      get copyWith => CopyWith$Query$GetTicket$ticket$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetTicket$ticket$user<TRes> {
  factory CopyWith$Query$GetTicket$ticket$user(
    Query$GetTicket$ticket$user instance,
    TRes Function(Query$GetTicket$ticket$user) then,
  ) = _CopyWithImpl$Query$GetTicket$ticket$user;

  factory CopyWith$Query$GetTicket$ticket$user.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTicket$ticket$user;

  TRes call({
    String? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetTicket$ticket$user<TRes>
    implements CopyWith$Query$GetTicket$ticket$user<TRes> {
  _CopyWithImpl$Query$GetTicket$ticket$user(
    this._instance,
    this._then,
  );

  final Query$GetTicket$ticket$user _instance;

  final TRes Function(Query$GetTicket$ticket$user) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTicket$ticket$user(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetTicket$ticket$user<TRes>
    implements CopyWith$Query$GetTicket$ticket$user<TRes> {
  _CopyWithStubImpl$Query$GetTicket$ticket$user(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$GetTickets {
  factory Variables$Query$GetTickets({required String eventId}) =>
      Variables$Query$GetTickets._({
        r'eventId': eventId,
      });

  Variables$Query$GetTickets._(this._$data);

  factory Variables$Query$GetTickets.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$eventId = data['eventId'];
    result$data['eventId'] = (l$eventId as String);
    return Variables$Query$GetTickets._(result$data);
  }

  Map<String, dynamic> _$data;

  String get eventId => (_$data['eventId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$eventId = eventId;
    result$data['eventId'] = l$eventId;
    return result$data;
  }

  CopyWith$Variables$Query$GetTickets<Variables$Query$GetTickets>
      get copyWith => CopyWith$Variables$Query$GetTickets(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetTickets ||
        runtimeType != other.runtimeType) {
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

abstract class CopyWith$Variables$Query$GetTickets<TRes> {
  factory CopyWith$Variables$Query$GetTickets(
    Variables$Query$GetTickets instance,
    TRes Function(Variables$Query$GetTickets) then,
  ) = _CopyWithImpl$Variables$Query$GetTickets;

  factory CopyWith$Variables$Query$GetTickets.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetTickets;

  TRes call({String? eventId});
}

class _CopyWithImpl$Variables$Query$GetTickets<TRes>
    implements CopyWith$Variables$Query$GetTickets<TRes> {
  _CopyWithImpl$Variables$Query$GetTickets(
    this._instance,
    this._then,
  );

  final Variables$Query$GetTickets _instance;

  final TRes Function(Variables$Query$GetTickets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? eventId = _undefined}) =>
      _then(Variables$Query$GetTickets._({
        ..._instance._$data,
        if (eventId != _undefined && eventId != null)
          'eventId': (eventId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetTickets<TRes>
    implements CopyWith$Variables$Query$GetTickets<TRes> {
  _CopyWithStubImpl$Variables$Query$GetTickets(this._res);

  TRes _res;

  call({String? eventId}) => _res;
}

class Query$GetTickets {
  Query$GetTickets({
    required this.eventTickets,
    this.$__typename = 'Query',
  });

  factory Query$GetTickets.fromJson(Map<String, dynamic> json) {
    final l$eventTickets = json['eventTickets'];
    final l$$__typename = json['__typename'];
    return Query$GetTickets(
      eventTickets: (l$eventTickets as List<dynamic>)
          .map((e) => Query$GetTickets$eventTickets.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetTickets$eventTickets> eventTickets;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$eventTickets = eventTickets;
    _resultData['eventTickets'] =
        l$eventTickets.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$eventTickets = eventTickets;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$eventTickets.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTickets || runtimeType != other.runtimeType) {
      return false;
    }
    final l$eventTickets = eventTickets;
    final lOther$eventTickets = other.eventTickets;
    if (l$eventTickets.length != lOther$eventTickets.length) {
      return false;
    }
    for (int i = 0; i < l$eventTickets.length; i++) {
      final l$eventTickets$entry = l$eventTickets[i];
      final lOther$eventTickets$entry = lOther$eventTickets[i];
      if (l$eventTickets$entry != lOther$eventTickets$entry) {
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

extension UtilityExtension$Query$GetTickets on Query$GetTickets {
  CopyWith$Query$GetTickets<Query$GetTickets> get copyWith =>
      CopyWith$Query$GetTickets(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetTickets<TRes> {
  factory CopyWith$Query$GetTickets(
    Query$GetTickets instance,
    TRes Function(Query$GetTickets) then,
  ) = _CopyWithImpl$Query$GetTickets;

  factory CopyWith$Query$GetTickets.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTickets;

  TRes call({
    List<Query$GetTickets$eventTickets>? eventTickets,
    String? $__typename,
  });
  TRes eventTickets(
      Iterable<Query$GetTickets$eventTickets> Function(
              Iterable<
                  CopyWith$Query$GetTickets$eventTickets<
                      Query$GetTickets$eventTickets>>)
          _fn);
}

class _CopyWithImpl$Query$GetTickets<TRes>
    implements CopyWith$Query$GetTickets<TRes> {
  _CopyWithImpl$Query$GetTickets(
    this._instance,
    this._then,
  );

  final Query$GetTickets _instance;

  final TRes Function(Query$GetTickets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? eventTickets = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTickets(
        eventTickets: eventTickets == _undefined || eventTickets == null
            ? _instance.eventTickets
            : (eventTickets as List<Query$GetTickets$eventTickets>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes eventTickets(
          Iterable<Query$GetTickets$eventTickets> Function(
                  Iterable<
                      CopyWith$Query$GetTickets$eventTickets<
                          Query$GetTickets$eventTickets>>)
              _fn) =>
      call(
          eventTickets: _fn(_instance.eventTickets
              .map((e) => CopyWith$Query$GetTickets$eventTickets(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetTickets<TRes>
    implements CopyWith$Query$GetTickets<TRes> {
  _CopyWithStubImpl$Query$GetTickets(this._res);

  TRes _res;

  call({
    List<Query$GetTickets$eventTickets>? eventTickets,
    String? $__typename,
  }) =>
      _res;

  eventTickets(_fn) => _res;
}

const documentNodeQueryGetTickets = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetTickets'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'eventId')),
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
        name: NameNode(value: 'eventTickets'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'eventId'),
            value: VariableNode(name: NameNode(value: 'eventId')),
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
            name: NameNode(value: 'code'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'used'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'buyerName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'buyerPhone'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'buyerEmail'),
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
Query$GetTickets _parserFn$Query$GetTickets(Map<String, dynamic> data) =>
    Query$GetTickets.fromJson(data);
typedef OnQueryComplete$Query$GetTickets = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetTickets?,
);

class Options$Query$GetTickets extends graphql.QueryOptions<Query$GetTickets> {
  Options$Query$GetTickets({
    String? operationName,
    required Variables$Query$GetTickets variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetTickets? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetTickets? onComplete,
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
                    data == null ? null : _parserFn$Query$GetTickets(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetTickets,
          parserFn: _parserFn$Query$GetTickets,
        );

  final OnQueryComplete$Query$GetTickets? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetTickets
    extends graphql.WatchQueryOptions<Query$GetTickets> {
  WatchOptions$Query$GetTickets({
    String? operationName,
    required Variables$Query$GetTickets variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetTickets? typedOptimisticResult,
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
          document: documentNodeQueryGetTickets,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetTickets,
        );
}

class FetchMoreOptions$Query$GetTickets extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetTickets({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetTickets variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetTickets,
        );
}

extension ClientExtension$Query$GetTickets on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetTickets>> query$GetTickets(
          Options$Query$GetTickets options) async =>
      await this.query(options);

  graphql.ObservableQuery<Query$GetTickets> watchQuery$GetTickets(
          WatchOptions$Query$GetTickets options) =>
      this.watchQuery(options);

  void writeQuery$GetTickets({
    required Query$GetTickets data,
    required Variables$Query$GetTickets variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryGetTickets),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );

  Query$GetTickets? readQuery$GetTickets({
    required Variables$Query$GetTickets variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryGetTickets),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetTickets.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetTickets> useQuery$GetTickets(
        Options$Query$GetTickets options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$GetTickets> useWatchQuery$GetTickets(
        WatchOptions$Query$GetTickets options) =>
    graphql_flutter.useWatchQuery(options);

class Query$GetTickets$Widget extends graphql_flutter.Query<Query$GetTickets> {
  Query$GetTickets$Widget({
    widgets.Key? key,
    required Options$Query$GetTickets options,
    required graphql_flutter.QueryBuilder<Query$GetTickets> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$GetTickets$eventTickets {
  Query$GetTickets$eventTickets({
    required this.id,
    required this.code,
    required this.used,
    this.buyerName,
    this.buyerPhone,
    this.buyerEmail,
    required this.createdAt,
    this.user,
    this.$__typename = 'Ticket',
  });

  factory Query$GetTickets$eventTickets.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$code = json['code'];
    final l$used = json['used'];
    final l$buyerName = json['buyerName'];
    final l$buyerPhone = json['buyerPhone'];
    final l$buyerEmail = json['buyerEmail'];
    final l$createdAt = json['createdAt'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Query$GetTickets$eventTickets(
      id: (l$id as String),
      code: (l$code as String),
      used: (l$used as bool),
      buyerName: (l$buyerName as String?),
      buyerPhone: (l$buyerPhone as String?),
      buyerEmail: (l$buyerEmail as String?),
      createdAt: DateTime.parse((l$createdAt as String)),
      user: l$user == null
          ? null
          : Query$GetTickets$eventTickets$user.fromJson(
              (l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String code;

  final bool used;

  final String? buyerName;

  final String? buyerPhone;

  final String? buyerEmail;

  final DateTime createdAt;

  final Query$GetTickets$eventTickets$user? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$used = used;
    _resultData['used'] = l$used;
    final l$buyerName = buyerName;
    _resultData['buyerName'] = l$buyerName;
    final l$buyerPhone = buyerPhone;
    _resultData['buyerPhone'] = l$buyerPhone;
    final l$buyerEmail = buyerEmail;
    _resultData['buyerEmail'] = l$buyerEmail;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$code = code;
    final l$used = used;
    final l$buyerName = buyerName;
    final l$buyerPhone = buyerPhone;
    final l$buyerEmail = buyerEmail;
    final l$createdAt = createdAt;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$code,
      l$used,
      l$buyerName,
      l$buyerPhone,
      l$buyerEmail,
      l$createdAt,
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTickets$eventTickets ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$used = used;
    final lOther$used = other.used;
    if (l$used != lOther$used) {
      return false;
    }
    final l$buyerName = buyerName;
    final lOther$buyerName = other.buyerName;
    if (l$buyerName != lOther$buyerName) {
      return false;
    }
    final l$buyerPhone = buyerPhone;
    final lOther$buyerPhone = other.buyerPhone;
    if (l$buyerPhone != lOther$buyerPhone) {
      return false;
    }
    final l$buyerEmail = buyerEmail;
    final lOther$buyerEmail = other.buyerEmail;
    if (l$buyerEmail != lOther$buyerEmail) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
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

extension UtilityExtension$Query$GetTickets$eventTickets
    on Query$GetTickets$eventTickets {
  CopyWith$Query$GetTickets$eventTickets<Query$GetTickets$eventTickets>
      get copyWith => CopyWith$Query$GetTickets$eventTickets(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetTickets$eventTickets<TRes> {
  factory CopyWith$Query$GetTickets$eventTickets(
    Query$GetTickets$eventTickets instance,
    TRes Function(Query$GetTickets$eventTickets) then,
  ) = _CopyWithImpl$Query$GetTickets$eventTickets;

  factory CopyWith$Query$GetTickets$eventTickets.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTickets$eventTickets;

  TRes call({
    String? id,
    String? code,
    bool? used,
    String? buyerName,
    String? buyerPhone,
    String? buyerEmail,
    DateTime? createdAt,
    Query$GetTickets$eventTickets$user? user,
    String? $__typename,
  });
  CopyWith$Query$GetTickets$eventTickets$user<TRes> get user;
}

class _CopyWithImpl$Query$GetTickets$eventTickets<TRes>
    implements CopyWith$Query$GetTickets$eventTickets<TRes> {
  _CopyWithImpl$Query$GetTickets$eventTickets(
    this._instance,
    this._then,
  );

  final Query$GetTickets$eventTickets _instance;

  final TRes Function(Query$GetTickets$eventTickets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? code = _undefined,
    Object? used = _undefined,
    Object? buyerName = _undefined,
    Object? buyerPhone = _undefined,
    Object? buyerEmail = _undefined,
    Object? createdAt = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTickets$eventTickets(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        code: code == _undefined || code == null
            ? _instance.code
            : (code as String),
        used: used == _undefined || used == null
            ? _instance.used
            : (used as bool),
        buyerName: buyerName == _undefined
            ? _instance.buyerName
            : (buyerName as String?),
        buyerPhone: buyerPhone == _undefined
            ? _instance.buyerPhone
            : (buyerPhone as String?),
        buyerEmail: buyerEmail == _undefined
            ? _instance.buyerEmail
            : (buyerEmail as String?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        user: user == _undefined
            ? _instance.user
            : (user as Query$GetTickets$eventTickets$user?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetTickets$eventTickets$user<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Query$GetTickets$eventTickets$user.stub(_then(_instance))
        : CopyWith$Query$GetTickets$eventTickets$user(
            local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$GetTickets$eventTickets<TRes>
    implements CopyWith$Query$GetTickets$eventTickets<TRes> {
  _CopyWithStubImpl$Query$GetTickets$eventTickets(this._res);

  TRes _res;

  call({
    String? id,
    String? code,
    bool? used,
    String? buyerName,
    String? buyerPhone,
    String? buyerEmail,
    DateTime? createdAt,
    Query$GetTickets$eventTickets$user? user,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetTickets$eventTickets$user<TRes> get user =>
      CopyWith$Query$GetTickets$eventTickets$user.stub(_res);
}

class Query$GetTickets$eventTickets$user {
  Query$GetTickets$eventTickets$user({
    required this.id,
    required this.name,
    this.$__typename = 'User',
  });

  factory Query$GetTickets$eventTickets$user.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$GetTickets$eventTickets$user(
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
    if (other is! Query$GetTickets$eventTickets$user ||
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

extension UtilityExtension$Query$GetTickets$eventTickets$user
    on Query$GetTickets$eventTickets$user {
  CopyWith$Query$GetTickets$eventTickets$user<
          Query$GetTickets$eventTickets$user>
      get copyWith => CopyWith$Query$GetTickets$eventTickets$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetTickets$eventTickets$user<TRes> {
  factory CopyWith$Query$GetTickets$eventTickets$user(
    Query$GetTickets$eventTickets$user instance,
    TRes Function(Query$GetTickets$eventTickets$user) then,
  ) = _CopyWithImpl$Query$GetTickets$eventTickets$user;

  factory CopyWith$Query$GetTickets$eventTickets$user.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTickets$eventTickets$user;

  TRes call({
    String? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetTickets$eventTickets$user<TRes>
    implements CopyWith$Query$GetTickets$eventTickets$user<TRes> {
  _CopyWithImpl$Query$GetTickets$eventTickets$user(
    this._instance,
    this._then,
  );

  final Query$GetTickets$eventTickets$user _instance;

  final TRes Function(Query$GetTickets$eventTickets$user) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTickets$eventTickets$user(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetTickets$eventTickets$user<TRes>
    implements CopyWith$Query$GetTickets$eventTickets$user<TRes> {
  _CopyWithStubImpl$Query$GetTickets$eventTickets$user(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetMyTickets {
  Query$GetMyTickets({
    required this.myTickets,
    this.$__typename = 'Query',
  });

  factory Query$GetMyTickets.fromJson(Map<String, dynamic> json) {
    final l$myTickets = json['myTickets'];
    final l$$__typename = json['__typename'];
    return Query$GetMyTickets(
      myTickets: (l$myTickets as List<dynamic>)
          .map((e) => Query$GetMyTickets$myTickets.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetMyTickets$myTickets> myTickets;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$myTickets = myTickets;
    _resultData['myTickets'] = l$myTickets.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$myTickets = myTickets;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$myTickets.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetMyTickets || runtimeType != other.runtimeType) {
      return false;
    }
    final l$myTickets = myTickets;
    final lOther$myTickets = other.myTickets;
    if (l$myTickets.length != lOther$myTickets.length) {
      return false;
    }
    for (int i = 0; i < l$myTickets.length; i++) {
      final l$myTickets$entry = l$myTickets[i];
      final lOther$myTickets$entry = lOther$myTickets[i];
      if (l$myTickets$entry != lOther$myTickets$entry) {
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

extension UtilityExtension$Query$GetMyTickets on Query$GetMyTickets {
  CopyWith$Query$GetMyTickets<Query$GetMyTickets> get copyWith =>
      CopyWith$Query$GetMyTickets(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetMyTickets<TRes> {
  factory CopyWith$Query$GetMyTickets(
    Query$GetMyTickets instance,
    TRes Function(Query$GetMyTickets) then,
  ) = _CopyWithImpl$Query$GetMyTickets;

  factory CopyWith$Query$GetMyTickets.stub(TRes res) =
      _CopyWithStubImpl$Query$GetMyTickets;

  TRes call({
    List<Query$GetMyTickets$myTickets>? myTickets,
    String? $__typename,
  });
  TRes myTickets(
      Iterable<Query$GetMyTickets$myTickets> Function(
              Iterable<
                  CopyWith$Query$GetMyTickets$myTickets<
                      Query$GetMyTickets$myTickets>>)
          _fn);
}

class _CopyWithImpl$Query$GetMyTickets<TRes>
    implements CopyWith$Query$GetMyTickets<TRes> {
  _CopyWithImpl$Query$GetMyTickets(
    this._instance,
    this._then,
  );

  final Query$GetMyTickets _instance;

  final TRes Function(Query$GetMyTickets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? myTickets = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetMyTickets(
        myTickets: myTickets == _undefined || myTickets == null
            ? _instance.myTickets
            : (myTickets as List<Query$GetMyTickets$myTickets>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes myTickets(
          Iterable<Query$GetMyTickets$myTickets> Function(
                  Iterable<
                      CopyWith$Query$GetMyTickets$myTickets<
                          Query$GetMyTickets$myTickets>>)
              _fn) =>
      call(
          myTickets: _fn(_instance.myTickets
              .map((e) => CopyWith$Query$GetMyTickets$myTickets(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetMyTickets<TRes>
    implements CopyWith$Query$GetMyTickets<TRes> {
  _CopyWithStubImpl$Query$GetMyTickets(this._res);

  TRes _res;

  call({
    List<Query$GetMyTickets$myTickets>? myTickets,
    String? $__typename,
  }) =>
      _res;

  myTickets(_fn) => _res;
}

const documentNodeQueryGetMyTickets = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetMyTickets'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'myTickets'),
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
            name: NameNode(value: 'code'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'used'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'buyerName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'buyerPhone'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'buyerEmail'),
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
            name: NameNode(value: 'event'),
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
]);
Query$GetMyTickets _parserFn$Query$GetMyTickets(Map<String, dynamic> data) =>
    Query$GetMyTickets.fromJson(data);
typedef OnQueryComplete$Query$GetMyTickets = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetMyTickets?,
);

class Options$Query$GetMyTickets
    extends graphql.QueryOptions<Query$GetMyTickets> {
  Options$Query$GetMyTickets({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetMyTickets? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetMyTickets? onComplete,
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
                    data == null ? null : _parserFn$Query$GetMyTickets(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetMyTickets,
          parserFn: _parserFn$Query$GetMyTickets,
        );

  final OnQueryComplete$Query$GetMyTickets? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetMyTickets
    extends graphql.WatchQueryOptions<Query$GetMyTickets> {
  WatchOptions$Query$GetMyTickets({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetMyTickets? typedOptimisticResult,
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
          document: documentNodeQueryGetMyTickets,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetMyTickets,
        );
}

class FetchMoreOptions$Query$GetMyTickets extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetMyTickets(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryGetMyTickets,
        );
}

extension ClientExtension$Query$GetMyTickets on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetMyTickets>> query$GetMyTickets(
          [Options$Query$GetMyTickets? options]) async =>
      await this.query(options ?? Options$Query$GetMyTickets());

  graphql.ObservableQuery<Query$GetMyTickets> watchQuery$GetMyTickets(
          [WatchOptions$Query$GetMyTickets? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetMyTickets());

  void writeQuery$GetMyTickets({
    required Query$GetMyTickets data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryGetMyTickets)),
        data: data.toJson(),
        broadcast: broadcast,
      );

  Query$GetMyTickets? readQuery$GetMyTickets({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetMyTickets)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetMyTickets.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetMyTickets> useQuery$GetMyTickets(
        [Options$Query$GetMyTickets? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$GetMyTickets());
graphql.ObservableQuery<Query$GetMyTickets> useWatchQuery$GetMyTickets(
        [WatchOptions$Query$GetMyTickets? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$GetMyTickets());

class Query$GetMyTickets$Widget
    extends graphql_flutter.Query<Query$GetMyTickets> {
  Query$GetMyTickets$Widget({
    widgets.Key? key,
    Options$Query$GetMyTickets? options,
    required graphql_flutter.QueryBuilder<Query$GetMyTickets> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetMyTickets(),
          builder: builder,
        );
}

class Query$GetMyTickets$myTickets {
  Query$GetMyTickets$myTickets({
    required this.id,
    required this.code,
    required this.used,
    this.buyerName,
    this.buyerPhone,
    this.buyerEmail,
    required this.createdAt,
    required this.event,
    this.$__typename = 'Ticket',
  });

  factory Query$GetMyTickets$myTickets.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$code = json['code'];
    final l$used = json['used'];
    final l$buyerName = json['buyerName'];
    final l$buyerPhone = json['buyerPhone'];
    final l$buyerEmail = json['buyerEmail'];
    final l$createdAt = json['createdAt'];
    final l$event = json['event'];
    final l$$__typename = json['__typename'];
    return Query$GetMyTickets$myTickets(
      id: (l$id as String),
      code: (l$code as String),
      used: (l$used as bool),
      buyerName: (l$buyerName as String?),
      buyerPhone: (l$buyerPhone as String?),
      buyerEmail: (l$buyerEmail as String?),
      createdAt: DateTime.parse((l$createdAt as String)),
      event: Query$GetMyTickets$myTickets$event.fromJson(
          (l$event as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String code;

  final bool used;

  final String? buyerName;

  final String? buyerPhone;

  final String? buyerEmail;

  final DateTime createdAt;

  final Query$GetMyTickets$myTickets$event event;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$used = used;
    _resultData['used'] = l$used;
    final l$buyerName = buyerName;
    _resultData['buyerName'] = l$buyerName;
    final l$buyerPhone = buyerPhone;
    _resultData['buyerPhone'] = l$buyerPhone;
    final l$buyerEmail = buyerEmail;
    _resultData['buyerEmail'] = l$buyerEmail;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$event = event;
    _resultData['event'] = l$event.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$code = code;
    final l$used = used;
    final l$buyerName = buyerName;
    final l$buyerPhone = buyerPhone;
    final l$buyerEmail = buyerEmail;
    final l$createdAt = createdAt;
    final l$event = event;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$code,
      l$used,
      l$buyerName,
      l$buyerPhone,
      l$buyerEmail,
      l$createdAt,
      l$event,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetMyTickets$myTickets ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$used = used;
    final lOther$used = other.used;
    if (l$used != lOther$used) {
      return false;
    }
    final l$buyerName = buyerName;
    final lOther$buyerName = other.buyerName;
    if (l$buyerName != lOther$buyerName) {
      return false;
    }
    final l$buyerPhone = buyerPhone;
    final lOther$buyerPhone = other.buyerPhone;
    if (l$buyerPhone != lOther$buyerPhone) {
      return false;
    }
    final l$buyerEmail = buyerEmail;
    final lOther$buyerEmail = other.buyerEmail;
    if (l$buyerEmail != lOther$buyerEmail) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
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

extension UtilityExtension$Query$GetMyTickets$myTickets
    on Query$GetMyTickets$myTickets {
  CopyWith$Query$GetMyTickets$myTickets<Query$GetMyTickets$myTickets>
      get copyWith => CopyWith$Query$GetMyTickets$myTickets(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetMyTickets$myTickets<TRes> {
  factory CopyWith$Query$GetMyTickets$myTickets(
    Query$GetMyTickets$myTickets instance,
    TRes Function(Query$GetMyTickets$myTickets) then,
  ) = _CopyWithImpl$Query$GetMyTickets$myTickets;

  factory CopyWith$Query$GetMyTickets$myTickets.stub(TRes res) =
      _CopyWithStubImpl$Query$GetMyTickets$myTickets;

  TRes call({
    String? id,
    String? code,
    bool? used,
    String? buyerName,
    String? buyerPhone,
    String? buyerEmail,
    DateTime? createdAt,
    Query$GetMyTickets$myTickets$event? event,
    String? $__typename,
  });
  CopyWith$Query$GetMyTickets$myTickets$event<TRes> get event;
}

class _CopyWithImpl$Query$GetMyTickets$myTickets<TRes>
    implements CopyWith$Query$GetMyTickets$myTickets<TRes> {
  _CopyWithImpl$Query$GetMyTickets$myTickets(
    this._instance,
    this._then,
  );

  final Query$GetMyTickets$myTickets _instance;

  final TRes Function(Query$GetMyTickets$myTickets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? code = _undefined,
    Object? used = _undefined,
    Object? buyerName = _undefined,
    Object? buyerPhone = _undefined,
    Object? buyerEmail = _undefined,
    Object? createdAt = _undefined,
    Object? event = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetMyTickets$myTickets(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        code: code == _undefined || code == null
            ? _instance.code
            : (code as String),
        used: used == _undefined || used == null
            ? _instance.used
            : (used as bool),
        buyerName: buyerName == _undefined
            ? _instance.buyerName
            : (buyerName as String?),
        buyerPhone: buyerPhone == _undefined
            ? _instance.buyerPhone
            : (buyerPhone as String?),
        buyerEmail: buyerEmail == _undefined
            ? _instance.buyerEmail
            : (buyerEmail as String?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        event: event == _undefined || event == null
            ? _instance.event
            : (event as Query$GetMyTickets$myTickets$event),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetMyTickets$myTickets$event<TRes> get event {
    final local$event = _instance.event;
    return CopyWith$Query$GetMyTickets$myTickets$event(
        local$event, (e) => call(event: e));
  }
}

class _CopyWithStubImpl$Query$GetMyTickets$myTickets<TRes>
    implements CopyWith$Query$GetMyTickets$myTickets<TRes> {
  _CopyWithStubImpl$Query$GetMyTickets$myTickets(this._res);

  TRes _res;

  call({
    String? id,
    String? code,
    bool? used,
    String? buyerName,
    String? buyerPhone,
    String? buyerEmail,
    DateTime? createdAt,
    Query$GetMyTickets$myTickets$event? event,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetMyTickets$myTickets$event<TRes> get event =>
      CopyWith$Query$GetMyTickets$myTickets$event.stub(_res);
}

class Query$GetMyTickets$myTickets$event {
  Query$GetMyTickets$myTickets$event({
    required this.id,
    required this.title,
    required this.date,
    required this.location,
    required this.picture,
    this.$__typename = 'Event',
  });

  factory Query$GetMyTickets$myTickets$event.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$date = json['date'];
    final l$location = json['location'];
    final l$picture = json['picture'];
    final l$$__typename = json['__typename'];
    return Query$GetMyTickets$myTickets$event(
      id: (l$id as String),
      title: (l$title as String),
      date: DateTime.parse((l$date as String)),
      location: (l$location as String),
      picture: (l$picture as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String title;

  final DateTime date;

  final String location;

  final String picture;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$date = date;
    _resultData['date'] = l$date.toIso8601String();
    final l$location = location;
    _resultData['location'] = l$location;
    final l$picture = picture;
    _resultData['picture'] = l$picture;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$date = date;
    final l$location = location;
    final l$picture = picture;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$date,
      l$location,
      l$picture,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetMyTickets$myTickets$event ||
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

extension UtilityExtension$Query$GetMyTickets$myTickets$event
    on Query$GetMyTickets$myTickets$event {
  CopyWith$Query$GetMyTickets$myTickets$event<
          Query$GetMyTickets$myTickets$event>
      get copyWith => CopyWith$Query$GetMyTickets$myTickets$event(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetMyTickets$myTickets$event<TRes> {
  factory CopyWith$Query$GetMyTickets$myTickets$event(
    Query$GetMyTickets$myTickets$event instance,
    TRes Function(Query$GetMyTickets$myTickets$event) then,
  ) = _CopyWithImpl$Query$GetMyTickets$myTickets$event;

  factory CopyWith$Query$GetMyTickets$myTickets$event.stub(TRes res) =
      _CopyWithStubImpl$Query$GetMyTickets$myTickets$event;

  TRes call({
    String? id,
    String? title,
    DateTime? date,
    String? location,
    String? picture,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetMyTickets$myTickets$event<TRes>
    implements CopyWith$Query$GetMyTickets$myTickets$event<TRes> {
  _CopyWithImpl$Query$GetMyTickets$myTickets$event(
    this._instance,
    this._then,
  );

  final Query$GetMyTickets$myTickets$event _instance;

  final TRes Function(Query$GetMyTickets$myTickets$event) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? date = _undefined,
    Object? location = _undefined,
    Object? picture = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetMyTickets$myTickets$event(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        date: date == _undefined || date == null
            ? _instance.date
            : (date as DateTime),
        location: location == _undefined || location == null
            ? _instance.location
            : (location as String),
        picture: picture == _undefined || picture == null
            ? _instance.picture
            : (picture as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetMyTickets$myTickets$event<TRes>
    implements CopyWith$Query$GetMyTickets$myTickets$event<TRes> {
  _CopyWithStubImpl$Query$GetMyTickets$myTickets$event(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    DateTime? date,
    String? location,
    String? picture,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$BuyTicket {
  factory Variables$Mutation$BuyTicket({required Input$BuyTicketInput input}) =>
      Variables$Mutation$BuyTicket._({
        r'input': input,
      });

  Variables$Mutation$BuyTicket._(this._$data);

  factory Variables$Mutation$BuyTicket.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$BuyTicketInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$BuyTicket._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$BuyTicketInput get input => (_$data['input'] as Input$BuyTicketInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$BuyTicket<Variables$Mutation$BuyTicket>
      get copyWith => CopyWith$Variables$Mutation$BuyTicket(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$BuyTicket ||
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

abstract class CopyWith$Variables$Mutation$BuyTicket<TRes> {
  factory CopyWith$Variables$Mutation$BuyTicket(
    Variables$Mutation$BuyTicket instance,
    TRes Function(Variables$Mutation$BuyTicket) then,
  ) = _CopyWithImpl$Variables$Mutation$BuyTicket;

  factory CopyWith$Variables$Mutation$BuyTicket.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$BuyTicket;

  TRes call({Input$BuyTicketInput? input});
}

class _CopyWithImpl$Variables$Mutation$BuyTicket<TRes>
    implements CopyWith$Variables$Mutation$BuyTicket<TRes> {
  _CopyWithImpl$Variables$Mutation$BuyTicket(
    this._instance,
    this._then,
  );

  final Variables$Mutation$BuyTicket _instance;

  final TRes Function(Variables$Mutation$BuyTicket) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$BuyTicket._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$BuyTicketInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$BuyTicket<TRes>
    implements CopyWith$Variables$Mutation$BuyTicket<TRes> {
  _CopyWithStubImpl$Variables$Mutation$BuyTicket(this._res);

  TRes _res;

  call({Input$BuyTicketInput? input}) => _res;
}

class Mutation$BuyTicket {
  Mutation$BuyTicket({
    required this.buyTicket,
    this.$__typename = 'Mutation',
  });

  factory Mutation$BuyTicket.fromJson(Map<String, dynamic> json) {
    final l$buyTicket = json['buyTicket'];
    final l$$__typename = json['__typename'];
    return Mutation$BuyTicket(
      buyTicket: Mutation$BuyTicket$buyTicket.fromJson(
          (l$buyTicket as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$BuyTicket$buyTicket buyTicket;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$buyTicket = buyTicket;
    _resultData['buyTicket'] = l$buyTicket.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$buyTicket = buyTicket;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$buyTicket,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$BuyTicket || runtimeType != other.runtimeType) {
      return false;
    }
    final l$buyTicket = buyTicket;
    final lOther$buyTicket = other.buyTicket;
    if (l$buyTicket != lOther$buyTicket) {
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

extension UtilityExtension$Mutation$BuyTicket on Mutation$BuyTicket {
  CopyWith$Mutation$BuyTicket<Mutation$BuyTicket> get copyWith =>
      CopyWith$Mutation$BuyTicket(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$BuyTicket<TRes> {
  factory CopyWith$Mutation$BuyTicket(
    Mutation$BuyTicket instance,
    TRes Function(Mutation$BuyTicket) then,
  ) = _CopyWithImpl$Mutation$BuyTicket;

  factory CopyWith$Mutation$BuyTicket.stub(TRes res) =
      _CopyWithStubImpl$Mutation$BuyTicket;

  TRes call({
    Mutation$BuyTicket$buyTicket? buyTicket,
    String? $__typename,
  });
  CopyWith$Mutation$BuyTicket$buyTicket<TRes> get buyTicket;
}

class _CopyWithImpl$Mutation$BuyTicket<TRes>
    implements CopyWith$Mutation$BuyTicket<TRes> {
  _CopyWithImpl$Mutation$BuyTicket(
    this._instance,
    this._then,
  );

  final Mutation$BuyTicket _instance;

  final TRes Function(Mutation$BuyTicket) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? buyTicket = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$BuyTicket(
        buyTicket: buyTicket == _undefined || buyTicket == null
            ? _instance.buyTicket
            : (buyTicket as Mutation$BuyTicket$buyTicket),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$BuyTicket$buyTicket<TRes> get buyTicket {
    final local$buyTicket = _instance.buyTicket;
    return CopyWith$Mutation$BuyTicket$buyTicket(
        local$buyTicket, (e) => call(buyTicket: e));
  }
}

class _CopyWithStubImpl$Mutation$BuyTicket<TRes>
    implements CopyWith$Mutation$BuyTicket<TRes> {
  _CopyWithStubImpl$Mutation$BuyTicket(this._res);

  TRes _res;

  call({
    Mutation$BuyTicket$buyTicket? buyTicket,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$BuyTicket$buyTicket<TRes> get buyTicket =>
      CopyWith$Mutation$BuyTicket$buyTicket.stub(_res);
}

const documentNodeMutationBuyTicket = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'BuyTicket'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'BuyTicketInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'buyTicket'),
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
            name: NameNode(value: 'isInternalPayment'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'ticket'),
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
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'isExternalPayment'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'paymentUri'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'stripeClientSecret'),
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
Mutation$BuyTicket _parserFn$Mutation$BuyTicket(Map<String, dynamic> data) =>
    Mutation$BuyTicket.fromJson(data);
typedef OnMutationCompleted$Mutation$BuyTicket = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$BuyTicket?,
);

class Options$Mutation$BuyTicket
    extends graphql.MutationOptions<Mutation$BuyTicket> {
  Options$Mutation$BuyTicket({
    String? operationName,
    required Variables$Mutation$BuyTicket variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$BuyTicket? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$BuyTicket? onCompleted,
    graphql.OnMutationUpdate<Mutation$BuyTicket>? update,
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
                    data == null ? null : _parserFn$Mutation$BuyTicket(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationBuyTicket,
          parserFn: _parserFn$Mutation$BuyTicket,
        );

  final OnMutationCompleted$Mutation$BuyTicket? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$BuyTicket
    extends graphql.WatchQueryOptions<Mutation$BuyTicket> {
  WatchOptions$Mutation$BuyTicket({
    String? operationName,
    required Variables$Mutation$BuyTicket variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$BuyTicket? typedOptimisticResult,
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
          document: documentNodeMutationBuyTicket,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$BuyTicket,
        );
}

extension ClientExtension$Mutation$BuyTicket on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$BuyTicket>> mutate$BuyTicket(
          Options$Mutation$BuyTicket options) async =>
      await this.mutate(options);

  graphql.ObservableQuery<Mutation$BuyTicket> watchMutation$BuyTicket(
          WatchOptions$Mutation$BuyTicket options) =>
      this.watchMutation(options);
}

class Mutation$BuyTicket$HookResult {
  Mutation$BuyTicket$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$BuyTicket runMutation;

  final graphql.QueryResult<Mutation$BuyTicket> result;
}

Mutation$BuyTicket$HookResult useMutation$BuyTicket(
    [WidgetOptions$Mutation$BuyTicket? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$BuyTicket());
  return Mutation$BuyTicket$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$BuyTicket> useWatchMutation$BuyTicket(
        WatchOptions$Mutation$BuyTicket options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$BuyTicket
    extends graphql.MutationOptions<Mutation$BuyTicket> {
  WidgetOptions$Mutation$BuyTicket({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$BuyTicket? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$BuyTicket? onCompleted,
    graphql.OnMutationUpdate<Mutation$BuyTicket>? update,
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
                    data == null ? null : _parserFn$Mutation$BuyTicket(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationBuyTicket,
          parserFn: _parserFn$Mutation$BuyTicket,
        );

  final OnMutationCompleted$Mutation$BuyTicket? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$BuyTicket
    = graphql.MultiSourceResult<Mutation$BuyTicket> Function(
  Variables$Mutation$BuyTicket, {
  Object? optimisticResult,
  Mutation$BuyTicket? typedOptimisticResult,
});
typedef Builder$Mutation$BuyTicket = widgets.Widget Function(
  RunMutation$Mutation$BuyTicket,
  graphql.QueryResult<Mutation$BuyTicket>?,
);

class Mutation$BuyTicket$Widget
    extends graphql_flutter.Mutation<Mutation$BuyTicket> {
  Mutation$BuyTicket$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$BuyTicket? options,
    required Builder$Mutation$BuyTicket builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$BuyTicket(),
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

class Mutation$BuyTicket$buyTicket {
  Mutation$BuyTicket$buyTicket({
    required this.isInternalPayment,
    this.ticket,
    required this.isExternalPayment,
    this.paymentUri,
    this.stripeClientSecret,
    this.$__typename = 'BuyTicketOutput',
  });

  factory Mutation$BuyTicket$buyTicket.fromJson(Map<String, dynamic> json) {
    final l$isInternalPayment = json['isInternalPayment'];
    final l$ticket = json['ticket'];
    final l$isExternalPayment = json['isExternalPayment'];
    final l$paymentUri = json['paymentUri'];
    final l$stripeClientSecret = json['stripeClientSecret'];
    final l$$__typename = json['__typename'];
    return Mutation$BuyTicket$buyTicket(
      isInternalPayment: (l$isInternalPayment as bool),
      ticket: l$ticket == null
          ? null
          : Mutation$BuyTicket$buyTicket$ticket.fromJson(
              (l$ticket as Map<String, dynamic>)),
      isExternalPayment: (l$isExternalPayment as bool),
      paymentUri: (l$paymentUri as String?),
      stripeClientSecret: (l$stripeClientSecret as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool isInternalPayment;

  final Mutation$BuyTicket$buyTicket$ticket? ticket;

  final bool isExternalPayment;

  final String? paymentUri;

  final String? stripeClientSecret;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$isInternalPayment = isInternalPayment;
    _resultData['isInternalPayment'] = l$isInternalPayment;
    final l$ticket = ticket;
    _resultData['ticket'] = l$ticket?.toJson();
    final l$isExternalPayment = isExternalPayment;
    _resultData['isExternalPayment'] = l$isExternalPayment;
    final l$paymentUri = paymentUri;
    _resultData['paymentUri'] = l$paymentUri;
    final l$stripeClientSecret = stripeClientSecret;
    _resultData['stripeClientSecret'] = l$stripeClientSecret;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$isInternalPayment = isInternalPayment;
    final l$ticket = ticket;
    final l$isExternalPayment = isExternalPayment;
    final l$paymentUri = paymentUri;
    final l$stripeClientSecret = stripeClientSecret;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$isInternalPayment,
      l$ticket,
      l$isExternalPayment,
      l$paymentUri,
      l$stripeClientSecret,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$BuyTicket$buyTicket ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$isInternalPayment = isInternalPayment;
    final lOther$isInternalPayment = other.isInternalPayment;
    if (l$isInternalPayment != lOther$isInternalPayment) {
      return false;
    }
    final l$ticket = ticket;
    final lOther$ticket = other.ticket;
    if (l$ticket != lOther$ticket) {
      return false;
    }
    final l$isExternalPayment = isExternalPayment;
    final lOther$isExternalPayment = other.isExternalPayment;
    if (l$isExternalPayment != lOther$isExternalPayment) {
      return false;
    }
    final l$paymentUri = paymentUri;
    final lOther$paymentUri = other.paymentUri;
    if (l$paymentUri != lOther$paymentUri) {
      return false;
    }
    final l$stripeClientSecret = stripeClientSecret;
    final lOther$stripeClientSecret = other.stripeClientSecret;
    if (l$stripeClientSecret != lOther$stripeClientSecret) {
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

extension UtilityExtension$Mutation$BuyTicket$buyTicket
    on Mutation$BuyTicket$buyTicket {
  CopyWith$Mutation$BuyTicket$buyTicket<Mutation$BuyTicket$buyTicket>
      get copyWith => CopyWith$Mutation$BuyTicket$buyTicket(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$BuyTicket$buyTicket<TRes> {
  factory CopyWith$Mutation$BuyTicket$buyTicket(
    Mutation$BuyTicket$buyTicket instance,
    TRes Function(Mutation$BuyTicket$buyTicket) then,
  ) = _CopyWithImpl$Mutation$BuyTicket$buyTicket;

  factory CopyWith$Mutation$BuyTicket$buyTicket.stub(TRes res) =
      _CopyWithStubImpl$Mutation$BuyTicket$buyTicket;

  TRes call({
    bool? isInternalPayment,
    Mutation$BuyTicket$buyTicket$ticket? ticket,
    bool? isExternalPayment,
    String? paymentUri,
    String? stripeClientSecret,
    String? $__typename,
  });
  CopyWith$Mutation$BuyTicket$buyTicket$ticket<TRes> get ticket;
}

class _CopyWithImpl$Mutation$BuyTicket$buyTicket<TRes>
    implements CopyWith$Mutation$BuyTicket$buyTicket<TRes> {
  _CopyWithImpl$Mutation$BuyTicket$buyTicket(
    this._instance,
    this._then,
  );

  final Mutation$BuyTicket$buyTicket _instance;

  final TRes Function(Mutation$BuyTicket$buyTicket) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? isInternalPayment = _undefined,
    Object? ticket = _undefined,
    Object? isExternalPayment = _undefined,
    Object? paymentUri = _undefined,
    Object? stripeClientSecret = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$BuyTicket$buyTicket(
        isInternalPayment:
            isInternalPayment == _undefined || isInternalPayment == null
                ? _instance.isInternalPayment
                : (isInternalPayment as bool),
        ticket: ticket == _undefined
            ? _instance.ticket
            : (ticket as Mutation$BuyTicket$buyTicket$ticket?),
        isExternalPayment:
            isExternalPayment == _undefined || isExternalPayment == null
                ? _instance.isExternalPayment
                : (isExternalPayment as bool),
        paymentUri: paymentUri == _undefined
            ? _instance.paymentUri
            : (paymentUri as String?),
        stripeClientSecret: stripeClientSecret == _undefined
            ? _instance.stripeClientSecret
            : (stripeClientSecret as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$BuyTicket$buyTicket$ticket<TRes> get ticket {
    final local$ticket = _instance.ticket;
    return local$ticket == null
        ? CopyWith$Mutation$BuyTicket$buyTicket$ticket.stub(_then(_instance))
        : CopyWith$Mutation$BuyTicket$buyTicket$ticket(
            local$ticket, (e) => call(ticket: e));
  }
}

class _CopyWithStubImpl$Mutation$BuyTicket$buyTicket<TRes>
    implements CopyWith$Mutation$BuyTicket$buyTicket<TRes> {
  _CopyWithStubImpl$Mutation$BuyTicket$buyTicket(this._res);

  TRes _res;

  call({
    bool? isInternalPayment,
    Mutation$BuyTicket$buyTicket$ticket? ticket,
    bool? isExternalPayment,
    String? paymentUri,
    String? stripeClientSecret,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$BuyTicket$buyTicket$ticket<TRes> get ticket =>
      CopyWith$Mutation$BuyTicket$buyTicket$ticket.stub(_res);
}

class Mutation$BuyTicket$buyTicket$ticket {
  Mutation$BuyTicket$buyTicket$ticket({
    required this.id,
    this.$__typename = 'Ticket',
  });

  factory Mutation$BuyTicket$buyTicket$ticket.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$BuyTicket$buyTicket$ticket(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$BuyTicket$buyTicket$ticket ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Mutation$BuyTicket$buyTicket$ticket
    on Mutation$BuyTicket$buyTicket$ticket {
  CopyWith$Mutation$BuyTicket$buyTicket$ticket<
          Mutation$BuyTicket$buyTicket$ticket>
      get copyWith => CopyWith$Mutation$BuyTicket$buyTicket$ticket(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$BuyTicket$buyTicket$ticket<TRes> {
  factory CopyWith$Mutation$BuyTicket$buyTicket$ticket(
    Mutation$BuyTicket$buyTicket$ticket instance,
    TRes Function(Mutation$BuyTicket$buyTicket$ticket) then,
  ) = _CopyWithImpl$Mutation$BuyTicket$buyTicket$ticket;

  factory CopyWith$Mutation$BuyTicket$buyTicket$ticket.stub(TRes res) =
      _CopyWithStubImpl$Mutation$BuyTicket$buyTicket$ticket;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$BuyTicket$buyTicket$ticket<TRes>
    implements CopyWith$Mutation$BuyTicket$buyTicket$ticket<TRes> {
  _CopyWithImpl$Mutation$BuyTicket$buyTicket$ticket(
    this._instance,
    this._then,
  );

  final Mutation$BuyTicket$buyTicket$ticket _instance;

  final TRes Function(Mutation$BuyTicket$buyTicket$ticket) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$BuyTicket$buyTicket$ticket(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$BuyTicket$buyTicket$ticket<TRes>
    implements CopyWith$Mutation$BuyTicket$buyTicket$ticket<TRes> {
  _CopyWithStubImpl$Mutation$BuyTicket$buyTicket$ticket(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$ScanTicket {
  factory Variables$Mutation$ScanTicket({
    required String code,
    required String eventId,
  }) =>
      Variables$Mutation$ScanTicket._({
        r'code': code,
        r'eventId': eventId,
      });

  Variables$Mutation$ScanTicket._(this._$data);

  factory Variables$Mutation$ScanTicket.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$code = data['code'];
    result$data['code'] = (l$code as String);
    final l$eventId = data['eventId'];
    result$data['eventId'] = (l$eventId as String);
    return Variables$Mutation$ScanTicket._(result$data);
  }

  Map<String, dynamic> _$data;

  String get code => (_$data['code'] as String);

  String get eventId => (_$data['eventId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$code = code;
    result$data['code'] = l$code;
    final l$eventId = eventId;
    result$data['eventId'] = l$eventId;
    return result$data;
  }

  CopyWith$Variables$Mutation$ScanTicket<Variables$Mutation$ScanTicket>
      get copyWith => CopyWith$Variables$Mutation$ScanTicket(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$ScanTicket ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
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
    final l$code = code;
    final l$eventId = eventId;
    return Object.hashAll([
      l$code,
      l$eventId,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$ScanTicket<TRes> {
  factory CopyWith$Variables$Mutation$ScanTicket(
    Variables$Mutation$ScanTicket instance,
    TRes Function(Variables$Mutation$ScanTicket) then,
  ) = _CopyWithImpl$Variables$Mutation$ScanTicket;

  factory CopyWith$Variables$Mutation$ScanTicket.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ScanTicket;

  TRes call({
    String? code,
    String? eventId,
  });
}

class _CopyWithImpl$Variables$Mutation$ScanTicket<TRes>
    implements CopyWith$Variables$Mutation$ScanTicket<TRes> {
  _CopyWithImpl$Variables$Mutation$ScanTicket(
    this._instance,
    this._then,
  );

  final Variables$Mutation$ScanTicket _instance;

  final TRes Function(Variables$Mutation$ScanTicket) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? code = _undefined,
    Object? eventId = _undefined,
  }) =>
      _then(Variables$Mutation$ScanTicket._({
        ..._instance._$data,
        if (code != _undefined && code != null) 'code': (code as String),
        if (eventId != _undefined && eventId != null)
          'eventId': (eventId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$ScanTicket<TRes>
    implements CopyWith$Variables$Mutation$ScanTicket<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ScanTicket(this._res);

  TRes _res;

  call({
    String? code,
    String? eventId,
  }) =>
      _res;
}

class Mutation$ScanTicket {
  Mutation$ScanTicket({
    required this.scanTicket,
    this.$__typename = 'Mutation',
  });

  factory Mutation$ScanTicket.fromJson(Map<String, dynamic> json) {
    final l$scanTicket = json['scanTicket'];
    final l$$__typename = json['__typename'];
    return Mutation$ScanTicket(
      scanTicket: Mutation$ScanTicket$scanTicket.fromJson(
          (l$scanTicket as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ScanTicket$scanTicket scanTicket;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$scanTicket = scanTicket;
    _resultData['scanTicket'] = l$scanTicket.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$scanTicket = scanTicket;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$scanTicket,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ScanTicket || runtimeType != other.runtimeType) {
      return false;
    }
    final l$scanTicket = scanTicket;
    final lOther$scanTicket = other.scanTicket;
    if (l$scanTicket != lOther$scanTicket) {
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

extension UtilityExtension$Mutation$ScanTicket on Mutation$ScanTicket {
  CopyWith$Mutation$ScanTicket<Mutation$ScanTicket> get copyWith =>
      CopyWith$Mutation$ScanTicket(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ScanTicket<TRes> {
  factory CopyWith$Mutation$ScanTicket(
    Mutation$ScanTicket instance,
    TRes Function(Mutation$ScanTicket) then,
  ) = _CopyWithImpl$Mutation$ScanTicket;

  factory CopyWith$Mutation$ScanTicket.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ScanTicket;

  TRes call({
    Mutation$ScanTicket$scanTicket? scanTicket,
    String? $__typename,
  });
  CopyWith$Mutation$ScanTicket$scanTicket<TRes> get scanTicket;
}

class _CopyWithImpl$Mutation$ScanTicket<TRes>
    implements CopyWith$Mutation$ScanTicket<TRes> {
  _CopyWithImpl$Mutation$ScanTicket(
    this._instance,
    this._then,
  );

  final Mutation$ScanTicket _instance;

  final TRes Function(Mutation$ScanTicket) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? scanTicket = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ScanTicket(
        scanTicket: scanTicket == _undefined || scanTicket == null
            ? _instance.scanTicket
            : (scanTicket as Mutation$ScanTicket$scanTicket),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$ScanTicket$scanTicket<TRes> get scanTicket {
    final local$scanTicket = _instance.scanTicket;
    return CopyWith$Mutation$ScanTicket$scanTicket(
        local$scanTicket, (e) => call(scanTicket: e));
  }
}

class _CopyWithStubImpl$Mutation$ScanTicket<TRes>
    implements CopyWith$Mutation$ScanTicket<TRes> {
  _CopyWithStubImpl$Mutation$ScanTicket(this._res);

  TRes _res;

  call({
    Mutation$ScanTicket$scanTicket? scanTicket,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$ScanTicket$scanTicket<TRes> get scanTicket =>
      CopyWith$Mutation$ScanTicket$scanTicket.stub(_res);
}

const documentNodeMutationScanTicket = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'ScanTicket'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'code')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'eventId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'scanTicket'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'code'),
            value: VariableNode(name: NameNode(value: 'code')),
          ),
          ArgumentNode(
            name: NameNode(value: 'eventId'),
            value: VariableNode(name: NameNode(value: 'eventId')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'ticket'),
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
                name: NameNode(value: 'used'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'buyerName'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'buyerPhone'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'buyerEmail'),
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
                name: NameNode(value: 'event'),
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
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
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
            name: NameNode(value: 'message'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'messageType'),
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
Mutation$ScanTicket _parserFn$Mutation$ScanTicket(Map<String, dynamic> data) =>
    Mutation$ScanTicket.fromJson(data);
typedef OnMutationCompleted$Mutation$ScanTicket = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$ScanTicket?,
);

class Options$Mutation$ScanTicket
    extends graphql.MutationOptions<Mutation$ScanTicket> {
  Options$Mutation$ScanTicket({
    String? operationName,
    required Variables$Mutation$ScanTicket variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ScanTicket? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ScanTicket? onCompleted,
    graphql.OnMutationUpdate<Mutation$ScanTicket>? update,
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
                    data == null ? null : _parserFn$Mutation$ScanTicket(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationScanTicket,
          parserFn: _parserFn$Mutation$ScanTicket,
        );

  final OnMutationCompleted$Mutation$ScanTicket? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$ScanTicket
    extends graphql.WatchQueryOptions<Mutation$ScanTicket> {
  WatchOptions$Mutation$ScanTicket({
    String? operationName,
    required Variables$Mutation$ScanTicket variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ScanTicket? typedOptimisticResult,
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
          document: documentNodeMutationScanTicket,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$ScanTicket,
        );
}

extension ClientExtension$Mutation$ScanTicket on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$ScanTicket>> mutate$ScanTicket(
          Options$Mutation$ScanTicket options) async =>
      await this.mutate(options);

  graphql.ObservableQuery<Mutation$ScanTicket> watchMutation$ScanTicket(
          WatchOptions$Mutation$ScanTicket options) =>
      this.watchMutation(options);
}

class Mutation$ScanTicket$HookResult {
  Mutation$ScanTicket$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$ScanTicket runMutation;

  final graphql.QueryResult<Mutation$ScanTicket> result;
}

Mutation$ScanTicket$HookResult useMutation$ScanTicket(
    [WidgetOptions$Mutation$ScanTicket? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$ScanTicket());
  return Mutation$ScanTicket$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$ScanTicket> useWatchMutation$ScanTicket(
        WatchOptions$Mutation$ScanTicket options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$ScanTicket
    extends graphql.MutationOptions<Mutation$ScanTicket> {
  WidgetOptions$Mutation$ScanTicket({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ScanTicket? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ScanTicket? onCompleted,
    graphql.OnMutationUpdate<Mutation$ScanTicket>? update,
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
                    data == null ? null : _parserFn$Mutation$ScanTicket(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationScanTicket,
          parserFn: _parserFn$Mutation$ScanTicket,
        );

  final OnMutationCompleted$Mutation$ScanTicket? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$ScanTicket
    = graphql.MultiSourceResult<Mutation$ScanTicket> Function(
  Variables$Mutation$ScanTicket, {
  Object? optimisticResult,
  Mutation$ScanTicket? typedOptimisticResult,
});
typedef Builder$Mutation$ScanTicket = widgets.Widget Function(
  RunMutation$Mutation$ScanTicket,
  graphql.QueryResult<Mutation$ScanTicket>?,
);

class Mutation$ScanTicket$Widget
    extends graphql_flutter.Mutation<Mutation$ScanTicket> {
  Mutation$ScanTicket$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$ScanTicket? options,
    required Builder$Mutation$ScanTicket builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$ScanTicket(),
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

class Mutation$ScanTicket$scanTicket {
  Mutation$ScanTicket$scanTicket({
    this.ticket,
    required this.message,
    required this.messageType,
    this.$__typename = 'ScanTicketOutput',
  });

  factory Mutation$ScanTicket$scanTicket.fromJson(Map<String, dynamic> json) {
    final l$ticket = json['ticket'];
    final l$message = json['message'];
    final l$messageType = json['messageType'];
    final l$$__typename = json['__typename'];
    return Mutation$ScanTicket$scanTicket(
      ticket: l$ticket == null
          ? null
          : Mutation$ScanTicket$scanTicket$ticket.fromJson(
              (l$ticket as Map<String, dynamic>)),
      message: (l$message as String),
      messageType:
          fromJson$Enum$ScanOutputMessageType((l$messageType as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ScanTicket$scanTicket$ticket? ticket;

  final String message;

  final Enum$ScanOutputMessageType messageType;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$ticket = ticket;
    _resultData['ticket'] = l$ticket?.toJson();
    final l$message = message;
    _resultData['message'] = l$message;
    final l$messageType = messageType;
    _resultData['messageType'] =
        toJson$Enum$ScanOutputMessageType(l$messageType);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$ticket = ticket;
    final l$message = message;
    final l$messageType = messageType;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$ticket,
      l$message,
      l$messageType,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ScanTicket$scanTicket ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$ticket = ticket;
    final lOther$ticket = other.ticket;
    if (l$ticket != lOther$ticket) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$messageType = messageType;
    final lOther$messageType = other.messageType;
    if (l$messageType != lOther$messageType) {
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

extension UtilityExtension$Mutation$ScanTicket$scanTicket
    on Mutation$ScanTicket$scanTicket {
  CopyWith$Mutation$ScanTicket$scanTicket<Mutation$ScanTicket$scanTicket>
      get copyWith => CopyWith$Mutation$ScanTicket$scanTicket(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ScanTicket$scanTicket<TRes> {
  factory CopyWith$Mutation$ScanTicket$scanTicket(
    Mutation$ScanTicket$scanTicket instance,
    TRes Function(Mutation$ScanTicket$scanTicket) then,
  ) = _CopyWithImpl$Mutation$ScanTicket$scanTicket;

  factory CopyWith$Mutation$ScanTicket$scanTicket.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ScanTicket$scanTicket;

  TRes call({
    Mutation$ScanTicket$scanTicket$ticket? ticket,
    String? message,
    Enum$ScanOutputMessageType? messageType,
    String? $__typename,
  });
  CopyWith$Mutation$ScanTicket$scanTicket$ticket<TRes> get ticket;
}

class _CopyWithImpl$Mutation$ScanTicket$scanTicket<TRes>
    implements CopyWith$Mutation$ScanTicket$scanTicket<TRes> {
  _CopyWithImpl$Mutation$ScanTicket$scanTicket(
    this._instance,
    this._then,
  );

  final Mutation$ScanTicket$scanTicket _instance;

  final TRes Function(Mutation$ScanTicket$scanTicket) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ticket = _undefined,
    Object? message = _undefined,
    Object? messageType = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ScanTicket$scanTicket(
        ticket: ticket == _undefined
            ? _instance.ticket
            : (ticket as Mutation$ScanTicket$scanTicket$ticket?),
        message: message == _undefined || message == null
            ? _instance.message
            : (message as String),
        messageType: messageType == _undefined || messageType == null
            ? _instance.messageType
            : (messageType as Enum$ScanOutputMessageType),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$ScanTicket$scanTicket$ticket<TRes> get ticket {
    final local$ticket = _instance.ticket;
    return local$ticket == null
        ? CopyWith$Mutation$ScanTicket$scanTicket$ticket.stub(_then(_instance))
        : CopyWith$Mutation$ScanTicket$scanTicket$ticket(
            local$ticket, (e) => call(ticket: e));
  }
}

class _CopyWithStubImpl$Mutation$ScanTicket$scanTicket<TRes>
    implements CopyWith$Mutation$ScanTicket$scanTicket<TRes> {
  _CopyWithStubImpl$Mutation$ScanTicket$scanTicket(this._res);

  TRes _res;

  call({
    Mutation$ScanTicket$scanTicket$ticket? ticket,
    String? message,
    Enum$ScanOutputMessageType? messageType,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$ScanTicket$scanTicket$ticket<TRes> get ticket =>
      CopyWith$Mutation$ScanTicket$scanTicket$ticket.stub(_res);
}

class Mutation$ScanTicket$scanTicket$ticket {
  Mutation$ScanTicket$scanTicket$ticket({
    required this.id,
    required this.used,
    this.buyerName,
    this.buyerPhone,
    this.buyerEmail,
    required this.createdAt,
    required this.event,
    this.user,
    this.$__typename = 'Ticket',
  });

  factory Mutation$ScanTicket$scanTicket$ticket.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$used = json['used'];
    final l$buyerName = json['buyerName'];
    final l$buyerPhone = json['buyerPhone'];
    final l$buyerEmail = json['buyerEmail'];
    final l$createdAt = json['createdAt'];
    final l$event = json['event'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Mutation$ScanTicket$scanTicket$ticket(
      id: (l$id as String),
      used: (l$used as bool),
      buyerName: (l$buyerName as String?),
      buyerPhone: (l$buyerPhone as String?),
      buyerEmail: (l$buyerEmail as String?),
      createdAt: DateTime.parse((l$createdAt as String)),
      event: Mutation$ScanTicket$scanTicket$ticket$event.fromJson(
          (l$event as Map<String, dynamic>)),
      user: l$user == null
          ? null
          : Mutation$ScanTicket$scanTicket$ticket$user.fromJson(
              (l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final bool used;

  final String? buyerName;

  final String? buyerPhone;

  final String? buyerEmail;

  final DateTime createdAt;

  final Mutation$ScanTicket$scanTicket$ticket$event event;

  final Mutation$ScanTicket$scanTicket$ticket$user? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$used = used;
    _resultData['used'] = l$used;
    final l$buyerName = buyerName;
    _resultData['buyerName'] = l$buyerName;
    final l$buyerPhone = buyerPhone;
    _resultData['buyerPhone'] = l$buyerPhone;
    final l$buyerEmail = buyerEmail;
    _resultData['buyerEmail'] = l$buyerEmail;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$event = event;
    _resultData['event'] = l$event.toJson();
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$used = used;
    final l$buyerName = buyerName;
    final l$buyerPhone = buyerPhone;
    final l$buyerEmail = buyerEmail;
    final l$createdAt = createdAt;
    final l$event = event;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$used,
      l$buyerName,
      l$buyerPhone,
      l$buyerEmail,
      l$createdAt,
      l$event,
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ScanTicket$scanTicket$ticket ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$used = used;
    final lOther$used = other.used;
    if (l$used != lOther$used) {
      return false;
    }
    final l$buyerName = buyerName;
    final lOther$buyerName = other.buyerName;
    if (l$buyerName != lOther$buyerName) {
      return false;
    }
    final l$buyerPhone = buyerPhone;
    final lOther$buyerPhone = other.buyerPhone;
    if (l$buyerPhone != lOther$buyerPhone) {
      return false;
    }
    final l$buyerEmail = buyerEmail;
    final lOther$buyerEmail = other.buyerEmail;
    if (l$buyerEmail != lOther$buyerEmail) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$event = event;
    final lOther$event = other.event;
    if (l$event != lOther$event) {
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

extension UtilityExtension$Mutation$ScanTicket$scanTicket$ticket
    on Mutation$ScanTicket$scanTicket$ticket {
  CopyWith$Mutation$ScanTicket$scanTicket$ticket<
          Mutation$ScanTicket$scanTicket$ticket>
      get copyWith => CopyWith$Mutation$ScanTicket$scanTicket$ticket(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ScanTicket$scanTicket$ticket<TRes> {
  factory CopyWith$Mutation$ScanTicket$scanTicket$ticket(
    Mutation$ScanTicket$scanTicket$ticket instance,
    TRes Function(Mutation$ScanTicket$scanTicket$ticket) then,
  ) = _CopyWithImpl$Mutation$ScanTicket$scanTicket$ticket;

  factory CopyWith$Mutation$ScanTicket$scanTicket$ticket.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ScanTicket$scanTicket$ticket;

  TRes call({
    String? id,
    bool? used,
    String? buyerName,
    String? buyerPhone,
    String? buyerEmail,
    DateTime? createdAt,
    Mutation$ScanTicket$scanTicket$ticket$event? event,
    Mutation$ScanTicket$scanTicket$ticket$user? user,
    String? $__typename,
  });
  CopyWith$Mutation$ScanTicket$scanTicket$ticket$event<TRes> get event;
  CopyWith$Mutation$ScanTicket$scanTicket$ticket$user<TRes> get user;
}

class _CopyWithImpl$Mutation$ScanTicket$scanTicket$ticket<TRes>
    implements CopyWith$Mutation$ScanTicket$scanTicket$ticket<TRes> {
  _CopyWithImpl$Mutation$ScanTicket$scanTicket$ticket(
    this._instance,
    this._then,
  );

  final Mutation$ScanTicket$scanTicket$ticket _instance;

  final TRes Function(Mutation$ScanTicket$scanTicket$ticket) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? used = _undefined,
    Object? buyerName = _undefined,
    Object? buyerPhone = _undefined,
    Object? buyerEmail = _undefined,
    Object? createdAt = _undefined,
    Object? event = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ScanTicket$scanTicket$ticket(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        used: used == _undefined || used == null
            ? _instance.used
            : (used as bool),
        buyerName: buyerName == _undefined
            ? _instance.buyerName
            : (buyerName as String?),
        buyerPhone: buyerPhone == _undefined
            ? _instance.buyerPhone
            : (buyerPhone as String?),
        buyerEmail: buyerEmail == _undefined
            ? _instance.buyerEmail
            : (buyerEmail as String?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        event: event == _undefined || event == null
            ? _instance.event
            : (event as Mutation$ScanTicket$scanTicket$ticket$event),
        user: user == _undefined
            ? _instance.user
            : (user as Mutation$ScanTicket$scanTicket$ticket$user?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$ScanTicket$scanTicket$ticket$event<TRes> get event {
    final local$event = _instance.event;
    return CopyWith$Mutation$ScanTicket$scanTicket$ticket$event(
        local$event, (e) => call(event: e));
  }

  CopyWith$Mutation$ScanTicket$scanTicket$ticket$user<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Mutation$ScanTicket$scanTicket$ticket$user.stub(
            _then(_instance))
        : CopyWith$Mutation$ScanTicket$scanTicket$ticket$user(
            local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Mutation$ScanTicket$scanTicket$ticket<TRes>
    implements CopyWith$Mutation$ScanTicket$scanTicket$ticket<TRes> {
  _CopyWithStubImpl$Mutation$ScanTicket$scanTicket$ticket(this._res);

  TRes _res;

  call({
    String? id,
    bool? used,
    String? buyerName,
    String? buyerPhone,
    String? buyerEmail,
    DateTime? createdAt,
    Mutation$ScanTicket$scanTicket$ticket$event? event,
    Mutation$ScanTicket$scanTicket$ticket$user? user,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$ScanTicket$scanTicket$ticket$event<TRes> get event =>
      CopyWith$Mutation$ScanTicket$scanTicket$ticket$event.stub(_res);

  CopyWith$Mutation$ScanTicket$scanTicket$ticket$user<TRes> get user =>
      CopyWith$Mutation$ScanTicket$scanTicket$ticket$user.stub(_res);
}

class Mutation$ScanTicket$scanTicket$ticket$event {
  Mutation$ScanTicket$scanTicket$ticket$event({
    required this.id,
    required this.title,
    this.$__typename = 'Event',
  });

  factory Mutation$ScanTicket$scanTicket$ticket$event.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return Mutation$ScanTicket$scanTicket$ticket$event(
      id: (l$id as String),
      title: (l$title as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String title;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ScanTicket$scanTicket$ticket$event ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$ScanTicket$scanTicket$ticket$event
    on Mutation$ScanTicket$scanTicket$ticket$event {
  CopyWith$Mutation$ScanTicket$scanTicket$ticket$event<
          Mutation$ScanTicket$scanTicket$ticket$event>
      get copyWith => CopyWith$Mutation$ScanTicket$scanTicket$ticket$event(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ScanTicket$scanTicket$ticket$event<TRes> {
  factory CopyWith$Mutation$ScanTicket$scanTicket$ticket$event(
    Mutation$ScanTicket$scanTicket$ticket$event instance,
    TRes Function(Mutation$ScanTicket$scanTicket$ticket$event) then,
  ) = _CopyWithImpl$Mutation$ScanTicket$scanTicket$ticket$event;

  factory CopyWith$Mutation$ScanTicket$scanTicket$ticket$event.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ScanTicket$scanTicket$ticket$event;

  TRes call({
    String? id,
    String? title,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ScanTicket$scanTicket$ticket$event<TRes>
    implements CopyWith$Mutation$ScanTicket$scanTicket$ticket$event<TRes> {
  _CopyWithImpl$Mutation$ScanTicket$scanTicket$ticket$event(
    this._instance,
    this._then,
  );

  final Mutation$ScanTicket$scanTicket$ticket$event _instance;

  final TRes Function(Mutation$ScanTicket$scanTicket$ticket$event) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ScanTicket$scanTicket$ticket$event(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$ScanTicket$scanTicket$ticket$event<TRes>
    implements CopyWith$Mutation$ScanTicket$scanTicket$ticket$event<TRes> {
  _CopyWithStubImpl$Mutation$ScanTicket$scanTicket$ticket$event(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$ScanTicket$scanTicket$ticket$user {
  Mutation$ScanTicket$scanTicket$ticket$user({
    required this.id,
    required this.name,
    this.$__typename = 'User',
  });

  factory Mutation$ScanTicket$scanTicket$ticket$user.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation$ScanTicket$scanTicket$ticket$user(
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
    if (other is! Mutation$ScanTicket$scanTicket$ticket$user ||
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

extension UtilityExtension$Mutation$ScanTicket$scanTicket$ticket$user
    on Mutation$ScanTicket$scanTicket$ticket$user {
  CopyWith$Mutation$ScanTicket$scanTicket$ticket$user<
          Mutation$ScanTicket$scanTicket$ticket$user>
      get copyWith => CopyWith$Mutation$ScanTicket$scanTicket$ticket$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ScanTicket$scanTicket$ticket$user<TRes> {
  factory CopyWith$Mutation$ScanTicket$scanTicket$ticket$user(
    Mutation$ScanTicket$scanTicket$ticket$user instance,
    TRes Function(Mutation$ScanTicket$scanTicket$ticket$user) then,
  ) = _CopyWithImpl$Mutation$ScanTicket$scanTicket$ticket$user;

  factory CopyWith$Mutation$ScanTicket$scanTicket$ticket$user.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ScanTicket$scanTicket$ticket$user;

  TRes call({
    String? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ScanTicket$scanTicket$ticket$user<TRes>
    implements CopyWith$Mutation$ScanTicket$scanTicket$ticket$user<TRes> {
  _CopyWithImpl$Mutation$ScanTicket$scanTicket$ticket$user(
    this._instance,
    this._then,
  );

  final Mutation$ScanTicket$scanTicket$ticket$user _instance;

  final TRes Function(Mutation$ScanTicket$scanTicket$ticket$user) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ScanTicket$scanTicket$ticket$user(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$ScanTicket$scanTicket$ticket$user<TRes>
    implements CopyWith$Mutation$ScanTicket$scanTicket$ticket$user<TRes> {
  _CopyWithStubImpl$Mutation$ScanTicket$scanTicket$ticket$user(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}
