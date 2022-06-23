# riverpod_feature

[![Powered by Mason](https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge)](https://github.com/felangel/mason)

A brick to create a riverpod feature template

## Usage 🚀

1. Install the ```riverpod_feature``` brick globally in your system
    ```mason add -g riverpod_feature --git-url https://github.com/vinothvino42/mason.git --git-path bricks/riverpod_feature```
<br>
2. Navigate to the features directory of your flutter project and then type
    ```mason make riverpod_feature```

NOTE: Currently, you can install mason brick with git url and it's path only


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
│   │   │   │   │   │   ├── user.dart (Freezed models)
│   │   │   │   │   ├── repository
│   │   │   │   │   │   ├── user_repository.dart
│   │   │   │   ├── presentation
│   │   │   │   │   ├── views
│   │   │   │   │   │   ├── user_page.dart
│   │   │   │   │   ├── widgets
│   │   │   │   │   │   ├── user_view.dart
└── ...
```
