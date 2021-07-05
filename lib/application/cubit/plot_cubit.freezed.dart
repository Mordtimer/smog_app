// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'plot_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PlotStateTearOff {
  const _$PlotStateTearOff();

  _Initial call({required String currentComponent}) {
    return _Initial(
      currentComponent: currentComponent,
    );
  }
}

/// @nodoc
const $PlotState = _$PlotStateTearOff();

/// @nodoc
mixin _$PlotState {
  String get currentComponent => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlotStateCopyWith<PlotState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlotStateCopyWith<$Res> {
  factory $PlotStateCopyWith(PlotState value, $Res Function(PlotState) then) =
      _$PlotStateCopyWithImpl<$Res>;
  $Res call({String currentComponent});
}

/// @nodoc
class _$PlotStateCopyWithImpl<$Res> implements $PlotStateCopyWith<$Res> {
  _$PlotStateCopyWithImpl(this._value, this._then);

  final PlotState _value;
  // ignore: unused_field
  final $Res Function(PlotState) _then;

  @override
  $Res call({
    Object? currentComponent = freezed,
  }) {
    return _then(_value.copyWith(
      currentComponent: currentComponent == freezed
          ? _value.currentComponent
          : currentComponent // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> implements $PlotStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call({String currentComponent});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$PlotStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? currentComponent = freezed,
  }) {
    return _then(_Initial(
      currentComponent: currentComponent == freezed
          ? _value.currentComponent
          : currentComponent // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({required this.currentComponent});

  @override
  final String currentComponent;

  @override
  String toString() {
    return 'PlotState(currentComponent: $currentComponent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initial &&
            (identical(other.currentComponent, currentComponent) ||
                const DeepCollectionEquality()
                    .equals(other.currentComponent, currentComponent)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentComponent);

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);
}

abstract class _Initial implements PlotState {
  const factory _Initial({required String currentComponent}) = _$_Initial;

  @override
  String get currentComponent => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
