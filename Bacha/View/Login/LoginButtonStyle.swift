//
//  LoginButtonStyle.swift
//  Bacha
//
//  Created by 정주호 on 07/03/2024.
//

import SwiftUI

struct LoginButtonStyle: ButtonStyle {
  let textColor: Color
  let borderColor: Color
  
  init(textColor: Color, borderColor: Color? = nil) {
    self.textColor = textColor
    self.borderColor = borderColor ?? textColor
  }
  
  func makeBody(configuration: Configuration) -> some View {
    configuration.label
      .font(.system(size: 14))
      .foregroundColor(textColor)
      .frame(maxWidth: .infinity, maxHeight: 40)
      .overlay {
        RoundedRectangle(cornerRadius: 5)
          .stroke(borderColor, lineWidth: 0.8)
      }
      .padding(.horizontal, 15)
      .opacity(configuration.isPressed ? 0.5 : 1)
  }
}
