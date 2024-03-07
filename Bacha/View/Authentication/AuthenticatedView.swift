//
//  AuthenticatedView.swift
//  Bacha
//
//  Created by 정주호 on 07/03/2024.
//

import SwiftUI

struct AuthenticatedView: View {
  // MARK: - Properties

  @StateObject var authViewModel: AuthenticationViewModel
  
  // MARK: - Configures
  var body: some View {
    VStack {
      Image(systemName: "globe")
        .imageScale(.large)
        .foregroundStyle(.tint)
      Text("Hello, world!")
    }
    .padding()
  }
}

#Preview {
  AuthenticatedView(authViewModel: .init())
}
