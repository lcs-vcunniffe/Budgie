//
//  ContentView.swift
//  Budgie
//
//  Created by Veda Niav Cunniffe on 2024-03-25.
//

import SwiftUI

struct StartScreenView: View {
    //MARK: Stored properties
    @Binding var getStarted: Bool
    
    //MARK: Computed properties
    var body: some View {
        
        NavigationStack {
            ZStack {
                Image("startScreenBackground")
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
                                "Avenir-Black",
                                size: 28
                            )
                        )
                    Button(action: {getStarted = true}) {
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
                    }

                }
                .padding()
            }
        }
        
    }
}

#Preview {
    StartScreenView(getStarted: Binding.constant(false))
}
