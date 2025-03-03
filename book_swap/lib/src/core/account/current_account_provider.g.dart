// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'current_account_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$currentUserIdHash() => r'cd24fcafc925d0b3b1742c438b6731f96f17751b';

/// See also [currentUserId].
@ProviderFor(currentUserId)
final currentUserIdProvider = Provider<UserId?>.internal(
  currentUserId,
  name: r'currentUserIdProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$currentUserIdHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef CurrentUserIdRef = ProviderRef<UserId?>;
String _$currentAccountHash() => r'48904e027fee12d744745e3518c7851515197bed';

/// See also [CurrentAccount].
@ProviderFor(CurrentAccount)
final currentAccountProvider =
    AsyncNotifierProvider<CurrentAccount, CurrentAccountState>.internal(
  CurrentAccount.new,
  name: r'currentAccountProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$currentAccountHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CurrentAccount = AsyncNotifier<CurrentAccountState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
