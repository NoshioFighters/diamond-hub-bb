#!/bin/bash

# 開発環境ビルドスクリプト

ENV=dev
ENV_NAME=diamond-hub-bb-dev

echo "Building for development environment: $ENV_NAME"

# Flutter clean
flutter clean

# Get dependencies
flutter pub get

# Build based on platform
case "$1" in
  ios)
    echo "Building iOS..."
    flutter build ios --dart-define=ENV=$ENV --dart-define=ENV_NAME=$ENV_NAME
    ;;
  android)
    echo "Building Android..."
    flutter build apk --dart-define=ENV=$ENV --dart-define=ENV_NAME=$ENV_NAME
    ;;
  web)
    echo "Building Web..."
    flutter build web --dart-define=ENV=$ENV --dart-define=ENV_NAME=$ENV_NAME
    ;;
  *)
    echo "Usage: $0 {ios|android|web}"
    exit 1
    ;;
esac

echo "Build completed!"


