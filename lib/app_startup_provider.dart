import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_startup_provider.g.dart';

@Riverpod(keepAlive: true, dependencies: [])
class AppStartup extends _$AppStartup {
  @override
  FutureOr<void> build() async {
    ref.onDispose(() {});
    state = const AsyncValue.loading();
    state = const AsyncValue.data(null);

    return;
  }
}
