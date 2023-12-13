//
//  ContentView.swift
//  trafficLights
//
//  Created by Денис Хафизов on 13.12.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var isRedOn = false
    @State private var isYellowOn = false
    @State private var isGreenOn = false
    
    var body: some View {
        VStack {
            VStack(spacing: 20) {
                if (!isRedOn && !isGreenOn && !isYellowOn) {
                    CircleView(color: .red, opacity: 0.2)
                    CircleView(color: .yellow, opacity: 0.2)
                    CircleView(color: .green, opacity: 0.2)
                } else if (isRedOn) {
                    CircleView(color: .red, opacity: 1)
                    CircleView(color: .yellow, opacity: 0.2)
                    CircleView(color: .green, opacity: 0.2)
                } else if (isYellowOn) {
                    CircleView(color: .red, opacity: 0.2)
                    CircleView(color: .yellow, opacity: 1)
                    CircleView(color: .green, opacity: 0.2)
                } else if (isGreenOn) {
                    CircleView(color: .red, opacity: 0.2)
                    CircleView(color: .yellow, opacity: 0.2)
                    CircleView(color: .green, opacity: 1)
                }
            }
            .padding()
            
            Spacer()
            
            Button(action: { changeColor() } ) {
                if (!isRedOn && !isGreenOn && !isYellowOn) {
                    Text("Start")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                } else {
                    Text("Next")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                }
            }
            .padding(.vertical, 5)
            .padding(.horizontal, 30)
            .background(.green)
            .clipShape(.capsule)
            .shadow(radius: 10)
        }
        .padding()
    }
    
    private func changeColor() {
        if (!isRedOn && !isGreenOn && !isYellowOn) {
            isRedOn = true
        } else if (isRedOn) {
            isRedOn = false
            isYellowOn = true
        } else if (isYellowOn) {
            isYellowOn = false
            isGreenOn = true
        } else if (isGreenOn) {
            isGreenOn = false
            isRedOn = true
        }
    }
}

#Preview {
    ContentView()
}
