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
            Text("Question placeholder")
            TextField("Enter here", text: $userInput)
            Button {
                moveOn()
            } label: {
                Text("Next question")
            }
            Spacer()
        }
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
