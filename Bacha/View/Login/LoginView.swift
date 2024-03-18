//
//  LoginView.swift
//  Bacha
//
//  Created by 정주호 on 07/03/2024.
//

import SwiftUI
import AuthenticationServices

struct LoginView: View {
  @Environment(\.dismiss) var dismiss
  @EnvironmentObject var authViewModel: AuthenticationViewModel
  
  var body: some View {
    VStack(alignment: .leading) {
      Group {
        Text("Sign in")
          .font(.system(size: 28, weight: .bold))
          .foregroundColor(.black)
          .padding(.top, 80)
        Text("Sign in with Google or Apple")
          .font(.system(size: 14))
          .foregroundColor(.gray)
          .padding(.top, 3)
      }
      .padding(.horizontal, 30)
      
      Spacer()
      
      Button {
        authViewModel.send(action: .googleLogin)
      } label: {
        HStack {
          Image("Google")
            .resizable()
            .frame(width: 15, height: 15)
          Text("Sign in with Google")
        }
      }.buttonStyle(LoginButtonStyle(textColor: .black, borderColor: .gray))
      
      SignInWithAppleButton { request in
        authViewModel.send(action: .appleLogin(request))
      } onCompletion: { result in
        authViewModel.send(action: .appleLoginCompletion(result))
      }
      .frame(height: 40)
      .padding(.horizontal, 15)
      .cornerRadius(5)
      
    }
    .navigationBarBackButtonHidden()
    .toolbar {
      ToolbarItemGroup(placement: .navigationBarLeading) {
        Button {
          dismiss()
        } label: {
          Image("back")
        }
      }
    }
    .overlay {
      if authViewModel.isLoading {
        ProgressView()
      }
    }
  }
}

#Preview {
  LoginView()
}
