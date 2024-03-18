//
//  AuthenticatedView.swift
//  Bacha
//
//  Created by 정주호 on 07/03/2024.
//

import SwiftUI

struct AuthenticatedView: View {
  
  @StateObject var authViewModel: AuthenticationViewModel
  
  var body: some View {
    VStack {
      switch authViewModel.authenticationState {
      case .unauthenticated:
        LoginIntroView()
          .environmentObject(authViewModel)
      case .authenticated:
        MainTabView()
      }
    }
    .onAppear {
      authViewModel.send(action: .checkAuthenticationState)
    }
  }
}

#Preview {
  AuthenticatedView(authViewModel: .init(container: .init(services: StubService())))
}
