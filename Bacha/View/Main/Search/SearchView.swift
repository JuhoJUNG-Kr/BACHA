//
//  SearchView.swift
//  Bacha
//
//  Created by 정주호 on 08/03/2024.
//

import SwiftUI

struct SearchView: View {
  let stubCards = Card.stubData
  
    var body: some View {
      VStack {
        if stubCards.isEmpty {
          Spacer()
          Text("Networking error")
          Spacer()
        } else {
          ZStack {
            ForEach(stubCards) { card in
              CardView(card: card)
            }
          }
        }
      }
    }
}



#Preview {
    SearchView()
}
