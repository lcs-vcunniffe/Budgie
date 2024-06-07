//
//  Questions.swift
//  Budgie
//
//  Created by Veda Niav Cunniffe on 2024-03-26.
//

import SwiftUI

struct QuestionPage {
    let question: String
    let inputMultiplier: Float
}

let question1 = QuestionPage(question: "How many people will be traveling?", inputMultiplier: 1)
let question2 = QuestionPage(question: "How long will you be travelling?", inputMultiplier: 1)
let question3 = QuestionPage(question: "How many families are in your group?", inputMultiplier: 1)
let question4 = QuestionPage(question: "How expensive is your hotel?", inputMultiplier: 1)
let questions: [QuestionPage] = [
    question1,
    question2,
    question3,
    question4
]
