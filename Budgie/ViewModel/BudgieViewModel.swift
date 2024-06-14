//
//  BudgieViewModel.swift
//  Budgie
//
//  Created by Veda Niav Cunniffe on 2024-06-10.
//

import Foundation

@Observable
class BudgieViewModel {
    //MARK: Stored properties
    //The list of budgets on the home screen
    var budget: [FinalBudget]
    //Track when the budgets are being fetched
    var fetchingBudgets: Bool = false
    
    //MARK: Initializer(s)
    init(budget: [FinalBudget] = []) {
        self.budget = budget
//        Task {
//            try await getBudgets()
//        }
    }
    
    //MARK: Functions
    func getBudgets() async throws {
            
        // Say that the app is getting the budgets
        fetchingBudgets = true
        
        do {
            let results: [FinalBudget] = try await database
                .from("budget")
                .select()
                .order("id", ascending: true)
                .execute()
                .value
            
            self.budget = results
            
            // Show the budgets now that they have been fetched
            fetchingBudgets = false
            
        } catch {
            debugPrint(error)
        }
        
    }
}
