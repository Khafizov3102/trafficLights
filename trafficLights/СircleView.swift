//
//  СircleView.swift
//  trafficLights
//
//  Created by Денис Хафизов on 13.12.2023.
//

import SwiftUI

struct CircleView: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .foregroundStyle(color)
            .opacity(opacity)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
            .frame(width: 170)
    }
}

#Preview {
    ZStack {
        Color.red
        CircleView(color: .orange, opacity: 1)
    }
}
