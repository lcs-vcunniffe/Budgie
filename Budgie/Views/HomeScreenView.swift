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
                    HStack {
                        Text("Welcome")
                            .font(
                                .custom(
                                    "Avenir-black",
                                    size: 30,
                                    relativeTo: .title
                                )
                        )
                            .padding(EdgeInsets(top: 30, leading: 20, bottom: 5, trailing: 0))
                        Spacer()
                    }
                    HStack {
                        Text("Add a new budget or look at your previous budgets")
                            .font(
                                .custom(
                                    "Helvetica",
                                    size: 20
                                )
                        )
                            .padding(EdgeInsets(top: 0, leading: 20, bottom: 60, trailing: 0))
                        Spacer()
                    }
                    NavigationLink {
                        FinalBudgetView()
                    } label: {
                        Text("Budget name placeholder")
                    }
                    NavigationLink {
                        QuestionPageView(page: question1)
                    } label: {
                        Text("+ Add new")
                    }
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    HomeScreenView()
}
