//
//  OnboardingView.swift
//  Bacha
//
//  Created by 정주호 on 08/03/2024.
//

import SwiftUI

struct OnboardingView: View {
  
  @StateObject var authViewModel: AuthenticationViewModel
  @State var placeHolerText: String
  @State var selectedAge: Int = 30
  @State var isPressedAgeButton: Bool = false
  @State var text: String
  
  var body: some View {
    NavigationStack {
      VStack(alignment: .leading, spacing: 8) {
        Group {
          Text("Fill your infomation")
            .font(.system(size: 30, weight: .bold))
            .foregroundColor(.black)
            .padding(.vertical, 50)
          
          Text("Name")
            .font(.system(size: 16, weight: .semibold))
            .foregroundColor(.gray)
            .padding(.top, 3)
          
          TextField("write your name", text: $text)
            .tint(.black)
          
          Divider()
            .background()
          
          Text("Age")
            .font(.system(size: 16, weight: .semibold))
            .foregroundColor(.gray)
            .padding(.top, 15)
          
          Button {
            isPressedAgeButton.toggle()
          } label: {
            Text("\(selectedAge)")
              .font(.system(size: 20, weight: .semibold))
              .padding(.top, 3)
              .foregroundStyle(.black)
          }
          .sheet(isPresented: $isPressedAgeButton, content: {
            AgePicker(selection: $selectedAge, isShowing: $isPressedAgeButton)
              .presentationDetents([.fraction(0.5), .height(250), .medium,.large])
          })
          
          Divider()
            .background()
          
          Text("language")
            .font(.system(size: 16, weight: .semibold))
            .foregroundColor(.gray)
            .padding(.top, 15)
          
          Button {
            isPressedAgeButton.toggle()
          } label: {
            Text("\(selectedAge)")
              .font(.system(size: 20, weight: .semibold))
              .padding(.top, 3)
              .foregroundStyle(.black)
          }
          .sheet(isPresented: $isPressedAgeButton, content: {
            AgePicker(selection: $selectedAge, isShowing: $isPressedAgeButton)
              .presentationDetents([.fraction(0.5), .height(250), .medium,.large])
          })
          
          Divider()
            .background()
        }
        .padding(.horizontal, 30)
      }
      
      Spacer()
      
      Button {
        
      } label: {
        Text("continue")
      }
      .buttonStyle(LoginButtonStyle(textColor: .pink, borderColor: .pink))
      .padding(20)
    }
  }
  
}

fileprivate struct AgePicker: View {
  @Binding var selection: Int
  @Binding var isShowing: Bool
  
  var body: some View {
    VStack {
      Spacer()
      Button(action: {
        self.isShowing = false
      }) {
        HStack {
          Spacer()
          Text("Close")
            .padding(.horizontal, 16)
        }
      }
      
      Picker(selection: $selection, label: Text("")) {
        ForEach((18..<71), id: \.self) {
          Text("\($0)")
            .tag($0)
        }
      }
      .pickerStyle(.wheel)
      .labelsHidden()
    }
  }
}


#Preview {
  OnboardingView(authViewModel: .init(container: .init(services: StubService())), placeHolerText: "Name", selectedAge: 30, text: "")
}
