// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_list_screen_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TaskListScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllTasks,
    required TResult Function(String task) addTask,
    required TResult Function(String task) removeTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllTasks,
    TResult? Function(String task)? addTask,
    TResult? Function(String task)? removeTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllTasks,
    TResult Function(String task)? addTask,
    TResult Function(String task)? removeTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTasksEvent value) getAllTasks,
    required TResult Function(AddTaskEvent value) addTask,
    required TResult Function(RemoveTaskEvent value) removeTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTasksEvent value)? getAllTasks,
    TResult? Function(AddTaskEvent value)? addTask,
    TResult? Function(RemoveTaskEvent value)? removeTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTasksEvent value)? getAllTasks,
    TResult Function(AddTaskEvent value)? addTask,
    TResult Function(RemoveTaskEvent value)? removeTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskListScreenEventCopyWith<$Res> {
  factory $TaskListScreenEventCopyWith(
          TaskListScreenEvent value, $Res Function(TaskListScreenEvent) then) =
      _$TaskListScreenEventCopyWithImpl<$Res, TaskListScreenEvent>;
}

/// @nodoc
class _$TaskListScreenEventCopyWithImpl<$Res, $Val extends TaskListScreenEvent>
    implements $TaskListScreenEventCopyWith<$Res> {
  _$TaskListScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetTasksEventImplCopyWith<$Res> {
  factory _$$GetTasksEventImplCopyWith(
          _$GetTasksEventImpl value, $Res Function(_$GetTasksEventImpl) then) =
      __$$GetTasksEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetTasksEventImplCopyWithImpl<$Res>
    extends _$TaskListScreenEventCopyWithImpl<$Res, _$GetTasksEventImpl>
    implements _$$GetTasksEventImplCopyWith<$Res> {
  __$$GetTasksEventImplCopyWithImpl(
      _$GetTasksEventImpl _value, $Res Function(_$GetTasksEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetTasksEventImpl implements GetTasksEvent {
  const _$GetTasksEventImpl();

  @override
  String toString() {
    return 'TaskListScreenEvent.getAllTasks()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetTasksEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllTasks,
    required TResult Function(String task) addTask,
    required TResult Function(String task) removeTask,
  }) {
    return getAllTasks();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllTasks,
    TResult? Function(String task)? addTask,
    TResult? Function(String task)? removeTask,
  }) {
    return getAllTasks?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllTasks,
    TResult Function(String task)? addTask,
    TResult Function(String task)? removeTask,
    required TResult orElse(),
  }) {
    if (getAllTasks != null) {
      return getAllTasks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTasksEvent value) getAllTasks,
    required TResult Function(AddTaskEvent value) addTask,
    required TResult Function(RemoveTaskEvent value) removeTask,
  }) {
    return getAllTasks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTasksEvent value)? getAllTasks,
    TResult? Function(AddTaskEvent value)? addTask,
    TResult? Function(RemoveTaskEvent value)? removeTask,
  }) {
    return getAllTasks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTasksEvent value)? getAllTasks,
    TResult Function(AddTaskEvent value)? addTask,
    TResult Function(RemoveTaskEvent value)? removeTask,
    required TResult orElse(),
  }) {
    if (getAllTasks != null) {
      return getAllTasks(this);
    }
    return orElse();
  }
}

abstract class GetTasksEvent implements TaskListScreenEvent {
  const factory GetTasksEvent() = _$GetTasksEventImpl;
}

/// @nodoc
abstract class _$$AddTaskEventImplCopyWith<$Res> {
  factory _$$AddTaskEventImplCopyWith(
          _$AddTaskEventImpl value, $Res Function(_$AddTaskEventImpl) then) =
      __$$AddTaskEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String task});
}

/// @nodoc
class __$$AddTaskEventImplCopyWithImpl<$Res>
    extends _$TaskListScreenEventCopyWithImpl<$Res, _$AddTaskEventImpl>
    implements _$$AddTaskEventImplCopyWith<$Res> {
  __$$AddTaskEventImplCopyWithImpl(
      _$AddTaskEventImpl _value, $Res Function(_$AddTaskEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$AddTaskEventImpl(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddTaskEventImpl implements AddTaskEvent {
  const _$AddTaskEventImpl({required this.task});

  @override
  final String task;

  @override
  String toString() {
    return 'TaskListScreenEvent.addTask(task: $task)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTaskEventImpl &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTaskEventImplCopyWith<_$AddTaskEventImpl> get copyWith =>
      __$$AddTaskEventImplCopyWithImpl<_$AddTaskEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllTasks,
    required TResult Function(String task) addTask,
    required TResult Function(String task) removeTask,
  }) {
    return addTask(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllTasks,
    TResult? Function(String task)? addTask,
    TResult? Function(String task)? removeTask,
  }) {
    return addTask?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllTasks,
    TResult Function(String task)? addTask,
    TResult Function(String task)? removeTask,
    required TResult orElse(),
  }) {
    if (addTask != null) {
      return addTask(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTasksEvent value) getAllTasks,
    required TResult Function(AddTaskEvent value) addTask,
    required TResult Function(RemoveTaskEvent value) removeTask,
  }) {
    return addTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTasksEvent value)? getAllTasks,
    TResult? Function(AddTaskEvent value)? addTask,
    TResult? Function(RemoveTaskEvent value)? removeTask,
  }) {
    return addTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTasksEvent value)? getAllTasks,
    TResult Function(AddTaskEvent value)? addTask,
    TResult Function(RemoveTaskEvent value)? removeTask,
    required TResult orElse(),
  }) {
    if (addTask != null) {
      return addTask(this);
    }
    return orElse();
  }
}

abstract class AddTaskEvent implements TaskListScreenEvent {
  const factory AddTaskEvent({required final String task}) = _$AddTaskEventImpl;

  String get task;
  @JsonKey(ignore: true)
  _$$AddTaskEventImplCopyWith<_$AddTaskEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveTaskEventImplCopyWith<$Res> {
  factory _$$RemoveTaskEventImplCopyWith(_$RemoveTaskEventImpl value,
          $Res Function(_$RemoveTaskEventImpl) then) =
      __$$RemoveTaskEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String task});
}

/// @nodoc
class __$$RemoveTaskEventImplCopyWithImpl<$Res>
    extends _$TaskListScreenEventCopyWithImpl<$Res, _$RemoveTaskEventImpl>
    implements _$$RemoveTaskEventImplCopyWith<$Res> {
  __$$RemoveTaskEventImplCopyWithImpl(
      _$RemoveTaskEventImpl _value, $Res Function(_$RemoveTaskEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$RemoveTaskEventImpl(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveTaskEventImpl implements RemoveTaskEvent {
  const _$RemoveTaskEventImpl({required this.task});

  @override
  final String task;

  @override
  String toString() {
    return 'TaskListScreenEvent.removeTask(task: $task)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveTaskEventImpl &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveTaskEventImplCopyWith<_$RemoveTaskEventImpl> get copyWith =>
      __$$RemoveTaskEventImplCopyWithImpl<_$RemoveTaskEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllTasks,
    required TResult Function(String task) addTask,
    required TResult Function(String task) removeTask,
  }) {
    return removeTask(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllTasks,
    TResult? Function(String task)? addTask,
    TResult? Function(String task)? removeTask,
  }) {
    return removeTask?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllTasks,
    TResult Function(String task)? addTask,
    TResult Function(String task)? removeTask,
    required TResult orElse(),
  }) {
    if (removeTask != null) {
      return removeTask(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTasksEvent value) getAllTasks,
    required TResult Function(AddTaskEvent value) addTask,
    required TResult Function(RemoveTaskEvent value) removeTask,
  }) {
    return removeTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTasksEvent value)? getAllTasks,
    TResult? Function(AddTaskEvent value)? addTask,
    TResult? Function(RemoveTaskEvent value)? removeTask,
  }) {
    return removeTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTasksEvent value)? getAllTasks,
    TResult Function(AddTaskEvent value)? addTask,
    TResult Function(RemoveTaskEvent value)? removeTask,
    required TResult orElse(),
  }) {
    if (removeTask != null) {
      return removeTask(this);
    }
    return orElse();
  }
}

abstract class RemoveTaskEvent implements TaskListScreenEvent {
  const factory RemoveTaskEvent({required final String task}) =
      _$RemoveTaskEventImpl;

  String get task;
  @JsonKey(ignore: true)
  _$$RemoveTaskEventImplCopyWith<_$RemoveTaskEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TaskListScreenSR {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadFinished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadFinished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadFinished,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadFinished value) loadFinished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadFinished value)? loadFinished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadFinished value)? loadFinished,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskListScreenSRCopyWith<$Res> {
  factory $TaskListScreenSRCopyWith(
          TaskListScreenSR value, $Res Function(TaskListScreenSR) then) =
      _$TaskListScreenSRCopyWithImpl<$Res, TaskListScreenSR>;
}

/// @nodoc
class _$TaskListScreenSRCopyWithImpl<$Res, $Val extends TaskListScreenSR>
    implements $TaskListScreenSRCopyWith<$Res> {
  _$TaskListScreenSRCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadFinishedImplCopyWith<$Res> {
  factory _$$LoadFinishedImplCopyWith(
          _$LoadFinishedImpl value, $Res Function(_$LoadFinishedImpl) then) =
      __$$LoadFinishedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadFinishedImplCopyWithImpl<$Res>
    extends _$TaskListScreenSRCopyWithImpl<$Res, _$LoadFinishedImpl>
    implements _$$LoadFinishedImplCopyWith<$Res> {
  __$$LoadFinishedImplCopyWithImpl(
      _$LoadFinishedImpl _value, $Res Function(_$LoadFinishedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadFinishedImpl implements _LoadFinished {
  const _$LoadFinishedImpl();

  @override
  String toString() {
    return 'TaskListScreenSR.loadFinished()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadFinishedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadFinished,
  }) {
    return loadFinished();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadFinished,
  }) {
    return loadFinished?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadFinished,
    required TResult orElse(),
  }) {
    if (loadFinished != null) {
      return loadFinished();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadFinished value) loadFinished,
  }) {
    return loadFinished(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadFinished value)? loadFinished,
  }) {
    return loadFinished?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadFinished value)? loadFinished,
    required TResult orElse(),
  }) {
    if (loadFinished != null) {
      return loadFinished(this);
    }
    return orElse();
  }
}

abstract class _LoadFinished implements TaskListScreenSR {
  const factory _LoadFinished() = _$LoadFinishedImpl;
}

/// @nodoc
mixin _$TaskListScreenState {
  List<String> get tasks => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> tasks) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> tasks)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> tasks)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskListScreenStateData value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskListScreenStateData value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskListScreenStateData value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskListScreenStateCopyWith<TaskListScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskListScreenStateCopyWith<$Res> {
  factory $TaskListScreenStateCopyWith(
          TaskListScreenState value, $Res Function(TaskListScreenState) then) =
      _$TaskListScreenStateCopyWithImpl<$Res, TaskListScreenState>;
  @useResult
  $Res call({List<String> tasks});
}

/// @nodoc
class _$TaskListScreenStateCopyWithImpl<$Res, $Val extends TaskListScreenState>
    implements $TaskListScreenStateCopyWith<$Res> {
  _$TaskListScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
  }) {
    return _then(_value.copyWith(
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskListScreenStateDataImplCopyWith<$Res>
    implements $TaskListScreenStateCopyWith<$Res> {
  factory _$$TaskListScreenStateDataImplCopyWith(
          _$TaskListScreenStateDataImpl value,
          $Res Function(_$TaskListScreenStateDataImpl) then) =
      __$$TaskListScreenStateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> tasks});
}

/// @nodoc
class __$$TaskListScreenStateDataImplCopyWithImpl<$Res>
    extends _$TaskListScreenStateCopyWithImpl<$Res,
        _$TaskListScreenStateDataImpl>
    implements _$$TaskListScreenStateDataImplCopyWith<$Res> {
  __$$TaskListScreenStateDataImplCopyWithImpl(
      _$TaskListScreenStateDataImpl _value,
      $Res Function(_$TaskListScreenStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
  }) {
    return _then(_$TaskListScreenStateDataImpl(
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$TaskListScreenStateDataImpl extends TaskListScreenStateData {
  const _$TaskListScreenStateDataImpl({final List<String> tasks = const []})
      : _tasks = tasks,
        super._();

  final List<String> _tasks;
  @override
  @JsonKey()
  List<String> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  String toString() {
    return 'TaskListScreenState.data(tasks: $tasks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskListScreenStateDataImpl &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tasks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskListScreenStateDataImplCopyWith<_$TaskListScreenStateDataImpl>
      get copyWith => __$$TaskListScreenStateDataImplCopyWithImpl<
          _$TaskListScreenStateDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> tasks) data,
  }) {
    return data(tasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> tasks)? data,
  }) {
    return data?.call(tasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> tasks)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(tasks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskListScreenStateData value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskListScreenStateData value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskListScreenStateData value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class TaskListScreenStateData extends TaskListScreenState {
  const factory TaskListScreenStateData({final List<String> tasks}) =
      _$TaskListScreenStateDataImpl;
  const TaskListScreenStateData._() : super._();

  @override
  List<String> get tasks;
  @override
  @JsonKey(ignore: true)
  _$$TaskListScreenStateDataImplCopyWith<_$TaskListScreenStateDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
