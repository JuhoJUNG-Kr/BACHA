//
//  CardView.swift
//  Bacha
//
//  Created by 정주호 on 08/03/2024.
//

import SwiftUI

struct CardView: View {
  
  @State var card: Card
  @State var bioHeight: CGFloat = 120
  @State var lineLimite: Int = 4
  
  let cardGradient = Gradient(colors: [.black.opacity(0), Color.black.opacity(0.5)])
  
  var body: some View {
    VStack {
      ZStack(alignment: .topLeading) {
        GeometryReader { geo in
          Image(card.user.profileURL ?? "")
            .resizable()
            .scaledToFill()
            .ignoresSafeArea()
            .frame(width: geo.size.width, height: geo.size.height)
            .onTapGesture {
              
            }
        }
        
        LinearGradient(gradient: cardGradient, startPoint: .top, endPoint: .bottom)
          .ignoresSafeArea()
        
        VStack(alignment: .leading, spacing: 10) {
          Spacer()
          HStack(spacing: 10) {
            Text(card.user.name)
              .font(.largeTitle)
              .bold()
            if let age = card.user.age {
              Text(String(age))
                .font(.title)
            }
            
            if let country = card.user.country {
              Text(country)
            }
          }
          .padding(.leading, 15)
         
          Divider()
            .background()
          
          VStack {
            ScrollView {
              VStack(alignment: .leading) {
                if let description = card.user.description {
                  Text(description)
                    .lineLimit(lineLimite)
                    .padding(15)
                }
              }
            }
          }
          .onTapGesture {
            if bioHeight == 120 {
              withAnimation {
                bioHeight = 500
                lineLimite = .max
              }
            } else {
              withAnimation {
                bioHeight = 120
                lineLimite = 4
              }
              
            }
          }
          .frame(height: bioHeight)
          
          HStack(spacing: 100) {
            Button {
              
            } label: {
              Image("x")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 70)
            }
          
            Button {
              
            } label: {
              Image("v")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 70)
            }
          }
          .padding(.leading, 80)
          .padding(.bottom, 10)
        }
      }
    }
    .foregroundStyle(.white)
  }
}

#Preview {
  CardView(card: Card(user: .init(id: "user1", name: "Mina", age: 22, country: "Korea", profileURL: "ai_woman1", description: "Hi! im from Korea! sdfjsklejfowlejfiowjofjpojgopdsjgpsjgpoksdjarpfgjerpjgpojerpgodsjkfjesujkefhsuiofuhoihsohffkoepksoekfpkpsekfpkskpefkpsksk;lddsdjflsjafolhakfhaseihfweiflakjflwhovksnfklhasdfhaskldjhfkjasdhfkasdhkfljhasklfhilahfeilhilehowhjofjwepofjpowajfoashfgioawhfowahjfopjwepfkjawpfkpwajfashgikhaiguehwifweiuyfgiegfiewghfeiowhfohjwopfjopwjfpwjfpwejflhjiawofjwaop;fjawe;ofhjiowahfowehfow")))
}
