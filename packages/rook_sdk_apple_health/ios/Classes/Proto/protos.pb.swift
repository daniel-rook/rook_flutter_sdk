// DO NOT EDIT.
// swift-format-ignore-file
// swiftlint:disable all
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: protos.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

enum RookEnvironmentProto: SwiftProtobuf.Enum, Swift.CaseIterable {
  typealias RawValue = Int
  case sandbox // = 0
  case production // = 1
  case UNRECOGNIZED(Int)

  init() {
    self = .sandbox
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .sandbox
    case 1: self = .production
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  var rawValue: Int {
    switch self {
    case .sandbox: return 0
    case .production: return 1
    case .UNRECOGNIZED(let i): return i
    }
  }

  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static let allCases: [RookEnvironmentProto] = [
    .sandbox,
    .production,
  ]

}

enum DataSourceTypeProto: SwiftProtobuf.Enum, Swift.CaseIterable {
  typealias RawValue = Int
  case garmin // = 0
  case oura // = 1
  case polar // = 2
  case fitbit // = 3
  case withings // = 4
  case whoop // = 5
  case UNRECOGNIZED(Int)

  init() {
    self = .garmin
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .garmin
    case 1: self = .oura
    case 2: self = .polar
    case 3: self = .fitbit
    case 4: self = .withings
    case 5: self = .whoop
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  var rawValue: Int {
    switch self {
    case .garmin: return 0
    case .oura: return 1
    case .polar: return 2
    case .fitbit: return 3
    case .withings: return 4
    case .whoop: return 5
    case .UNRECOGNIZED(let i): return i
    }
  }

  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static let allCases: [DataSourceTypeProto] = [
    .garmin,
    .oura,
    .polar,
    .fitbit,
    .withings,
    .whoop,
  ]

}

struct RookConfigurationProto: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var clientUuid: String = String()

  var secretKey: String = String()

  var environment: RookEnvironmentProto = .sandbox

  var enableBackgroundSync: Bool = false

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct DataSourceProto: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var name: String = String()

  var description_p: String = String()

  var image: String = String()

  var connected: Bool = false

  var authorizationURL: String = String()

  var authorizationURLIsNull: Bool = false

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct DataSourcesProtoListWrapper: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var dataSources: [DataSourceProto] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct AuthorizedDataSourcesProto: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var oura: Bool = false

  var polar: Bool = false

  var whoop: Bool = false

  var fitbit: Bool = false

  var garmin: Bool = false

  var withings: Bool = false

  var appleHealth: Bool = false

  var healthConnect: Bool = false

  var android: Bool = false

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct DailyCaloriesProto: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var basal: Double = 0

  var active: Double = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct PluginExceptionProto: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var id: Int32 = 0

  var code: Int32 = 0

  var message: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct ResultBooleanProto: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var result: ResultBooleanProto.OneOf_Result? = nil

  var success: Bool {
    get {
      if case .success(let v)? = result {return v}
      return false
    }
    set {result = .success(newValue)}
  }

  var pluginExceptionProto: PluginExceptionProto {
    get {
      if case .pluginExceptionProto(let v)? = result {return v}
      return PluginExceptionProto()
    }
    set {result = .pluginExceptionProto(newValue)}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  enum OneOf_Result: Equatable, Sendable {
    case success(Bool)
    case pluginExceptionProto(PluginExceptionProto)

  }

  init() {}
}

struct ResultInt64Proto: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var result: ResultInt64Proto.OneOf_Result? = nil

  var value: Int64 {
    get {
      if case .value(let v)? = result {return v}
      return 0
    }
    set {result = .value(newValue)}
  }

  var pluginExceptionProto: PluginExceptionProto {
    get {
      if case .pluginExceptionProto(let v)? = result {return v}
      return PluginExceptionProto()
    }
    set {result = .pluginExceptionProto(newValue)}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  enum OneOf_Result: Equatable, Sendable {
    case value(Int64)
    case pluginExceptionProto(PluginExceptionProto)

  }

  init() {}
}

struct ResultDataSourcesProto: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var result: ResultDataSourcesProto.OneOf_Result? = nil

  var dataSourcesProtoListWrapper: DataSourcesProtoListWrapper {
    get {
      if case .dataSourcesProtoListWrapper(let v)? = result {return v}
      return DataSourcesProtoListWrapper()
    }
    set {result = .dataSourcesProtoListWrapper(newValue)}
  }

  var pluginExceptionProto: PluginExceptionProto {
    get {
      if case .pluginExceptionProto(let v)? = result {return v}
      return PluginExceptionProto()
    }
    set {result = .pluginExceptionProto(newValue)}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  enum OneOf_Result: Equatable, Sendable {
    case dataSourcesProtoListWrapper(DataSourcesProtoListWrapper)
    case pluginExceptionProto(PluginExceptionProto)

  }

  init() {}
}

struct ResultAuthorizedDataSourcesProto: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var result: ResultAuthorizedDataSourcesProto.OneOf_Result? = nil

  var authorizedDataSourcesProto: AuthorizedDataSourcesProto {
    get {
      if case .authorizedDataSourcesProto(let v)? = result {return v}
      return AuthorizedDataSourcesProto()
    }
    set {result = .authorizedDataSourcesProto(newValue)}
  }

  var pluginExceptionProto: PluginExceptionProto {
    get {
      if case .pluginExceptionProto(let v)? = result {return v}
      return PluginExceptionProto()
    }
    set {result = .pluginExceptionProto(newValue)}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  enum OneOf_Result: Equatable, Sendable {
    case authorizedDataSourcesProto(AuthorizedDataSourcesProto)
    case pluginExceptionProto(PluginExceptionProto)

  }

  init() {}
}

struct ResultDailyCaloriesProto: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var result: ResultDailyCaloriesProto.OneOf_Result? = nil

  var dailyCalories: DailyCaloriesProto {
    get {
      if case .dailyCalories(let v)? = result {return v}
      return DailyCaloriesProto()
    }
    set {result = .dailyCalories(newValue)}
  }

  var pluginExceptionProto: PluginExceptionProto {
    get {
      if case .pluginExceptionProto(let v)? = result {return v}
      return PluginExceptionProto()
    }
    set {result = .pluginExceptionProto(newValue)}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  enum OneOf_Result: Equatable, Sendable {
    case dailyCalories(DailyCaloriesProto)
    case pluginExceptionProto(PluginExceptionProto)

  }

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension RookEnvironmentProto: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "SANDBOX"),
    1: .same(proto: "PRODUCTION"),
  ]
}

extension DataSourceTypeProto: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "GARMIN"),
    1: .same(proto: "OURA"),
    2: .same(proto: "POLAR"),
    3: .same(proto: "FITBIT"),
    4: .same(proto: "WITHINGS"),
    5: .same(proto: "WHOOP"),
  ]
}

extension RookConfigurationProto: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "RookConfigurationProto"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "clientUUID"),
    2: .same(proto: "secretKey"),
    3: .same(proto: "environment"),
    4: .same(proto: "enableBackgroundSync"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.clientUuid) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.secretKey) }()
      case 3: try { try decoder.decodeSingularEnumField(value: &self.environment) }()
      case 4: try { try decoder.decodeSingularBoolField(value: &self.enableBackgroundSync) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.clientUuid.isEmpty {
      try visitor.visitSingularStringField(value: self.clientUuid, fieldNumber: 1)
    }
    if !self.secretKey.isEmpty {
      try visitor.visitSingularStringField(value: self.secretKey, fieldNumber: 2)
    }
    if self.environment != .sandbox {
      try visitor.visitSingularEnumField(value: self.environment, fieldNumber: 3)
    }
    if self.enableBackgroundSync != false {
      try visitor.visitSingularBoolField(value: self.enableBackgroundSync, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: RookConfigurationProto, rhs: RookConfigurationProto) -> Bool {
    if lhs.clientUuid != rhs.clientUuid {return false}
    if lhs.secretKey != rhs.secretKey {return false}
    if lhs.environment != rhs.environment {return false}
    if lhs.enableBackgroundSync != rhs.enableBackgroundSync {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension DataSourceProto: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "DataSourceProto"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "description"),
    3: .same(proto: "image"),
    4: .same(proto: "connected"),
    5: .same(proto: "authorizationUrl"),
    6: .same(proto: "authorizationUrlIsNull"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.description_p) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.image) }()
      case 4: try { try decoder.decodeSingularBoolField(value: &self.connected) }()
      case 5: try { try decoder.decodeSingularStringField(value: &self.authorizationURL) }()
      case 6: try { try decoder.decodeSingularBoolField(value: &self.authorizationURLIsNull) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if !self.description_p.isEmpty {
      try visitor.visitSingularStringField(value: self.description_p, fieldNumber: 2)
    }
    if !self.image.isEmpty {
      try visitor.visitSingularStringField(value: self.image, fieldNumber: 3)
    }
    if self.connected != false {
      try visitor.visitSingularBoolField(value: self.connected, fieldNumber: 4)
    }
    if !self.authorizationURL.isEmpty {
      try visitor.visitSingularStringField(value: self.authorizationURL, fieldNumber: 5)
    }
    if self.authorizationURLIsNull != false {
      try visitor.visitSingularBoolField(value: self.authorizationURLIsNull, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: DataSourceProto, rhs: DataSourceProto) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.description_p != rhs.description_p {return false}
    if lhs.image != rhs.image {return false}
    if lhs.connected != rhs.connected {return false}
    if lhs.authorizationURL != rhs.authorizationURL {return false}
    if lhs.authorizationURLIsNull != rhs.authorizationURLIsNull {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension DataSourcesProtoListWrapper: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "DataSourcesProtoListWrapper"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "dataSources"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.dataSources) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.dataSources.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.dataSources, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: DataSourcesProtoListWrapper, rhs: DataSourcesProtoListWrapper) -> Bool {
    if lhs.dataSources != rhs.dataSources {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension AuthorizedDataSourcesProto: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "AuthorizedDataSourcesProto"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "oura"),
    2: .same(proto: "polar"),
    3: .same(proto: "whoop"),
    4: .same(proto: "fitbit"),
    5: .same(proto: "garmin"),
    6: .same(proto: "withings"),
    7: .same(proto: "appleHealth"),
    8: .same(proto: "healthConnect"),
    9: .same(proto: "android"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBoolField(value: &self.oura) }()
      case 2: try { try decoder.decodeSingularBoolField(value: &self.polar) }()
      case 3: try { try decoder.decodeSingularBoolField(value: &self.whoop) }()
      case 4: try { try decoder.decodeSingularBoolField(value: &self.fitbit) }()
      case 5: try { try decoder.decodeSingularBoolField(value: &self.garmin) }()
      case 6: try { try decoder.decodeSingularBoolField(value: &self.withings) }()
      case 7: try { try decoder.decodeSingularBoolField(value: &self.appleHealth) }()
      case 8: try { try decoder.decodeSingularBoolField(value: &self.healthConnect) }()
      case 9: try { try decoder.decodeSingularBoolField(value: &self.android) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.oura != false {
      try visitor.visitSingularBoolField(value: self.oura, fieldNumber: 1)
    }
    if self.polar != false {
      try visitor.visitSingularBoolField(value: self.polar, fieldNumber: 2)
    }
    if self.whoop != false {
      try visitor.visitSingularBoolField(value: self.whoop, fieldNumber: 3)
    }
    if self.fitbit != false {
      try visitor.visitSingularBoolField(value: self.fitbit, fieldNumber: 4)
    }
    if self.garmin != false {
      try visitor.visitSingularBoolField(value: self.garmin, fieldNumber: 5)
    }
    if self.withings != false {
      try visitor.visitSingularBoolField(value: self.withings, fieldNumber: 6)
    }
    if self.appleHealth != false {
      try visitor.visitSingularBoolField(value: self.appleHealth, fieldNumber: 7)
    }
    if self.healthConnect != false {
      try visitor.visitSingularBoolField(value: self.healthConnect, fieldNumber: 8)
    }
    if self.android != false {
      try visitor.visitSingularBoolField(value: self.android, fieldNumber: 9)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: AuthorizedDataSourcesProto, rhs: AuthorizedDataSourcesProto) -> Bool {
    if lhs.oura != rhs.oura {return false}
    if lhs.polar != rhs.polar {return false}
    if lhs.whoop != rhs.whoop {return false}
    if lhs.fitbit != rhs.fitbit {return false}
    if lhs.garmin != rhs.garmin {return false}
    if lhs.withings != rhs.withings {return false}
    if lhs.appleHealth != rhs.appleHealth {return false}
    if lhs.healthConnect != rhs.healthConnect {return false}
    if lhs.android != rhs.android {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension DailyCaloriesProto: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "DailyCaloriesProto"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "basal"),
    2: .same(proto: "active"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularDoubleField(value: &self.basal) }()
      case 2: try { try decoder.decodeSingularDoubleField(value: &self.active) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.basal.bitPattern != 0 {
      try visitor.visitSingularDoubleField(value: self.basal, fieldNumber: 1)
    }
    if self.active.bitPattern != 0 {
      try visitor.visitSingularDoubleField(value: self.active, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: DailyCaloriesProto, rhs: DailyCaloriesProto) -> Bool {
    if lhs.basal != rhs.basal {return false}
    if lhs.active != rhs.active {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension PluginExceptionProto: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "PluginExceptionProto"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .same(proto: "code"),
    3: .same(proto: "message"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularSInt32Field(value: &self.id) }()
      case 2: try { try decoder.decodeSingularSInt32Field(value: &self.code) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.message) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.id != 0 {
      try visitor.visitSingularSInt32Field(value: self.id, fieldNumber: 1)
    }
    if self.code != 0 {
      try visitor.visitSingularSInt32Field(value: self.code, fieldNumber: 2)
    }
    if !self.message.isEmpty {
      try visitor.visitSingularStringField(value: self.message, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: PluginExceptionProto, rhs: PluginExceptionProto) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.code != rhs.code {return false}
    if lhs.message != rhs.message {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension ResultBooleanProto: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "ResultBooleanProto"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "success"),
    2: .same(proto: "pluginExceptionProto"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try {
        var v: Bool?
        try decoder.decodeSingularBoolField(value: &v)
        if let v = v {
          if self.result != nil {try decoder.handleConflictingOneOf()}
          self.result = .success(v)
        }
      }()
      case 2: try {
        var v: PluginExceptionProto?
        var hadOneofValue = false
        if let current = self.result {
          hadOneofValue = true
          if case .pluginExceptionProto(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.result = .pluginExceptionProto(v)
        }
      }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    switch self.result {
    case .success?: try {
      guard case .success(let v)? = self.result else { preconditionFailure() }
      try visitor.visitSingularBoolField(value: v, fieldNumber: 1)
    }()
    case .pluginExceptionProto?: try {
      guard case .pluginExceptionProto(let v)? = self.result else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: ResultBooleanProto, rhs: ResultBooleanProto) -> Bool {
    if lhs.result != rhs.result {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension ResultInt64Proto: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "ResultInt64Proto"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "value"),
    2: .same(proto: "pluginExceptionProto"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try {
        var v: Int64?
        try decoder.decodeSingularInt64Field(value: &v)
        if let v = v {
          if self.result != nil {try decoder.handleConflictingOneOf()}
          self.result = .value(v)
        }
      }()
      case 2: try {
        var v: PluginExceptionProto?
        var hadOneofValue = false
        if let current = self.result {
          hadOneofValue = true
          if case .pluginExceptionProto(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.result = .pluginExceptionProto(v)
        }
      }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    switch self.result {
    case .value?: try {
      guard case .value(let v)? = self.result else { preconditionFailure() }
      try visitor.visitSingularInt64Field(value: v, fieldNumber: 1)
    }()
    case .pluginExceptionProto?: try {
      guard case .pluginExceptionProto(let v)? = self.result else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: ResultInt64Proto, rhs: ResultInt64Proto) -> Bool {
    if lhs.result != rhs.result {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension ResultDataSourcesProto: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "ResultDataSourcesProto"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "dataSourcesProtoListWrapper"),
    2: .same(proto: "pluginExceptionProto"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try {
        var v: DataSourcesProtoListWrapper?
        var hadOneofValue = false
        if let current = self.result {
          hadOneofValue = true
          if case .dataSourcesProtoListWrapper(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.result = .dataSourcesProtoListWrapper(v)
        }
      }()
      case 2: try {
        var v: PluginExceptionProto?
        var hadOneofValue = false
        if let current = self.result {
          hadOneofValue = true
          if case .pluginExceptionProto(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.result = .pluginExceptionProto(v)
        }
      }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    switch self.result {
    case .dataSourcesProtoListWrapper?: try {
      guard case .dataSourcesProtoListWrapper(let v)? = self.result else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }()
    case .pluginExceptionProto?: try {
      guard case .pluginExceptionProto(let v)? = self.result else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: ResultDataSourcesProto, rhs: ResultDataSourcesProto) -> Bool {
    if lhs.result != rhs.result {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension ResultAuthorizedDataSourcesProto: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "ResultAuthorizedDataSourcesProto"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "authorizedDataSourcesProto"),
    2: .same(proto: "pluginExceptionProto"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try {
        var v: AuthorizedDataSourcesProto?
        var hadOneofValue = false
        if let current = self.result {
          hadOneofValue = true
          if case .authorizedDataSourcesProto(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.result = .authorizedDataSourcesProto(v)
        }
      }()
      case 2: try {
        var v: PluginExceptionProto?
        var hadOneofValue = false
        if let current = self.result {
          hadOneofValue = true
          if case .pluginExceptionProto(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.result = .pluginExceptionProto(v)
        }
      }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    switch self.result {
    case .authorizedDataSourcesProto?: try {
      guard case .authorizedDataSourcesProto(let v)? = self.result else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }()
    case .pluginExceptionProto?: try {
      guard case .pluginExceptionProto(let v)? = self.result else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: ResultAuthorizedDataSourcesProto, rhs: ResultAuthorizedDataSourcesProto) -> Bool {
    if lhs.result != rhs.result {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension ResultDailyCaloriesProto: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "ResultDailyCaloriesProto"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "dailyCalories"),
    2: .same(proto: "pluginExceptionProto"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try {
        var v: DailyCaloriesProto?
        var hadOneofValue = false
        if let current = self.result {
          hadOneofValue = true
          if case .dailyCalories(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.result = .dailyCalories(v)
        }
      }()
      case 2: try {
        var v: PluginExceptionProto?
        var hadOneofValue = false
        if let current = self.result {
          hadOneofValue = true
          if case .pluginExceptionProto(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.result = .pluginExceptionProto(v)
        }
      }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    switch self.result {
    case .dailyCalories?: try {
      guard case .dailyCalories(let v)? = self.result else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }()
    case .pluginExceptionProto?: try {
      guard case .pluginExceptionProto(let v)? = self.result else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: ResultDailyCaloriesProto, rhs: ResultDailyCaloriesProto) -> Bool {
    if lhs.result != rhs.result {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
