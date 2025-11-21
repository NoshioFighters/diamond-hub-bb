# Figmaデザインフォルダ

このフォルダには、Figmaからエクスポートしたデザインアセットを配置します。

## 構成

```
figma/
├── designs/        # 画面デザイン（PNG、SVGなど）
├── components/     # コンポーネントデザイン
└── assets/         # アイコン、画像などのアセット
```

## 使用方法

1. Figmaでデザインを作成
2. 必要なアセットをエクスポート
3. このフォルダに配置
4. Flutterアプリで使用

## 連携方法

Figmaから生成されたカスタムウィジェットは `lib/presentation/widgets/figma/` に配置されます。


