# Dart
protoc --dart_out=../lib/src/data/proto protos.proto
# Java
protoc --java_out=lite:../android/src/main/kotlin/ protos.proto