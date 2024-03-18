//
//  Card.swift
//  Bacha
//
//  Created by 정주호 on 08/03/2024.
//

import Foundation

struct Card: Identifiable, Hashable {
  let id = UUID()
  let user: User
  var x: CGFloat = 0.0
  var y: CGFloat = 0.0
  var degree: Double = 0.0
  
  static var stubData: [Card] = [
    Card(user: User.stubUsers[0]),
    Card(user: User.stubUsers[1]),
    Card(user: User.stubUsers[2]),
    Card(user: User.stubUsers[3]),
    Card(user: User.stubUsers[4]),
    Card(user: User.stubUsers[5]),
    Card(user: User.stubUsers[6]),
    Card(user: User.stubUsers[7]),
    Card(user: User.stubUsers[8]),
    Card(user: User.stubUsers[9])
  ]
}
