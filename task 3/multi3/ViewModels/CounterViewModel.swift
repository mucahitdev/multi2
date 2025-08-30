//
//  CounterViewModel.swift
//  multi3
//
//  Created by MÜCAHİT KÖKDEMİR on 31.08.2025.
//

import SwiftUI


import SwiftUI

@MainActor
final class CounterViewModel: ObservableObject {
    @Published private(set) var counter: Int = 0
    
    func increment() {
        counter += 1
    }
    
    func decrement() {
        if counter > 0 {
            counter -= 1
        }
    }
    
    var counterColor: Color {
        switch counter {
        case 0:
            return .gray
        default:
            return .green
        }
    }
}
