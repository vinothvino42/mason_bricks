# service

[![Powered by Mason](https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge)](https://github.com/felangel/mason)

A brick to generate a service classes for local storage, secure storage, push notification and more!

## Usage 🚀

1. Install the ```service``` brick globally in your system
    ```mason add -g service --git-url https://github.com/vinothvino42/mason.git --git-path bricks/service```
<br>
2. Navigate to the directory where you want all these helper classes and then type
    ```mason make service```

NOTE: Currently, you can install mason brick with git url and it's path only

## Outputs 📦

```
├── storage
├── ├── secure_storage_service.dart
├── ├── preference_storage_service.dart
├── messaging
├── ├── push_notification_service.dart
```
