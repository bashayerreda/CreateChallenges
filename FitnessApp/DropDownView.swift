//
//  DropDownView.swift
//  FitnessApp
//
//  Created by bashayer reda on 11/16/22.
//  Copyright © 2022 bashayer reda. All rights reserved.
//

import SwiftUI
struct DropDownView : View {
    var body : some View {
        VStack{
            HStack{
                Text("Exercises")
                    
                    .font(.system(size: 24, weight: .semibold , design: .default))
                Spacer()
            }.padding(.vertical,15)
            
            
            Button(action:{}){
                HStack{
                    
                    Text("Push ups")
                    .font(.system(size: 20, weight: .semibold , design: .default))
                    Spacer()
                    Image(systemName: "arrowtriangle.down.circle")
                    .font(.system(size: 24, weight: .medium , design: .default))
                    
                }
            }.buttonStyle(PrimaryButtonStyle(fillColor: .primarybtn))
        }.padding(15)
    }
}
struct DropDownView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            NavigationView{
                           DropDownView()
                       }.environment(\.colorScheme, .dark)
                   
            NavigationView{
                DropDownView()
            }.environment(\.colorScheme, .light)
            
        }
    }
}
