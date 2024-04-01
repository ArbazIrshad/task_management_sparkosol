// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_task_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeleteTaskState {
  String? get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeleteTaskStateCopyWith<DeleteTaskState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteTaskStateCopyWith<$Res> {
  factory $DeleteTaskStateCopyWith(
          DeleteTaskState value, $Res Function(DeleteTaskState) then) =
      _$DeleteTaskStateCopyWithImpl<$Res, DeleteTaskState>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$DeleteTaskStateCopyWithImpl<$Res, $Val extends DeleteTaskState>
    implements $DeleteTaskStateCopyWith<$Res> {
  _$DeleteTaskStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeleteTaskStateImplCopyWith<$Res>
    implements $DeleteTaskStateCopyWith<$Res> {
  factory _$$DeleteTaskStateImplCopyWith(_$DeleteTaskStateImpl value,
          $Res Function(_$DeleteTaskStateImpl) then) =
      __$$DeleteTaskStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$DeleteTaskStateImplCopyWithImpl<$Res>
    extends _$DeleteTaskStateCopyWithImpl<$Res, _$DeleteTaskStateImpl>
    implements _$$DeleteTaskStateImplCopyWith<$Res> {
  __$$DeleteTaskStateImplCopyWithImpl(
      _$DeleteTaskStateImpl _value, $Res Function(_$DeleteTaskStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$DeleteTaskStateImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DeleteTaskStateImpl implements _DeleteTaskState {
  const _$DeleteTaskStateImpl({this.id});

  @override
  final String? id;

  @override
  String toString() {
    return 'DeleteTaskState(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTaskStateImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteTaskStateImplCopyWith<_$DeleteTaskStateImpl> get copyWith =>
      __$$DeleteTaskStateImplCopyWithImpl<_$DeleteTaskStateImpl>(
          this, _$identity);
}

abstract class _DeleteTaskState implements DeleteTaskState {
  const factory _DeleteTaskState({final String? id}) = _$DeleteTaskStateImpl;

  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$DeleteTaskStateImplCopyWith<_$DeleteTaskStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
