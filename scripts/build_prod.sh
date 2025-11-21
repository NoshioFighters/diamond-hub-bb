#!/bin/bash

# 本番環境ビルドスクリプト

ENV=prod
ENV_NAME=diamond-hub-bb

echo "Building for production environment: $ENV_NAME"

# Flutter clean
flutter clean

# Get dependencies
flutter pub get

# Build based on platform
case "$1" in
  ios)
    echo "Building iOS..."
    flutter build ios --release --dart-define=ENV=$ENV --dart-define=ENV_NAME=$ENV_NAME
    ;;
  android)
    echo "Building Android..."
    flutter build apk --release --dart-define=ENV=$ENV --dart-define=ENV_NAME=$ENV_NAME
    ;;
  web)
    echo "Building Web..."
    flutter build web --release --dart-define=ENV=$ENV --dart-define=ENV_NAME=$ENV_NAME
    ;;
  *)
    echo "Usage: $0 {ios|android|web}"
    exit 1
    ;;
esac

echo "Build completed!"


