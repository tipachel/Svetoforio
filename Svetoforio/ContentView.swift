//
//  ContentView.swift
//  Svetoforio
//
//  Created by Tipachel on 21.01.2022.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    
    @State private var buttonTitle = "START"
    @State private var redLightState = 0.3
    @State private var yellowLightState = 0.3
    @State private var greenLightState = 0.3
    
    @State private var currentLight = CurrentLight.red
    
    private func nextColor(){
        let lightIsOn = 1.0
        let lightIsOff = 0.3
        
        switch currentLight {
        case .red:
            currentLight = .yellow
            greenLightState = lightIsOff
            redLightState = lightIsOn
        case .yellow:
            currentLight = .green
            redLightState = lightIsOff
            yellowLightState = lightIsOn
        case .green:
            currentLight = .red
            yellowLightState = lightIsOff
            greenLightState = lightIsOn
        }
    }
}

extension ContentView {
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            
            VStack(spacing: 20){
                ColorCircleView(color: .red, opacity: redLightState)
                ColorCircleView(color: .yellow, opacity: yellowLightState)
                ColorCircleView(color: .green, opacity: greenLightState)
                
                Spacer()
                
                ChangeColorButton(title: buttonTitle) {
                    if buttonTitle == "START" {
                        buttonTitle = "NEXT"
                    }
                    nextColor()
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            
        }
    }
}
