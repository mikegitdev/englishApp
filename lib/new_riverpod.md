@riverpod
class Counter extends _$Counter {
  /// Classes annotated by `@riverpod` **must** define a [build] function.
  /// This function is expected to return the initial state of your shared state.
  /// It is totally acceptable for this function to return a [Future] or [Stream] if you need to.
  /// You can also freely define parameters on this method.
  @override
  int build() => 0;

  void increment() => state++;
}


Provider
StateProvider (legacy)
StateNotifierProvider (legacy)
FutureProvider
StreamProvider
ChangeNotifierProvider (legacy)
NotifierProvider (new in Riverpod 2.0)
AsyncNotifierProvider (new in Riverpod 2.0)



Provider is great for accessing dependencies and objects that don’t change.
You may use this to access a repository, a logger, or some other class that doesn't contain mutable state.



Provider:
The equivalent of

final fooProvider = Provider((ref) => 0);
is

@riverpod
int foo(FooRef ref) => 0;
FutureProvider:
The equivalent of

final fooProvider = FutureProvider((ref) async {
  return 0;
});
is

@riverpod
Future<int> foo(FooRef ref) async {
  return 0;
}
StateProvider:
The equivalent of

final fooProvider = StateProvider((ref) => 0);
is

@riverpod
class Foo extends _$Foo {
  @override
  int build() => 0;
}