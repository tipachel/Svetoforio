//
//  ColorCircleView.swift
//  Svetoforio
//
//  Created by Tipachel on 23.01.2022.
//

import SwiftUI

struct ColorCircleView: View {
    
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .frame(width: 150, height: 150)
            .foregroundColor(color)
            .opacity(opacity)
            .overlay(Circle().stroke(Color.white, lineWidth: 3))
        
         

    }
}

struct ColorCircleView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircleView(color: .green, opacity: 1)
    }
}
