//
//  SecondQuestionPageView.swift
//  Budgie
//
//  Created by Veda Niav Cunniffe on 2024-06-03.
//

import SwiftUI

struct SecondQuestionPageView: View {
    //MARK: Stored properties
    @State var userInput = ""
    
    //MARK: Computed properties
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Spacer()
                    Image("questionCornerTriangle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 175)
                }
                HStack {
                    Text("How long will you be traveling?")
                        .font(
                            .custom(
                                "AmericanTypewriter-SemiBold",
                                size: 30
                            )
                        )
                        .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                    Spacer()
                }
                TextField("Enter here...", text: $userInput)
                    .padding(EdgeInsets(top: 5, leading: 10, bottom: 30, trailing: 0))
                    .background(Color.white)
                    .border(Color.black, width: 3)
                HStack {
                    Button (action: {}) {
                        Text("<- Back")
                            .font(
                                .custom(
                                    "Georgia",
                                    size: 18
                                )
                            )
                            .foregroundStyle(Color.white)
                    }
                    .padding(EdgeInsets(top: 5, leading: 10, bottom: 0, trailing: 0))
                    Spacer()
                    Button (action: {}) {
                        Text("Next question")
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
                }
                HStack {
                    Button(action: {}) {
                        Text("<- Home")
                            .font(
                                .custom(
                                    "Georgia",
                                    size: 18
                                )
                            )
                            .foregroundStyle(Color.white)
                    }
                    .padding(EdgeInsets(top: 30, leading: 10, bottom: 0, trailing: 0))
                    Spacer()
                }
                Spacer()
            }
            .ignoresSafeArea()
            .background(Color.questionBackground)
        }
    }
    
}

#Preview {
    SecondQuestionPageView()
}
