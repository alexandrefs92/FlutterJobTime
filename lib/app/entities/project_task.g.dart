// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_task.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetProjectTaskCollection on Isar {
  IsarCollection<ProjectTask> get projectTasks => getCollection();
}

const ProjectTaskSchema = CollectionSchema(
  name: 'ProjectTask',
  schema:
      '{"name":"ProjectTask","idName":"ind","properties":[{"name":"created","type":"Long"},{"name":"duration","type":"Long"},{"name":"name","type":"String"}],"indexes":[],"links":[]}',
  idName: 'ind',
  propertyIds: {'created': 0, 'duration': 1, 'name': 2},
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {},
  backlinkLinkNames: {},
  getId: _projectTaskGetId,
  setId: _projectTaskSetId,
  getLinks: _projectTaskGetLinks,
  attachLinks: _projectTaskAttachLinks,
  serializeNative: _projectTaskSerializeNative,
  deserializeNative: _projectTaskDeserializeNative,
  deserializePropNative: _projectTaskDeserializePropNative,
  serializeWeb: _projectTaskSerializeWeb,
  deserializeWeb: _projectTaskDeserializeWeb,
  deserializePropWeb: _projectTaskDeserializePropWeb,
  version: 3,
);

int? _projectTaskGetId(ProjectTask object) {
  if (object.ind == Isar.autoIncrement) {
    return null;
  } else {
    return object.ind;
  }
}

void _projectTaskSetId(ProjectTask object, int id) {
  object.ind = id;
}

List<IsarLinkBase> _projectTaskGetLinks(ProjectTask object) {
  return [];
}

void _projectTaskSerializeNative(
    IsarCollection<ProjectTask> collection,
    IsarRawObject rawObj,
    ProjectTask object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.created;
  final _created = value0;
  final value1 = object.duration;
  final _duration = value1;
  final value2 = object.name;
  final _name = IsarBinaryWriter.utf8Encoder.convert(value2);
  dynamicSize += (_name.length) as int;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeDateTime(offsets[0], _created);
  writer.writeLong(offsets[1], _duration);
  writer.writeBytes(offsets[2], _name);
}

ProjectTask _projectTaskDeserializeNative(
    IsarCollection<ProjectTask> collection,
    int id,
    IsarBinaryReader reader,
    List<int> offsets) {
  final object = ProjectTask();
  object.created = reader.readDateTime(offsets[0]);
  object.duration = reader.readLong(offsets[1]);
  object.ind = id;
  object.name = reader.readString(offsets[2]);
  return object;
}

P _projectTaskDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _projectTaskSerializeWeb(
    IsarCollection<ProjectTask> collection, ProjectTask object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(
      jsObj, 'created', object.created.toUtc().millisecondsSinceEpoch);
  IsarNative.jsObjectSet(jsObj, 'duration', object.duration);
  IsarNative.jsObjectSet(jsObj, 'ind', object.ind);
  IsarNative.jsObjectSet(jsObj, 'name', object.name);
  return jsObj;
}

ProjectTask _projectTaskDeserializeWeb(
    IsarCollection<ProjectTask> collection, dynamic jsObj) {
  final object = ProjectTask();
  object.created = IsarNative.jsObjectGet(jsObj, 'created') != null
      ? DateTime.fromMillisecondsSinceEpoch(
              IsarNative.jsObjectGet(jsObj, 'created'),
              isUtc: true)
          .toLocal()
      : DateTime.fromMillisecondsSinceEpoch(0);
  object.duration =
      IsarNative.jsObjectGet(jsObj, 'duration') ?? double.negativeInfinity;
  object.ind = IsarNative.jsObjectGet(jsObj, 'ind');
  object.name = IsarNative.jsObjectGet(jsObj, 'name') ?? '';
  return object;
}

P _projectTaskDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'created':
      return (IsarNative.jsObjectGet(jsObj, 'created') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'created'),
                  isUtc: true)
              .toLocal()
          : DateTime.fromMillisecondsSinceEpoch(0)) as P;
    case 'duration':
      return (IsarNative.jsObjectGet(jsObj, 'duration') ??
          double.negativeInfinity) as P;
    case 'ind':
      return (IsarNative.jsObjectGet(jsObj, 'ind')) as P;
    case 'name':
      return (IsarNative.jsObjectGet(jsObj, 'name') ?? '') as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _projectTaskAttachLinks(IsarCollection col, int id, ProjectTask object) {}

extension ProjectTaskQueryWhereSort
    on QueryBuilder<ProjectTask, ProjectTask, QWhere> {
  QueryBuilder<ProjectTask, ProjectTask, QAfterWhere> anyInd() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension ProjectTaskQueryWhere
    on QueryBuilder<ProjectTask, ProjectTask, QWhereClause> {
  QueryBuilder<ProjectTask, ProjectTask, QAfterWhereClause> indEqualTo(
      int ind) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: ind,
      includeLower: true,
      upper: ind,
      includeUpper: true,
    ));
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterWhereClause> indNotEqualTo(
      int ind) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(
        IdWhereClause.lessThan(upper: ind, includeUpper: false),
      ).addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: ind, includeLower: false),
      );
    } else {
      return addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: ind, includeLower: false),
      ).addWhereClauseInternal(
        IdWhereClause.lessThan(upper: ind, includeUpper: false),
      );
    }
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterWhereClause> indGreaterThan(
      int ind,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: ind, includeLower: include),
    );
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterWhereClause> indLessThan(int ind,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: ind, includeUpper: include),
    );
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterWhereClause> indBetween(
    int lowerInd,
    int upperInd, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: lowerInd,
      includeLower: includeLower,
      upper: upperInd,
      includeUpper: includeUpper,
    ));
  }
}

extension ProjectTaskQueryFilter
    on QueryBuilder<ProjectTask, ProjectTask, QFilterCondition> {
  QueryBuilder<ProjectTask, ProjectTask, QAfterFilterCondition> createdEqualTo(
      DateTime value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'created',
      value: value,
    ));
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterFilterCondition>
      createdGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'created',
      value: value,
    ));
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterFilterCondition> createdLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'created',
      value: value,
    ));
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterFilterCondition> createdBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'created',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterFilterCondition> durationEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'duration',
      value: value,
    ));
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterFilterCondition>
      durationGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'duration',
      value: value,
    ));
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterFilterCondition>
      durationLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'duration',
      value: value,
    ));
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterFilterCondition> durationBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'duration',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterFilterCondition> indIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'ind',
      value: null,
    ));
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterFilterCondition> indEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'ind',
      value: value,
    ));
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterFilterCondition> indGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'ind',
      value: value,
    ));
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterFilterCondition> indLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'ind',
      value: value,
    ));
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterFilterCondition> indBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'ind',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterFilterCondition> nameLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'name',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'name',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension ProjectTaskQueryLinks
    on QueryBuilder<ProjectTask, ProjectTask, QFilterCondition> {}

extension ProjectTaskQueryWhereSortBy
    on QueryBuilder<ProjectTask, ProjectTask, QSortBy> {
  QueryBuilder<ProjectTask, ProjectTask, QAfterSortBy> sortByCreated() {
    return addSortByInternal('created', Sort.asc);
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterSortBy> sortByCreatedDesc() {
    return addSortByInternal('created', Sort.desc);
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterSortBy> sortByDuration() {
    return addSortByInternal('duration', Sort.asc);
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterSortBy> sortByDurationDesc() {
    return addSortByInternal('duration', Sort.desc);
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterSortBy> sortByInd() {
    return addSortByInternal('ind', Sort.asc);
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterSortBy> sortByIndDesc() {
    return addSortByInternal('ind', Sort.desc);
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterSortBy> sortByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterSortBy> sortByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }
}

extension ProjectTaskQueryWhereSortThenBy
    on QueryBuilder<ProjectTask, ProjectTask, QSortThenBy> {
  QueryBuilder<ProjectTask, ProjectTask, QAfterSortBy> thenByCreated() {
    return addSortByInternal('created', Sort.asc);
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterSortBy> thenByCreatedDesc() {
    return addSortByInternal('created', Sort.desc);
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterSortBy> thenByDuration() {
    return addSortByInternal('duration', Sort.asc);
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterSortBy> thenByDurationDesc() {
    return addSortByInternal('duration', Sort.desc);
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterSortBy> thenByInd() {
    return addSortByInternal('ind', Sort.asc);
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterSortBy> thenByIndDesc() {
    return addSortByInternal('ind', Sort.desc);
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterSortBy> thenByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<ProjectTask, ProjectTask, QAfterSortBy> thenByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }
}

extension ProjectTaskQueryWhereDistinct
    on QueryBuilder<ProjectTask, ProjectTask, QDistinct> {
  QueryBuilder<ProjectTask, ProjectTask, QDistinct> distinctByCreated() {
    return addDistinctByInternal('created');
  }

  QueryBuilder<ProjectTask, ProjectTask, QDistinct> distinctByDuration() {
    return addDistinctByInternal('duration');
  }

  QueryBuilder<ProjectTask, ProjectTask, QDistinct> distinctByInd() {
    return addDistinctByInternal('ind');
  }

  QueryBuilder<ProjectTask, ProjectTask, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('name', caseSensitive: caseSensitive);
  }
}

extension ProjectTaskQueryProperty
    on QueryBuilder<ProjectTask, ProjectTask, QQueryProperty> {
  QueryBuilder<ProjectTask, DateTime, QQueryOperations> createdProperty() {
    return addPropertyNameInternal('created');
  }

  QueryBuilder<ProjectTask, int, QQueryOperations> durationProperty() {
    return addPropertyNameInternal('duration');
  }

  QueryBuilder<ProjectTask, int?, QQueryOperations> indProperty() {
    return addPropertyNameInternal('ind');
  }

  QueryBuilder<ProjectTask, String, QQueryOperations> nameProperty() {
    return addPropertyNameInternal('name');
  }
}
