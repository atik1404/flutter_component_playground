// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent()';
}


}

/// @nodoc
class $HomeEventCopyWith<$Res>  {
$HomeEventCopyWith(HomeEvent _, $Res Function(HomeEvent) __);
}


/// Adds pattern-matching-related methods to [HomeEvent].
extension HomeEventPatterns on HomeEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( UpdateSliderIndex value)?  updateSliderIndex,TResult Function( FetchUpcomingMovies value)?  fetchUpcomingMovies,TResult Function( FetchMovies value)?  fetchMovies,TResult Function( FetchMoreMovies value)?  fetchMoreMovies,TResult Function( FetchMovieCategories value)?  fetchMovieCategories,TResult Function( UpdateSelectedCategory value)?  updateSelectedCategory,TResult Function( UpdatePage value)?  updatePage,required TResult orElse(),}){
final _that = this;
switch (_that) {
case UpdateSliderIndex() when updateSliderIndex != null:
return updateSliderIndex(_that);case FetchUpcomingMovies() when fetchUpcomingMovies != null:
return fetchUpcomingMovies(_that);case FetchMovies() when fetchMovies != null:
return fetchMovies(_that);case FetchMoreMovies() when fetchMoreMovies != null:
return fetchMoreMovies(_that);case FetchMovieCategories() when fetchMovieCategories != null:
return fetchMovieCategories(_that);case UpdateSelectedCategory() when updateSelectedCategory != null:
return updateSelectedCategory(_that);case UpdatePage() when updatePage != null:
return updatePage(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( UpdateSliderIndex value)  updateSliderIndex,required TResult Function( FetchUpcomingMovies value)  fetchUpcomingMovies,required TResult Function( FetchMovies value)  fetchMovies,required TResult Function( FetchMoreMovies value)  fetchMoreMovies,required TResult Function( FetchMovieCategories value)  fetchMovieCategories,required TResult Function( UpdateSelectedCategory value)  updateSelectedCategory,required TResult Function( UpdatePage value)  updatePage,}){
final _that = this;
switch (_that) {
case UpdateSliderIndex():
return updateSliderIndex(_that);case FetchUpcomingMovies():
return fetchUpcomingMovies(_that);case FetchMovies():
return fetchMovies(_that);case FetchMoreMovies():
return fetchMoreMovies(_that);case FetchMovieCategories():
return fetchMovieCategories(_that);case UpdateSelectedCategory():
return updateSelectedCategory(_that);case UpdatePage():
return updatePage(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( UpdateSliderIndex value)?  updateSliderIndex,TResult? Function( FetchUpcomingMovies value)?  fetchUpcomingMovies,TResult? Function( FetchMovies value)?  fetchMovies,TResult? Function( FetchMoreMovies value)?  fetchMoreMovies,TResult? Function( FetchMovieCategories value)?  fetchMovieCategories,TResult? Function( UpdateSelectedCategory value)?  updateSelectedCategory,TResult? Function( UpdatePage value)?  updatePage,}){
final _that = this;
switch (_that) {
case UpdateSliderIndex() when updateSliderIndex != null:
return updateSliderIndex(_that);case FetchUpcomingMovies() when fetchUpcomingMovies != null:
return fetchUpcomingMovies(_that);case FetchMovies() when fetchMovies != null:
return fetchMovies(_that);case FetchMoreMovies() when fetchMoreMovies != null:
return fetchMoreMovies(_that);case FetchMovieCategories() when fetchMovieCategories != null:
return fetchMovieCategories(_that);case UpdateSelectedCategory() when updateSelectedCategory != null:
return updateSelectedCategory(_that);case UpdatePage() when updatePage != null:
return updatePage(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int index)?  updateSliderIndex,TResult Function()?  fetchUpcomingMovies,TResult Function( int categoryId)?  fetchMovies,TResult Function( int categoryId)?  fetchMoreMovies,TResult Function()?  fetchMovieCategories,TResult Function( int categoryId)?  updateSelectedCategory,TResult Function( int page)?  updatePage,required TResult orElse(),}) {final _that = this;
switch (_that) {
case UpdateSliderIndex() when updateSliderIndex != null:
return updateSliderIndex(_that.index);case FetchUpcomingMovies() when fetchUpcomingMovies != null:
return fetchUpcomingMovies();case FetchMovies() when fetchMovies != null:
return fetchMovies(_that.categoryId);case FetchMoreMovies() when fetchMoreMovies != null:
return fetchMoreMovies(_that.categoryId);case FetchMovieCategories() when fetchMovieCategories != null:
return fetchMovieCategories();case UpdateSelectedCategory() when updateSelectedCategory != null:
return updateSelectedCategory(_that.categoryId);case UpdatePage() when updatePage != null:
return updatePage(_that.page);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int index)  updateSliderIndex,required TResult Function()  fetchUpcomingMovies,required TResult Function( int categoryId)  fetchMovies,required TResult Function( int categoryId)  fetchMoreMovies,required TResult Function()  fetchMovieCategories,required TResult Function( int categoryId)  updateSelectedCategory,required TResult Function( int page)  updatePage,}) {final _that = this;
switch (_that) {
case UpdateSliderIndex():
return updateSliderIndex(_that.index);case FetchUpcomingMovies():
return fetchUpcomingMovies();case FetchMovies():
return fetchMovies(_that.categoryId);case FetchMoreMovies():
return fetchMoreMovies(_that.categoryId);case FetchMovieCategories():
return fetchMovieCategories();case UpdateSelectedCategory():
return updateSelectedCategory(_that.categoryId);case UpdatePage():
return updatePage(_that.page);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int index)?  updateSliderIndex,TResult? Function()?  fetchUpcomingMovies,TResult? Function( int categoryId)?  fetchMovies,TResult? Function( int categoryId)?  fetchMoreMovies,TResult? Function()?  fetchMovieCategories,TResult? Function( int categoryId)?  updateSelectedCategory,TResult? Function( int page)?  updatePage,}) {final _that = this;
switch (_that) {
case UpdateSliderIndex() when updateSliderIndex != null:
return updateSliderIndex(_that.index);case FetchUpcomingMovies() when fetchUpcomingMovies != null:
return fetchUpcomingMovies();case FetchMovies() when fetchMovies != null:
return fetchMovies(_that.categoryId);case FetchMoreMovies() when fetchMoreMovies != null:
return fetchMoreMovies(_that.categoryId);case FetchMovieCategories() when fetchMovieCategories != null:
return fetchMovieCategories();case UpdateSelectedCategory() when updateSelectedCategory != null:
return updateSelectedCategory(_that.categoryId);case UpdatePage() when updatePage != null:
return updatePage(_that.page);case _:
  return null;

}
}

}

/// @nodoc


class UpdateSliderIndex implements HomeEvent {
  const UpdateSliderIndex(this.index);
  

 final  int index;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateSliderIndexCopyWith<UpdateSliderIndex> get copyWith => _$UpdateSliderIndexCopyWithImpl<UpdateSliderIndex>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateSliderIndex&&(identical(other.index, index) || other.index == index));
}


@override
int get hashCode => Object.hash(runtimeType,index);

@override
String toString() {
  return 'HomeEvent.updateSliderIndex(index: $index)';
}


}

/// @nodoc
abstract mixin class $UpdateSliderIndexCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory $UpdateSliderIndexCopyWith(UpdateSliderIndex value, $Res Function(UpdateSliderIndex) _then) = _$UpdateSliderIndexCopyWithImpl;
@useResult
$Res call({
 int index
});




}
/// @nodoc
class _$UpdateSliderIndexCopyWithImpl<$Res>
    implements $UpdateSliderIndexCopyWith<$Res> {
  _$UpdateSliderIndexCopyWithImpl(this._self, this._then);

  final UpdateSliderIndex _self;
  final $Res Function(UpdateSliderIndex) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? index = null,}) {
  return _then(UpdateSliderIndex(
null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class FetchUpcomingMovies implements HomeEvent {
  const FetchUpcomingMovies();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchUpcomingMovies);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.fetchUpcomingMovies()';
}


}




/// @nodoc


class FetchMovies implements HomeEvent {
  const FetchMovies(this.categoryId);
  

 final  int categoryId;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchMoviesCopyWith<FetchMovies> get copyWith => _$FetchMoviesCopyWithImpl<FetchMovies>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchMovies&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId));
}


@override
int get hashCode => Object.hash(runtimeType,categoryId);

@override
String toString() {
  return 'HomeEvent.fetchMovies(categoryId: $categoryId)';
}


}

/// @nodoc
abstract mixin class $FetchMoviesCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory $FetchMoviesCopyWith(FetchMovies value, $Res Function(FetchMovies) _then) = _$FetchMoviesCopyWithImpl;
@useResult
$Res call({
 int categoryId
});




}
/// @nodoc
class _$FetchMoviesCopyWithImpl<$Res>
    implements $FetchMoviesCopyWith<$Res> {
  _$FetchMoviesCopyWithImpl(this._self, this._then);

  final FetchMovies _self;
  final $Res Function(FetchMovies) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? categoryId = null,}) {
  return _then(FetchMovies(
null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class FetchMoreMovies implements HomeEvent {
  const FetchMoreMovies(this.categoryId);
  

 final  int categoryId;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchMoreMoviesCopyWith<FetchMoreMovies> get copyWith => _$FetchMoreMoviesCopyWithImpl<FetchMoreMovies>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchMoreMovies&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId));
}


@override
int get hashCode => Object.hash(runtimeType,categoryId);

@override
String toString() {
  return 'HomeEvent.fetchMoreMovies(categoryId: $categoryId)';
}


}

/// @nodoc
abstract mixin class $FetchMoreMoviesCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory $FetchMoreMoviesCopyWith(FetchMoreMovies value, $Res Function(FetchMoreMovies) _then) = _$FetchMoreMoviesCopyWithImpl;
@useResult
$Res call({
 int categoryId
});




}
/// @nodoc
class _$FetchMoreMoviesCopyWithImpl<$Res>
    implements $FetchMoreMoviesCopyWith<$Res> {
  _$FetchMoreMoviesCopyWithImpl(this._self, this._then);

  final FetchMoreMovies _self;
  final $Res Function(FetchMoreMovies) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? categoryId = null,}) {
  return _then(FetchMoreMovies(
null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class FetchMovieCategories implements HomeEvent {
  const FetchMovieCategories();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchMovieCategories);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.fetchMovieCategories()';
}


}




/// @nodoc


class UpdateSelectedCategory implements HomeEvent {
  const UpdateSelectedCategory(this.categoryId);
  

 final  int categoryId;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateSelectedCategoryCopyWith<UpdateSelectedCategory> get copyWith => _$UpdateSelectedCategoryCopyWithImpl<UpdateSelectedCategory>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateSelectedCategory&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId));
}


@override
int get hashCode => Object.hash(runtimeType,categoryId);

@override
String toString() {
  return 'HomeEvent.updateSelectedCategory(categoryId: $categoryId)';
}


}

/// @nodoc
abstract mixin class $UpdateSelectedCategoryCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory $UpdateSelectedCategoryCopyWith(UpdateSelectedCategory value, $Res Function(UpdateSelectedCategory) _then) = _$UpdateSelectedCategoryCopyWithImpl;
@useResult
$Res call({
 int categoryId
});




}
/// @nodoc
class _$UpdateSelectedCategoryCopyWithImpl<$Res>
    implements $UpdateSelectedCategoryCopyWith<$Res> {
  _$UpdateSelectedCategoryCopyWithImpl(this._self, this._then);

  final UpdateSelectedCategory _self;
  final $Res Function(UpdateSelectedCategory) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? categoryId = null,}) {
  return _then(UpdateSelectedCategory(
null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class UpdatePage implements HomeEvent {
  const UpdatePage(this.page);
  

 final  int page;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdatePageCopyWith<UpdatePage> get copyWith => _$UpdatePageCopyWithImpl<UpdatePage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdatePage&&(identical(other.page, page) || other.page == page));
}


@override
int get hashCode => Object.hash(runtimeType,page);

@override
String toString() {
  return 'HomeEvent.updatePage(page: $page)';
}


}

/// @nodoc
abstract mixin class $UpdatePageCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory $UpdatePageCopyWith(UpdatePage value, $Res Function(UpdatePage) _then) = _$UpdatePageCopyWithImpl;
@useResult
$Res call({
 int page
});




}
/// @nodoc
class _$UpdatePageCopyWithImpl<$Res>
    implements $UpdatePageCopyWith<$Res> {
  _$UpdatePageCopyWithImpl(this._self, this._then);

  final UpdatePage _self;
  final $Res Function(UpdatePage) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? page = null,}) {
  return _then(UpdatePage(
null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
