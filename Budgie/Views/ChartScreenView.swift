//
//  ChartScreenView.swift
//  Budgie
//
//  Created by Veda Niav Cunniffe on 2024-05-30.
//

import SwiftUI
import Charts

struct ChartScreenView: View {
    
    //MARK: Stored properties
    private var budgetRatios = [
        (name: "Transportation", cost: 120),
        (name: "Accomodation", cost: 234),
        (name: "Dining", cost: 62),
        (name: "Staples", cost: 625),
        (name: "Fees", cost: 320),
        (name: "Attractions", cost: 50)
    ]
    
    var body: some View {
        VStack {
            Chart {
                ForEach(budgetRatios, id: \.name) { costs in

                    SectorMark(
                        angle: .value("Cup", costs.cost)
                    )
                    .foregroundStyle(by: .value("Type", costs.name))
                }
            }
            .frame(height: 500)
        }
    }
}

#Preview {
    ChartScreenView()
}
