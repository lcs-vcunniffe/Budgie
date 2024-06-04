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
        ZStack {
            LinearGradient(colors: [Color("chartGradientTop"), Color("chartGradientBottom")], startPoint: .topTrailing, endPoint: .bottomLeading)
                .ignoresSafeArea()
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
                HStack {
                    Button (action: {}) {
                        Text("<- Home")
                            .font(
                                .custom(
                                    "Georgia",
                                    size: 18
                                )
                            )
                            .foregroundStyle(Color.gray)
                    }
                    .padding(EdgeInsets(top: 5, leading: 10, bottom: 0, trailing: 0))
                    Spacer()
                    Button (action: {}) {
                        Text("Tips ->")
                            .font(
                                .custom(
                                    "Georgia",
                                    size: 18
                                )
                            )
                            .foregroundStyle(Color.gray)
                    }
                    .padding(EdgeInsets(top: 5, leading: 0, bottom: 0, trailing: 10))
                }
            }
        }
    }
}

#Preview {
    ChartScreenView()
}
