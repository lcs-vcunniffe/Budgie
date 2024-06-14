//
//  FinalBudgets.swift
//  Budgie
//
//  Created by Veda Niav Cunniffe on 2024-06-12.
//

import Foundation

struct FinalBudget: Identifiable, Codable {
    
    // MARK: Stored properties
    var id: Int?
    var groupSize: Int
    var travelTime: Int
    var transportCost: Int
    var eatOutTimes: Int
    var stayCost: Int
    var tourismCost: Int
    var otherCost: Int
    
    // MARK: Computed properties
    var foodCost: Int {
        return eatOutTimes * 100 + 10 * (3 * travelTime - eatOutTimes)
    }
    var totalCost: Int {
        return transportCost + foodCost + stayCost + tourismCost + otherCost
    }
    var costPerPerson: Int {
        return totalCost / groupSize
    }
    var costPerDay: Int {
        return totalCost / travelTime
    }
}

let budgetA = FinalBudget(
    groupSize: 5,
    travelTime: 5,
    transportCost: 540,
    eatOutTimes: 215,
    stayCost: 0,
    tourismCost: 250,
    otherCost: 50
)
let budgetB = FinalBudget(
    groupSize: 2,
    travelTime: 10,
    transportCost: 102,
    eatOutTimes: 350,
    stayCost: 100,
    tourismCost: 400,
    otherCost: 30
)

let exampleBudgets = [
    budgetA,
    budgetB
]
