//
//  MainTabView.swift
//  Bacha
//
//  Created by 정주호 on 07/03/2024.
//

import SwiftUI

struct MainTabView: View {
  @State private var selectedTab: MainTabType = .search
    var body: some View {
      TabView(selection: $selectedTab) {
        ForEach(MainTabType.allCases, id: \.self) { tab in
          Group {
            switch tab {
            case .search:
              SearchView()
            case .chat:
              ChatListView()
            case .like:
              LikeView()
            }
          }
          .tabItem {
            Label(tab.title, image: tab.imageName(selected: selectedTab == tab))
          }
          .tag(tab)
        }
      }
      .tint(.black)
    }
  init() {
    UITabBar.appearance().backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
  }
}

#Preview {
    MainTabView()
}
