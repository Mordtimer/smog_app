// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'webservice_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WebserviceEventTearOff {
  const _$WebserviceEventTearOff();

  _fetchData fetchData({required int len, required int lat}) {
    return _fetchData(
      len: len,
      lat: lat,
    );
  }

  _reciveCity reciveCity({required String city}) {
    return _reciveCity(
      city: city,
    );
  }
}

/// @nodoc
const $WebserviceEvent = _$WebserviceEventTearOff();

/// @nodoc
mixin _$WebserviceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int len, int lat) fetchData,
    required TResult Function(String city) reciveCity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int len, int lat)? fetchData,
    TResult Function(String city)? reciveCity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_fetchData value) fetchData,
    required TResult Function(_reciveCity value) reciveCity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_fetchData value)? fetchData,
    TResult Function(_reciveCity value)? reciveCity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebserviceEventCopyWith<$Res> {
  factory $WebserviceEventCopyWith(
          WebserviceEvent value, $Res Function(WebserviceEvent) then) =
      _$WebserviceEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$WebserviceEventCopyWithImpl<$Res>
    implements $WebserviceEventCopyWith<$Res> {
  _$WebserviceEventCopyWithImpl(this._value, this._then);

  final WebserviceEvent _value;
  // ignore: unused_field
  final $Res Function(WebserviceEvent) _then;
}

/// @nodoc
abstract class _$fetchDataCopyWith<$Res> {
  factory _$fetchDataCopyWith(
          _fetchData value, $Res Function(_fetchData) then) =
      __$fetchDataCopyWithImpl<$Res>;
  $Res call({int len, int lat});
}

/// @nodoc
class __$fetchDataCopyWithImpl<$Res> extends _$WebserviceEventCopyWithImpl<$Res>
    implements _$fetchDataCopyWith<$Res> {
  __$fetchDataCopyWithImpl(_fetchData _value, $Res Function(_fetchData) _then)
      : super(_value, (v) => _then(v as _fetchData));

  @override
  _fetchData get _value => super._value as _fetchData;

  @override
  $Res call({
    Object? len = freezed,
    Object? lat = freezed,
  }) {
    return _then(_fetchData(
      len: len == freezed
          ? _value.len
          : len // ignore: cast_nullable_to_non_nullable
              as int,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_fetchData with DiagnosticableTreeMixin implements _fetchData {
  const _$_fetchData({required this.len, required this.lat});

  @override
  final int len;
  @override
  final int lat;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WebserviceEvent.fetchData(len: $len, lat: $lat)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WebserviceEvent.fetchData'))
      ..add(DiagnosticsProperty('len', len))
      ..add(DiagnosticsProperty('lat', lat));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _fetchData &&
            (identical(other.len, len) ||
                const DeepCollectionEquality().equals(other.len, len)) &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(len) ^
      const DeepCollectionEquality().hash(lat);

  @JsonKey(ignore: true)
  @override
  _$fetchDataCopyWith<_fetchData> get copyWith =>
      __$fetchDataCopyWithImpl<_fetchData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int len, int lat) fetchData,
    required TResult Function(String city) reciveCity,
  }) {
    return fetchData(len, lat);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int len, int lat)? fetchData,
    TResult Function(String city)? reciveCity,
    required TResult orElse(),
  }) {
    if (fetchData != null) {
      return fetchData(len, lat);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_fetchData value) fetchData,
    required TResult Function(_reciveCity value) reciveCity,
  }) {
    return fetchData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_fetchData value)? fetchData,
    TResult Function(_reciveCity value)? reciveCity,
    required TResult orElse(),
  }) {
    if (fetchData != null) {
      return fetchData(this);
    }
    return orElse();
  }
}

abstract class _fetchData implements WebserviceEvent {
  const factory _fetchData({required int len, required int lat}) = _$_fetchData;

  int get len => throw _privateConstructorUsedError;
  int get lat => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$fetchDataCopyWith<_fetchData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$reciveCityCopyWith<$Res> {
  factory _$reciveCityCopyWith(
          _reciveCity value, $Res Function(_reciveCity) then) =
      __$reciveCityCopyWithImpl<$Res>;
  $Res call({String city});
}

/// @nodoc
class __$reciveCityCopyWithImpl<$Res>
    extends _$WebserviceEventCopyWithImpl<$Res>
    implements _$reciveCityCopyWith<$Res> {
  __$reciveCityCopyWithImpl(
      _reciveCity _value, $Res Function(_reciveCity) _then)
      : super(_value, (v) => _then(v as _reciveCity));

  @override
  _reciveCity get _value => super._value as _reciveCity;

  @override
  $Res call({
    Object? city = freezed,
  }) {
    return _then(_reciveCity(
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_reciveCity with DiagnosticableTreeMixin implements _reciveCity {
  const _$_reciveCity({required this.city});

  @override
  final String city;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WebserviceEvent.reciveCity(city: $city)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WebserviceEvent.reciveCity'))
      ..add(DiagnosticsProperty('city', city));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _reciveCity &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(city);

  @JsonKey(ignore: true)
  @override
  _$reciveCityCopyWith<_reciveCity> get copyWith =>
      __$reciveCityCopyWithImpl<_reciveCity>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int len, int lat) fetchData,
    required TResult Function(String city) reciveCity,
  }) {
    return reciveCity(city);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int len, int lat)? fetchData,
    TResult Function(String city)? reciveCity,
    required TResult orElse(),
  }) {
    if (reciveCity != null) {
      return reciveCity(city);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_fetchData value) fetchData,
    required TResult Function(_reciveCity value) reciveCity,
  }) {
    return reciveCity(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_fetchData value)? fetchData,
    TResult Function(_reciveCity value)? reciveCity,
    required TResult orElse(),
  }) {
    if (reciveCity != null) {
      return reciveCity(this);
    }
    return orElse();
  }
}

abstract class _reciveCity implements WebserviceEvent {
  const factory _reciveCity({required String city}) = _$_reciveCity;

  String get city => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$reciveCityCopyWith<_reciveCity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$WebserviceStateTearOff {
  const _$WebserviceStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _DataRecived dataRecived(
      {required PollutionData pollutionData, required String city}) {
    return _DataRecived(
      pollutionData: pollutionData,
      city: city,
    );
  }

  _LoadFailure loadFailure() {
    return const _LoadFailure();
  }

  _SelectedCity selectedCity({required String city}) {
    return _SelectedCity(
      city: city,
    );
  }
}

/// @nodoc
const $WebserviceState = _$WebserviceStateTearOff();

/// @nodoc
mixin _$WebserviceState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(PollutionData pollutionData, String city)
        dataRecived,
    required TResult Function() loadFailure,
    required TResult Function(String city) selectedCity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(PollutionData pollutionData, String city)? dataRecived,
    TResult Function()? loadFailure,
    TResult Function(String city)? selectedCity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_DataRecived value) dataRecived,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_SelectedCity value) selectedCity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_DataRecived value)? dataRecived,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_SelectedCity value)? selectedCity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebserviceStateCopyWith<$Res> {
  factory $WebserviceStateCopyWith(
          WebserviceState value, $Res Function(WebserviceState) then) =
      _$WebserviceStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$WebserviceStateCopyWithImpl<$Res>
    implements $WebserviceStateCopyWith<$Res> {
  _$WebserviceStateCopyWithImpl(this._value, this._then);

  final WebserviceState _value;
  // ignore: unused_field
  final $Res Function(WebserviceState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$WebserviceStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial with DiagnosticableTreeMixin implements _Initial {
  const _$_Initial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WebserviceState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'WebserviceState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(PollutionData pollutionData, String city)
        dataRecived,
    required TResult Function() loadFailure,
    required TResult Function(String city) selectedCity,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(PollutionData pollutionData, String city)? dataRecived,
    TResult Function()? loadFailure,
    TResult Function(String city)? selectedCity,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_DataRecived value) dataRecived,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_SelectedCity value) selectedCity,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_DataRecived value)? dataRecived,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_SelectedCity value)? selectedCity,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements WebserviceState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$WebserviceStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc

class _$_LoadInProgress
    with DiagnosticableTreeMixin
    implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WebserviceState.loadInProgress()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WebserviceState.loadInProgress'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(PollutionData pollutionData, String city)
        dataRecived,
    required TResult Function() loadFailure,
    required TResult Function(String city) selectedCity,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(PollutionData pollutionData, String city)? dataRecived,
    TResult Function()? loadFailure,
    TResult Function(String city)? selectedCity,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_DataRecived value) dataRecived,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_SelectedCity value) selectedCity,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_DataRecived value)? dataRecived,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_SelectedCity value)? selectedCity,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements WebserviceState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$DataRecivedCopyWith<$Res> {
  factory _$DataRecivedCopyWith(
          _DataRecived value, $Res Function(_DataRecived) then) =
      __$DataRecivedCopyWithImpl<$Res>;
  $Res call({PollutionData pollutionData, String city});
}

/// @nodoc
class __$DataRecivedCopyWithImpl<$Res>
    extends _$WebserviceStateCopyWithImpl<$Res>
    implements _$DataRecivedCopyWith<$Res> {
  __$DataRecivedCopyWithImpl(
      _DataRecived _value, $Res Function(_DataRecived) _then)
      : super(_value, (v) => _then(v as _DataRecived));

  @override
  _DataRecived get _value => super._value as _DataRecived;

  @override
  $Res call({
    Object? pollutionData = freezed,
    Object? city = freezed,
  }) {
    return _then(_DataRecived(
      pollutionData: pollutionData == freezed
          ? _value.pollutionData
          : pollutionData // ignore: cast_nullable_to_non_nullable
              as PollutionData,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DataRecived with DiagnosticableTreeMixin implements _DataRecived {
  const _$_DataRecived({required this.pollutionData, required this.city});

  @override
  final PollutionData pollutionData;
  @override
  final String city;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WebserviceState.dataRecived(pollutionData: $pollutionData, city: $city)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WebserviceState.dataRecived'))
      ..add(DiagnosticsProperty('pollutionData', pollutionData))
      ..add(DiagnosticsProperty('city', city));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DataRecived &&
            (identical(other.pollutionData, pollutionData) ||
                const DeepCollectionEquality()
                    .equals(other.pollutionData, pollutionData)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(pollutionData) ^
      const DeepCollectionEquality().hash(city);

  @JsonKey(ignore: true)
  @override
  _$DataRecivedCopyWith<_DataRecived> get copyWith =>
      __$DataRecivedCopyWithImpl<_DataRecived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(PollutionData pollutionData, String city)
        dataRecived,
    required TResult Function() loadFailure,
    required TResult Function(String city) selectedCity,
  }) {
    return dataRecived(pollutionData, city);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(PollutionData pollutionData, String city)? dataRecived,
    TResult Function()? loadFailure,
    TResult Function(String city)? selectedCity,
    required TResult orElse(),
  }) {
    if (dataRecived != null) {
      return dataRecived(pollutionData, city);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_DataRecived value) dataRecived,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_SelectedCity value) selectedCity,
  }) {
    return dataRecived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_DataRecived value)? dataRecived,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_SelectedCity value)? selectedCity,
    required TResult orElse(),
  }) {
    if (dataRecived != null) {
      return dataRecived(this);
    }
    return orElse();
  }
}

abstract class _DataRecived implements WebserviceState {
  const factory _DataRecived(
      {required PollutionData pollutionData,
      required String city}) = _$_DataRecived;

  PollutionData get pollutionData => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DataRecivedCopyWith<_DataRecived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$WebserviceStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;
}

/// @nodoc

class _$_LoadFailure with DiagnosticableTreeMixin implements _LoadFailure {
  const _$_LoadFailure();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WebserviceState.loadFailure()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'WebserviceState.loadFailure'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(PollutionData pollutionData, String city)
        dataRecived,
    required TResult Function() loadFailure,
    required TResult Function(String city) selectedCity,
  }) {
    return loadFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(PollutionData pollutionData, String city)? dataRecived,
    TResult Function()? loadFailure,
    TResult Function(String city)? selectedCity,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_DataRecived value) dataRecived,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_SelectedCity value) selectedCity,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_DataRecived value)? dataRecived,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_SelectedCity value)? selectedCity,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements WebserviceState {
  const factory _LoadFailure() = _$_LoadFailure;
}

/// @nodoc
abstract class _$SelectedCityCopyWith<$Res> {
  factory _$SelectedCityCopyWith(
          _SelectedCity value, $Res Function(_SelectedCity) then) =
      __$SelectedCityCopyWithImpl<$Res>;
  $Res call({String city});
}

/// @nodoc
class __$SelectedCityCopyWithImpl<$Res>
    extends _$WebserviceStateCopyWithImpl<$Res>
    implements _$SelectedCityCopyWith<$Res> {
  __$SelectedCityCopyWithImpl(
      _SelectedCity _value, $Res Function(_SelectedCity) _then)
      : super(_value, (v) => _then(v as _SelectedCity));

  @override
  _SelectedCity get _value => super._value as _SelectedCity;

  @override
  $Res call({
    Object? city = freezed,
  }) {
    return _then(_SelectedCity(
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SelectedCity with DiagnosticableTreeMixin implements _SelectedCity {
  const _$_SelectedCity({required this.city});

  @override
  final String city;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WebserviceState.selectedCity(city: $city)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WebserviceState.selectedCity'))
      ..add(DiagnosticsProperty('city', city));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SelectedCity &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(city);

  @JsonKey(ignore: true)
  @override
  _$SelectedCityCopyWith<_SelectedCity> get copyWith =>
      __$SelectedCityCopyWithImpl<_SelectedCity>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(PollutionData pollutionData, String city)
        dataRecived,
    required TResult Function() loadFailure,
    required TResult Function(String city) selectedCity,
  }) {
    return selectedCity(city);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(PollutionData pollutionData, String city)? dataRecived,
    TResult Function()? loadFailure,
    TResult Function(String city)? selectedCity,
    required TResult orElse(),
  }) {
    if (selectedCity != null) {
      return selectedCity(city);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_DataRecived value) dataRecived,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_SelectedCity value) selectedCity,
  }) {
    return selectedCity(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_DataRecived value)? dataRecived,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_SelectedCity value)? selectedCity,
    required TResult orElse(),
  }) {
    if (selectedCity != null) {
      return selectedCity(this);
    }
    return orElse();
  }
}

abstract class _SelectedCity implements WebserviceState {
  const factory _SelectedCity({required String city}) = _$_SelectedCity;

  String get city => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SelectedCityCopyWith<_SelectedCity> get copyWith =>
      throw _privateConstructorUsedError;
}
