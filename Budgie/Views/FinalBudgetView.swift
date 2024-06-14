//
//  FinalBudgetView.swift
//  Budgie
//
//  Created by Veda Niav Cunniffe on 2024-05-31.
//

import SwiftUI

struct FinalBudgetView: View {
    //MARK: Stored properties
    let finalBudget: FinalBudget
    
    //MARK: Computed properties
    var body: some View {
        ZStack {
            Image("finalBudgetBackground")
            VStack {
                Text("Your budget is:")
                    .font(
                        .custom(
                            "Helvetica-Bold",
                            size: 35
                        )
                    )
                    .foregroundStyle(Color.white)
                Rectangle()
                    .fill(Color.clear)
                    .frame(height: 50)
                Text("$\(finalBudget.totalCost)")
                    .font(
                        .custom(
                            "AcademyEngravedLetPlain",
                            size: 70
                        )
                    )
                    .foregroundStyle(Color.white)
                Rectangle()
                    .fill(Color.clear)
                    .frame(height: 10)
                Text("$\(finalBudget.costPerPerson) per person")
                    .font(
                        .custom(
                            "Avenir-Medium",
                            size: 25
                        )
                    )
                    .foregroundStyle(Color.white)
                Text("$\(finalBudget.costPerDay) per day")
                    .font(
                        .custom(
                            "Avenir-Medium",
                            size: 25
                        )
                    )
                    .foregroundStyle(Color.white)
                Rectangle()
                    .fill(Color.clear)
                    .frame(height: 50)
                
                NavigationLink {
                    ChartScreenView()
                } label: {
                    Text("Continue")
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
        }
    }
}

#Preview {
    FinalBudgetView(finalBudget: budgetA)
}
