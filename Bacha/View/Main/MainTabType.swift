//
//  MainTabType.swift
//  Bacha
//
//  Created by 정주호 on 08/03/2024.
//

import Foundation

enum MainTabType: String, CaseIterable {
  case search
  case chat
  case like
  
  var title: String {
    switch self {
    case .search:
      return "Search"
    case .chat:
      return "Chat"
    case .like:
      return "Like"
    }
  }
  
  func imageName(selected: Bool) -> String {
    selected ? "\(rawValue)_fill" : rawValue
  }
}
