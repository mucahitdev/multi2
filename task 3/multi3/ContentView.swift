//
//  ContentView.swift
//  multi3
//
//  Created by MÜCAHİT KÖKDEMİR on 31.08.2025.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = CounterViewModel()
    
    var body: some View {
        VStack(spacing: 30) {
            Text("\(viewModel.counter)")
                .font(.largeTitle)
                .foregroundColor(viewModel.counterColor)
            
            HStack(spacing: 40) {
                // Azalt butonu
                Button(action: {
                    viewModel.decrement()
                }) {
                    Text("-")
                        .font(.largeTitle)
                        .frame(width: 60, height: 60)
                        .background(Color.red.opacity(0.7))
                        .foregroundColor(.white)
                        .clipShape(Circle())
                }
                
                // Artır butonu
                Button(action: {
                    viewModel.increment()
                }) {
                    Text("+")
                        .font(.largeTitle)
                        .frame(width: 60, height: 60)
                        .background(Color.blue.opacity(0.7))
                        .foregroundColor(.white)
                        .clipShape(Circle())
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
