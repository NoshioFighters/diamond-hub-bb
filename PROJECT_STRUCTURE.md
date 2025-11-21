# プロジェクト構造

## ディレクトリ構成

```
diamond_hub_bb/
├── android/              # Android固有の設定
├── ios/                  # iOS固有の設定
├── web/                  # Web固有の設定
├── lib/                  # メインのDartコード
│   ├── core/            # コア機能（設定、DI、エラー処理など）
│   │   ├── config/      # アプリ設定（環境変数、Firebase設定）
│   │   ├── constants/   # 定数定義
│   │   ├── di/          # 依存性注入
│   │   ├── error/       # エラーハンドリング
│   │   └── utils/       # ユーティリティ
│   ├── data/            # データ層（Clean Architecture）
│   │   ├── datasources/ # データソース（Remote/Local）
│   │   ├── models/      # データモデル
│   │   └── repositories/ # リポジトリ実装
│   ├── domain/          # ドメイン層（Clean Architecture）
│   │   ├── entities/    # エンティティ
│   │   ├── repositories/ # リポジトリインターフェース
│   │   └── usecases/    # ユースケース
│   └── presentation/    # プレゼンテーション層（Clean Architecture）
│       ├── app.dart     # アプリエントリーポイント
│       ├── pages/       # 画面（25画面程度を想定）
│       ├── routes/      # ルーティング設定
│       ├── theme/       # テーマ設定
│       └── widgets/     # ウィジェット
│           ├── common/   # 共通ウィジェット
│           └── figma/   # Figma連携ウィジェット
├── assets/              # アセット（画像、アイコン、フォント）
├── figma/               # Figmaデザインファイル
├── scripts/             # ビルドスクリプト
└── pubspec.yaml         # 依存関係定義
```

## Clean Architecture

### Presentation層
- UIコンポーネント（Widget）
- 状態管理（Riverpod）
- ルーティング（GoRouter）

### Domain層
- ビジネスロジック
- エンティティ
- リポジトリインターフェース
- ユースケース

### Data層
- リポジトリ実装
- データソース（Firebase、Local Storage）
- データモデル

## Figma連携

Figmaから生成されたカスタムウィジェットは `lib/presentation/widgets/figma/` に配置されます。

- `components/`: Figmaコンポーネントから生成
- `screens/`: Figma画面デザインから生成
- `styles/`: Figmaスタイル定義（色、タイポグラフィ）

## 環境設定

- **開発環境**: `diamond-hub-bb-dev`
- **本番環境**: `diamond-hub-bb`

`dart-define`を使用して環境を切り替えます。

## バンドル名

- iOS: `net.nf-bbc.diamondhubbb`
- Android: `net.nf.bbc.diamondhubbb`
- Web: `diamond-hub-bb`


