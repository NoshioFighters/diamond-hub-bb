# Diamond Hub BB

Flutterアプリケーション（Clean Architecture + Firebase + Figma連携）

## プロジェクト構成

### アーキテクチャ
- **Clean Architecture** をベースにした3層構造
  - Presentation層: UI、状態管理
  - Domain層: ビジネスロジック、エンティティ
  - Data層: データソース、リポジトリ実装

### 環境設定
- **開発環境**: `diamond-hub-bb-dev`
- **本番環境**: `diamond-hub-bb`
- `dart-define`を使用して環境を切り替え

### ビルドコマンド

#### 開発環境
```bash
# iOS
flutter run --dart-define=ENV=dev --dart-define=ENV_NAME=diamond-hub-bb-dev

# Android
flutter run --dart-define=ENV=dev --dart-define=ENV_NAME=diamond-hub-bb-dev

# Web
flutter run -d chrome --dart-define=ENV=dev --dart-define=ENV_NAME=diamond-hub-bb-dev
```

#### 本番環境
```bash
# iOS
flutter run --dart-define=ENV=prod --dart-define=ENV_NAME=diamond-hub-bb

# Android
flutter run --dart-define=ENV=prod --dart-define=ENV_NAME=diamond-hub-bb

# Web
flutter run -d chrome --dart-define=ENV=prod --dart-define=ENV_NAME=diamond-hub-bb
```

## Figma連携

Figmaデザインから生成されたカスタムウィジェットは `lib/presentation/widgets/figma/` に配置されます。

## Firebase設定

各環境のFirebase設定ファイル:
- 開発: `lib/core/config/firebase_dev.dart`
- 本番: `lib/core/config/firebase_prod.dart`

## バンドル名

- iOS: `net.nf-bbc.diamondhubbb`
- Android: `net.nf.bbc.diamondhubbb`
- Web: `diamond-hub-bb`


