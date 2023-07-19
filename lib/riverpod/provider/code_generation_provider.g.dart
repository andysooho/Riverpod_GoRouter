// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'code_generation_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$gStateHash() => r'4840a52039184e904fcf444a5cc17e7ad56c3855';

/// See also [gState].
@ProviderFor(gState)
final gStateProvider = AutoDisposeProvider<String>.internal(
  gState,
  name: r'gStateProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$gStateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GStateRef = AutoDisposeProviderRef<String>;
String _$gStateFutureHash() => r'60bcec0c5c965b0d1fbcc1909268c09f6695357c';

/// See also [gStateFuture].
@ProviderFor(gStateFuture)
final gStateFutureProvider = AutoDisposeFutureProvider<int>.internal(
  gStateFuture,
  name: r'gStateFutureProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$gStateFutureHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GStateFutureRef = AutoDisposeFutureProviderRef<int>;
String _$gStateFuture2Hash() => r'484054e1f9bdaf004b42e2ca5d5573adf30e1486';

/// See also [gStateFuture2].
@ProviderFor(gStateFuture2)
final gStateFuture2Provider = FutureProvider<int>.internal(
  gStateFuture2,
  name: r'gStateFuture2Provider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$gStateFuture2Hash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GStateFuture2Ref = FutureProviderRef<int>;
String _$gStateFamilyHash() => r'bc60a98dc4897bf646ebd7d951a660eca6d7b3ce';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

typedef GStateFamilyRef = AutoDisposeProviderRef<int>;

/// See also [gStateFamily].
@ProviderFor(gStateFamily)
const gStateFamilyProvider = GStateFamilyFamily();

/// See also [gStateFamily].
class GStateFamilyFamily extends Family<int> {
  /// See also [gStateFamily].
  const GStateFamilyFamily();

  /// See also [gStateFamily].
  GStateFamilyProvider call({
    required int number1,
    required int number2,
  }) {
    return GStateFamilyProvider(
      number1: number1,
      number2: number2,
    );
  }

  @override
  GStateFamilyProvider getProviderOverride(
    covariant GStateFamilyProvider provider,
  ) {
    return call(
      number1: provider.number1,
      number2: provider.number2,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'gStateFamilyProvider';
}

/// See also [gStateFamily].
class GStateFamilyProvider extends AutoDisposeProvider<int> {
  /// See also [gStateFamily].
  GStateFamilyProvider({
    required this.number1,
    required this.number2,
  }) : super.internal(
          (ref) => gStateFamily(
            ref,
            number1: number1,
            number2: number2,
          ),
          from: gStateFamilyProvider,
          name: r'gStateFamilyProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$gStateFamilyHash,
          dependencies: GStateFamilyFamily._dependencies,
          allTransitiveDependencies:
              GStateFamilyFamily._allTransitiveDependencies,
        );

  final int number1;
  final int number2;

  @override
  bool operator ==(Object other) {
    return other is GStateFamilyProvider &&
        other.number1 == number1 &&
        other.number2 == number2;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, number1.hashCode);
    hash = _SystemHash.combine(hash, number2.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$gStateNotifierHash() => r'dd8b398cf47f9c52820d26bfc45a7ed9e3083c64';

/// See also [GStateNotifier].
@ProviderFor(GStateNotifier)
final gStateNotifierProvider =
    AutoDisposeNotifierProvider<GStateNotifier, int>.internal(
  GStateNotifier.new,
  name: r'gStateNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$gStateNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$GStateNotifier = AutoDisposeNotifier<int>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
