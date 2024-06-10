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
                    List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                        NavigationLink {
                            FinalBudgetView()
                        } label: {
                            Text("Budget name placeholder")
                        }
                        .listRowBackground(Color.clear)
                    }
                    .listStyle(.plain)
                    NavigationLink {
                        AskQuestionView()
                    } label: {
                        Text("+ Add new")
                            .font(
                                .custom(
                                    "Georgia",
                                    size: 18
                                )
                            )
                            .padding(EdgeInsets(top: 7, leading: 15, bottom: 7, trailing: 15))
                            .foregroundStyle(Color.white)
                            .background(Color.black)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
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
