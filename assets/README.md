# アセットフォルダ

アプリケーションで使用する画像、アイコン、フォントなどのアセットを配置します。

## 構成

```
assets/
├── images/     # 画像ファイル（PNG、JPG、SVGなど）
├── icons/      # アイコンファイル
└── fonts/      # フォントファイル（TTF、OTF）
```

## 使用方法

pubspec.yamlでアセットを定義し、アプリ内で使用します。

```dart
Image.asset('assets/images/logo.png')
```


