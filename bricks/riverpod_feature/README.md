# riverpod_feature

[![Powered by Mason](https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge)](https://github.com/felangel/mason)

A brick to create a riverpod feature template

## Prerequisites
Install the [flutter_riverpod](https://pub.dev/packages/flutter_riverpod) package from pub.dev

## Usage 🚀
```
mason make riverpod_feature
```

## Outputs 📦

```
--project_name app
│   ├── lib
│   │   ├── core
│   │   ├── features
│   │   │   ├── user
│   │   │   │   ├── controllers
│   │   │   │   │   ├── user_controller.dart (State Notifiers, Change Notifiers, etc)
│   │   │   │   ├── domains
│   │   │   │   │   ├── models
│   │   │   │   │   │   ├── user_model.dart (Freezed models)
│   │   │   │   │   ├── repositories
│   │   │   │   │   │   ├── user_repository_impl.dart
│   │   │   │   │   │   ├── user_repository.dart
│   │   │   │   ├── presentation
│   │   │   │   │   ├── views
│   │   │   │   │   │   ├── user_page.dart
│   │   │   │   │   ├── widgets
│   │   │   │   │   │   ├── user_widget.dart
└── ...
```
