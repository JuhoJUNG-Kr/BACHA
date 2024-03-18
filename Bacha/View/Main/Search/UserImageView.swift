//
//  UserImageView.swift
//  Bacha
//
//  Created by 정주호 on 08/03/2024.
//

import SwiftUI

struct UserImageView: View {
    var body: some View {
        Image("ai_woman1")
        .resizable()
        .scaledToFill()
        .ignoresSafeArea()
    }
}

#Preview {
    UserImageView()
}
