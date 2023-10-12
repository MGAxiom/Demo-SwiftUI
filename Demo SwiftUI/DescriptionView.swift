//
//  DescriptionView.swift
//  Demo SwiftUI
//
//  Created by Maxime Girard on 09/10/2023.
//

import SwiftUI

struct DescriptionView: View {
    var body: some View {
        VStack {
            Text(verbatim: "Welcome to the beautiful world of SwiftUI")
            Image("DiscoElysium")
                .resizable()
                .clipShape(Circle())
                .overlay(
                    Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
            Text("New content text")
                .foregroundColor(.red)
        }
        .padding()
    }
}

#Preview {
    DescriptionView()
}
