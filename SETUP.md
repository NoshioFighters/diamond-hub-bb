# セットアップガイド

## 前提条件

- Flutter SDK (3.0.0以上)
- Dart SDK (3.0.0以上)
- Firebase CLI
- Xcode (iOS開発の場合)
- Android Studio (Android開発の場合)

## 初期セットアップ

### 1. 依存関係のインストール

```bash
flutter pub get
```

### 2. Firebase設定

#### 開発環境
1. Firebase Consoleで `diamond-hub-bb-dev` プロジェクトを作成
2. iOS/Android/Webアプリを追加
3. `lib/core/config/firebase_dev.dart` に設定値を入力

#### 本番環境
1. Firebase Consoleで `diamond-hub-bb` プロジェクトを作成
2. iOS/Android/Webアプリを追加
3. `lib/core/config/firebase_prod.dart` に設定値を入力

### 3. コード生成

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

このコマンドで以下が生成されます：
- `injection_container.config.dart` (依存性注入)
- `user_model.g.dart` (JSONシリアライゼーション)
- その他の生成ファイル

### 4. アセットの準備

以下のフォルダにアセットを配置：
- `assets/images/` - 画像ファイル
- `assets/icons/` - アイコンファイル
- `assets/fonts/` - フォントファイル

## 実行方法

### 開発環境

```bash
# iOS
flutter run --dart-define=ENV=dev --dart-define=ENV_NAME=diamond-hub-bb-dev

# Android
flutter run --dart-define=ENV=dev --dart-define=ENV_NAME=diamond-hub-bb-dev

# Web
flutter run -d chrome --dart-define=ENV=dev --dart-define=ENV_NAME=diamond-hub-bb-dev
```

または、スクリプトを使用：

```bash
./scripts/build_dev.sh ios
./scripts/build_dev.sh android
./scripts/build_dev.sh web
```

### 本番環境

```bash
# iOS
flutter run --dart-define=ENV=prod --dart-define=ENV_NAME=diamond-hub-bb

# Android
flutter run --dart-define=ENV=prod --dart-define=ENV_NAME=diamond-hub-bb

# Web
flutter run -d chrome --dart-define=ENV=prod --dart-define=ENV_NAME=diamond-hub-bb
```

または、スクリプトを使用：

```bash
./scripts/build_prod.sh ios
./scripts/build_prod.sh android
./scripts/build_prod.sh web
```

## Figma連携

1. Figmaでデザインを作成
2. 必要なアセットを `figma/` フォルダにエクスポート
3. カスタムウィジェットを `lib/presentation/widgets/figma/` に配置

## プロジェクト構造

詳細は `PROJECT_STRUCTURE.md` を参照してください。

## 次のステップ

1. Firebase設定を完了
2. コード生成を実行
3. アセットを追加
4. 機能実装を開始


