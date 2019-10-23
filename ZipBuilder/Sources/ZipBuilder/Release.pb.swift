/*
 * Copyright 2019 Google
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: Release.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

struct ZipBuilder_Release {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Targeted release date
  var targetDate: String = String()

  /// Release name (e.g. M15 - Beryllium)
  var name: String = String()

  /// Release code (e.g. M15)
  var code: String = String()

  /// Whether or not the release went out
  var released: Bool = false

  /// List of SDKs that are part of the release
  var sdk: [ZipBuilder_ReleasingSDK] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct ZipBuilder_ReleasingSDK {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// SDK name as from all_firebase_ios_sdks.textproto
  var sdkName: String = String()

  /// The version of SDK to release
  var sdkVersion: String = String()

  /// Whether or not a launchal is required for this release
  var launchcalRequired: Bool = false

  /// Ariane link
  var launchcalLink: String = String()

  /// An link to the change log
  var changelogLink: String = String()

  /// A link to the release hotlist
  var hotlistLink: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "ZipBuilder"

extension ZipBuilder_Release: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Release"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "target_date"),
    2: .same(proto: "name"),
    3: .same(proto: "code"),
    4: .same(proto: "released"),
    5: .same(proto: "sdk"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.targetDate)
      case 2: try decoder.decodeSingularStringField(value: &self.name)
      case 3: try decoder.decodeSingularStringField(value: &self.code)
      case 4: try decoder.decodeSingularBoolField(value: &self.released)
      case 5: try decoder.decodeRepeatedMessageField(value: &self.sdk)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.targetDate.isEmpty {
      try visitor.visitSingularStringField(value: self.targetDate, fieldNumber: 1)
    }
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 2)
    }
    if !self.code.isEmpty {
      try visitor.visitSingularStringField(value: self.code, fieldNumber: 3)
    }
    if self.released != false {
      try visitor.visitSingularBoolField(value: self.released, fieldNumber: 4)
    }
    if !self.sdk.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.sdk, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: ZipBuilder_Release, rhs: ZipBuilder_Release) -> Bool {
    if lhs.targetDate != rhs.targetDate {return false}
    if lhs.name != rhs.name {return false}
    if lhs.code != rhs.code {return false}
    if lhs.released != rhs.released {return false}
    if lhs.sdk != rhs.sdk {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension ZipBuilder_ReleasingSDK: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".ReleasingSDK"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "sdk_name"),
    2: .standard(proto: "sdk_version"),
    3: .standard(proto: "launchcal_required"),
    4: .standard(proto: "launchcal_link"),
    5: .standard(proto: "changelog_link"),
    6: .standard(proto: "hotlist_link"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.sdkName)
      case 2: try decoder.decodeSingularStringField(value: &self.sdkVersion)
      case 3: try decoder.decodeSingularBoolField(value: &self.launchcalRequired)
      case 4: try decoder.decodeSingularStringField(value: &self.launchcalLink)
      case 5: try decoder.decodeSingularStringField(value: &self.changelogLink)
      case 6: try decoder.decodeSingularStringField(value: &self.hotlistLink)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.sdkName.isEmpty {
      try visitor.visitSingularStringField(value: self.sdkName, fieldNumber: 1)
    }
    if !self.sdkVersion.isEmpty {
      try visitor.visitSingularStringField(value: self.sdkVersion, fieldNumber: 2)
    }
    if self.launchcalRequired != false {
      try visitor.visitSingularBoolField(value: self.launchcalRequired, fieldNumber: 3)
    }
    if !self.launchcalLink.isEmpty {
      try visitor.visitSingularStringField(value: self.launchcalLink, fieldNumber: 4)
    }
    if !self.changelogLink.isEmpty {
      try visitor.visitSingularStringField(value: self.changelogLink, fieldNumber: 5)
    }
    if !self.hotlistLink.isEmpty {
      try visitor.visitSingularStringField(value: self.hotlistLink, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: ZipBuilder_ReleasingSDK, rhs: ZipBuilder_ReleasingSDK) -> Bool {
    if lhs.sdkName != rhs.sdkName {return false}
    if lhs.sdkVersion != rhs.sdkVersion {return false}
    if lhs.launchcalRequired != rhs.launchcalRequired {return false}
    if lhs.launchcalLink != rhs.launchcalLink {return false}
    if lhs.changelogLink != rhs.changelogLink {return false}
    if lhs.hotlistLink != rhs.hotlistLink {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}