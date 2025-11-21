import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

// ignore: unused_import
import 'injection_container.config.dart';

final getIt = GetIt.instance;

/// 依存性注入の設定
/// build_runner実行後に自動生成されるinit()メソッドを使用
@InjectableInit()
Future<void> configureDependencies() async {
  // TODO: build_runner実行後に生成されるinit()メソッドを使用
  // getIt.init();
}
