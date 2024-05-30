//
//  SwiftUIView.swift
//  Budgie
//
//  Created by Veda Niav Cunniffe on 2024-03-26.
//

import SwiftUI

struct QuestionPageView: View {
    //MARK: Stored properties
    let page: QuestionPage
    @State var userInput = ""
    
    //MARK: Computed properties
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Image("questionCornerTriangle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 175)
            }
            HStack {
                Text("Question placeholder")
                    .font(
                        .custom(
                            "AmericanTypewriter-SemiBold",
                            size: 30
                        )
                )
                    .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                Spacer()
            }
            TextField("Input placeholder", text: $userInput)
            Button (action: {moveOn()}) {
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
            Button(action: {}) {
                Text("<- Home")
                    .foregroundStyle(Color.white)
            }
            Spacer()
        }
        .ignoresSafeArea()
        .background(Color("questionBackground"))
    }
    
    //MARK: Functions
    func moveOn() {
        guard let inputNumber = Int(userInput)
        else {
            //Give the user feedback
            return
        }
    }
}

#Preview {
    QuestionPageView(page: question1)
}
