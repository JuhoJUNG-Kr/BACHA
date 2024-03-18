//
//  LoginIntroView.swift
//  Bacha
//
//  Created by 정주호 on 07/03/2024.
//

import SwiftUI

struct LoginIntroView: View {
  @State private var isPresentedLoginView: Bool = false
  
  var body: some View {
    NavigationStack {
      VStack(spacing: 20) {
        Spacer()
        
        Text("Welcome to Bacha! 🤗")
          .font(.system(size: 26, weight: .bold))
          .foregroundColor(.black)
        
        Text("Free meet, Free chat with whole world")
          .font(.system(size: 12))
          .foregroundColor(.gray)
        
        Spacer()
        
        Button {
          isPresentedLoginView.toggle()
        } label: {
          Text("Start")
        }.buttonStyle(LoginButtonStyle(textColor: .pink))
      }
      .navigationDestination(isPresented: $isPresentedLoginView) {
        LoginView()
      }
    }
  }
}
#Preview {
  LoginIntroView()
}
