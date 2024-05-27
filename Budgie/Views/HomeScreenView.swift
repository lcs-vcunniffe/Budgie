//
//  ContentView.swift
//  Budgie
//
//  Created by Veda Niav Cunniffe on 2024-03-25.
//

import SwiftUI

struct HomeScreenView: View {
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Image("bird")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 325)
                    Spacer(minLength: 150)
                }
                Text("Sort out your entire vacation budget, all in one place.")
                    .multilineTextAlignment(.center)
                    .font(
                        .custom(
                            "Cochin",
                            size: 30
                        )
                    )
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Get started")
                        .font(
                            .custom(
                                "Georgia",
                                size: 20)
                        )
                        .frame(height: 10)
                        .padding()
                        .foregroundStyle(.white)
                        .background(Color.black)
                        .clipShape(RoundedRectangle(cornerRadius: 13))
                })
            }
            .padding()
        }
    }
}

#Preview {
    HomeScreenView()
}
