//
//  PrimaryButtonStyle.swift
//  FitnessApp
//
//  Created by bashayer reda on 11/15/22.
//  Copyright © 2022 bashayer reda. All rights reserved.
//

import SwiftUI
struct PrimaryButtonStyle : ButtonStyle {
  
    var fillColor : Color = .darkPrimaryColor
    init(fillColor : Color) {
          self.fillColor = fillColor
      }
    func makeBody(configuration: Configuration) -> some View {
   return PrimaryButton(configuration : configuration,fillColor: fillColor)
        
    }
    struct PrimaryButton : View {
        let configuration : Configuration
        let fillColor : Color
        var body : some View {
        return  configuration.label
            .padding(20)
            .background(RoundedRectangle(cornerRadius: 8)
            .fill(fillColor)
          )
                    
        }
   
        
    }
    
}
    
    
    struct PrimaryButtonStylePreview : PreviewProvider {
        static var previews : some View {
            
        Button(action: {
            
        }){
                Text("Create a challenge")
        }.buttonStyle(PrimaryButtonStyle(fillColor: .darkPrimaryColor))
              
        }
        }
    




