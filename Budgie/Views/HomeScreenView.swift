//
//  HomeScreenView.swift
//  Budgie
//
//  Created by Veda Niav Cunniffe on 2024-06-06.
//

import SwiftUI

struct HomeScreenView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(colors: [Color.homeGradientTop, Color.homeGradientBottom], startPoint: .topTrailing, endPoint: .bottomLeading)
                    .ignoresSafeArea()
                VStack {
                    NavigationLink {
                        FinalBudgetView()
                    } label: {
                        Text("Budget name placeholder")
                    }
                }
            }
        }
    }
}

#Preview {
    HomeScreenView()
}
