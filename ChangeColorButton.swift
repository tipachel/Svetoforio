//
//  ChangeColorButton.swift
//  Svetoforio
//
//  Created by Tipachel on 24.01.2022.
//

import SwiftUI

struct ChangeColorButton: View {
   
    let title: String
    let action: () -> Void
    
    var body: some View {
       
        Button(action: action) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
        }
        .padding()
        .frame(width: 200, height: 60)
        .background(Color.blue)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.white, lineWidth: 3)
        )
        
    }
}

struct ChangeColorButton_Previews: PreviewProvider {
    static var previews: some View {
        ChangeColorButton(title: "START", action: {})
    }
}
