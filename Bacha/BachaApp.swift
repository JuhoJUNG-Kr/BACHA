//
//  BachaApp.swift
//  Bacha
//
//  Created by 정주호 on 07/03/2024.
//

import SwiftUI

@main
struct BachaApp: App {
  @StateObject var container: DIContainer = .init(services: Services())
  
  var body: some Scene {
    WindowGroup {
      AuthenticatedView(authViewModel: .init())
        .environmentObject(container)
    }
  }
}
