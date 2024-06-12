//
//  FinalBudgets.swift
//  Budgie
//
//  Created by Veda Niav Cunniffe on 2024-06-12.
//

import Foundation

struct FinalBudgets: Identifiable, Codable {
    
    // MARK: Stored properties
    var id: Int?
    var groupSize: Int
    var travelTime: Int
    var transportCost: Int
    var stapleCost: Int
    var foodCost: Int
    var stayCost: Int
    var tourismCost: Int
    var feeCost: Int
    
    // MARK: Computed properties
    var totalCost: Int {
        return transportCost + stapleCost + foodCost + stayCost + tourismCost + feeCost
    }
    var costPerPerson: Int {
        return totalCost / groupSize
    }
    var costPerDay: Int {
        return totalCost / travelTime
    }
}
