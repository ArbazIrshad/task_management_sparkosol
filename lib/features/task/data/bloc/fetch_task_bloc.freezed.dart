// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetch_task_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FetchTasksState {
  List<Task> get tasks => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FetchTasksStateCopyWith<FetchTasksState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchTasksStateCopyWith<$Res> {
  factory $FetchTasksStateCopyWith(
          FetchTasksState value, $Res Function(FetchTasksState) then) =
      _$FetchTasksStateCopyWithImpl<$Res, FetchTasksState>;
  @useResult
  $Res call({List<Task> tasks, bool isLoading, String? error});
}

/// @nodoc
class _$FetchTasksStateCopyWithImpl<$Res, $Val extends FetchTasksState>
    implements $FetchTasksStateCopyWith<$Res> {
  _$FetchTasksStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchTasksStateImplCopyWith<$Res>
    implements $FetchTasksStateCopyWith<$Res> {
  factory _$$FetchTasksStateImplCopyWith(_$FetchTasksStateImpl value,
          $Res Function(_$FetchTasksStateImpl) then) =
      __$$FetchTasksStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Task> tasks, bool isLoading, String? error});
}

/// @nodoc
class __$$FetchTasksStateImplCopyWithImpl<$Res>
    extends _$FetchTasksStateCopyWithImpl<$Res, _$FetchTasksStateImpl>
    implements _$$FetchTasksStateImplCopyWith<$Res> {
  __$$FetchTasksStateImplCopyWithImpl(
      _$FetchTasksStateImpl _value, $Res Function(_$FetchTasksStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_$FetchTasksStateImpl(
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FetchTasksStateImpl implements _FetchTasksState {
  const _$FetchTasksStateImpl(
      {required final List<Task> tasks, this.isLoading = false, this.error})
      : _tasks = tasks;

  final List<Task> _tasks;
  @override
  List<Task> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;

  @override
  String toString() {
    return 'FetchTasksState(tasks: $tasks, isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchTasksStateImpl &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_tasks), isLoading, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchTasksStateImplCopyWith<_$FetchTasksStateImpl> get copyWith =>
      __$$FetchTasksStateImplCopyWithImpl<_$FetchTasksStateImpl>(
          this, _$identity);
}

abstract class _FetchTasksState implements FetchTasksState {
  const factory _FetchTasksState(
      {required final List<Task> tasks,
      final bool isLoading,
      final String? error}) = _$FetchTasksStateImpl;

  @override
  List<Task> get tasks;
  @override
  bool get isLoading;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$FetchTasksStateImplCopyWith<_$FetchTasksStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
