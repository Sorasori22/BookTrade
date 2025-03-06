// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'requested_book_ids_list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$requestedBookIdsListHash() =>
    r'6a0cbe9a3269d8e0a5c04a924dadca2639264396';

/// List of book ids which I requested and is pending
///
/// Copied from [RequestedBookIdsList].
@ProviderFor(RequestedBookIdsList)
final requestedBookIdsListProvider = AutoDisposeAsyncNotifierProvider<
    RequestedBookIdsList, IList<BookId>>.internal(
  RequestedBookIdsList.new,
  name: r'requestedBookIdsListProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$requestedBookIdsListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$RequestedBookIdsList = AutoDisposeAsyncNotifier<IList<BookId>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
