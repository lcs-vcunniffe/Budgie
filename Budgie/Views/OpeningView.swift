//
//  OpeningView.swift
//  Budgie
//
//  Created by Veda Niav Cunniffe on 2024-06-06.
//

import SwiftUI

struct OpeningView: View {
    
    //MARK: Stored properties
    @State private var hasGottenStarted = false
    
    //MARK: Computed properties
    var body: some View {
        if hasGottenStarted == false {
            StartScreenView()
        } else {
            HomeScreenView()
        }
    }
}

#Preview {
    OpeningView()
}
