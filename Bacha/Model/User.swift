//
//  User.swift
//  Bacha
//
//  Created by 정주호 on 07/03/2024.
//

import Foundation

struct User: Identifiable, Hashable {
  var id: String
  var name: String
  var age: Int?
  var country: String?
  var phoneNumber: String?
  var profileURL: String?
  var description: String?
}

extension User {
  static var stubUsers: [User] = [
    .init(id: NSUUID().uuidString, name: "man1", age: 29, profileURL: "ai_man1", description: "Hi!"),
    .init(id: NSUUID().uuidString, name: "man2", age: 29, profileURL: "ai_man2", description: "Hi!"),
    .init(id: NSUUID().uuidString, name: "man3", age: 29, profileURL: "ai_man3", description: "Hi!"),
    .init(id: NSUUID().uuidString, name: "man4", age: 29, profileURL: "ai_man4", description: "Hi!"),
    .init(id: NSUUID().uuidString, name: "man5", age: 29, profileURL: "ai_man5", description: "Hi!"),
    .init(id: NSUUID().uuidString, name: "woman1", age: 23, profileURL: "ai_woman1", description: "Hi!"),
    .init(id: NSUUID().uuidString, name: "woman2", age: 26, profileURL: "ai_woman2", description: "Hi!"),
    .init(id: NSUUID().uuidString, name: "woman3", age: 31, profileURL: "ai_woman3", description: "Hi!"),
    .init(id: NSUUID().uuidString, name: "woman4", age: 33, profileURL: "ai_woman4", description: "Hi!"),
    .init(id: NSUUID().uuidString, name: "woman5", age: 29, profileURL: "ai_woman5", description: "Hi!"),
  ]
}
